<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Procedimentos_esteticos extends TEC_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('procedimentos_esteticos_model');

		$this->set_menu_active(
			[
				'menu' => 'procedimentos-esteticos',
				'submenu' => ''
			]
		);
	}

	public function index()
	{
		$this->lista();
	}


	public function lista()
	{
		$procedimentos_esteticos =  $this->procedimentos_esteticos_model->get_procedimentos_esteticos();
		$notification = '';
		if($this->input->get('type')){
			$notification = new stdClass;
			$notification->type = $this->input->get('type');
			$notification->title = $this->input->get('title');
			$notification->message = $this->input->get('message');
			// $data['notification'] = $notification;
		}

		$this->montaTela('procedimentos_esteticos/lista', compact('procedimentos_esteticos', 'notification'));
	}

	function novo_procedimentos_estetico(){
		$this->montaTela('procedimentos_esteticos/formulario');
	}

	function salvar_procedimentos_estetico(){
		$this->load->helper('text');
		$upload = $this->upload_imagem();
		$dados = [
			'titulo' => $this->input->post('titulo'),
			'nome_url' => url_title(convert_accented_characters($this->input->post('titulo')), '-', TRUE),
			'imagem' => $upload['file_name'],
			'texto' => $this->input->post('texto')
		];

		$id = NULL;

		//editar agenda
		if($this->input->post('id')){
			$id = $this->input->post('id');
		}else{
			$dados['data'] = date('Y-m-d H:i:s');
		}

		if($this->procedimentos_esteticos_model->salvar_procedimentos_estetico($dados, $id))
		{
			$_GET['type'] = 'success';
			if($id){
				$_GET['title'] = 'Atualização';
				$_GET['message'] = 'Procedimentos estético atualizado com sucesso!';
			}else{
				$_GET['title'] = 'Cadastro';
				$_GET['message'] = 'Procedimentos estético cadastrado com sucesso!';
			}
		}
		else
		{
			$_GET['type'] = 'error';
			if($id){
				$_GET['title'] = 'Atualização';
				$_GET['message'] = 'Ocorreu um erro ao atualizar o procedimento estético!';
			}else{
				$_GET['title'] = 'Cadastro';
				$_GET['message'] = 'Ocorreu um erro ao cadastrar o procedimento estético!';
			}
		}
		$this->lista();
		$url = base_url(array('procedimentos-esteticos'));
		$this->output->append_output('<script>window.history.replaceState("", "Dr Bruno Laughton", "'. $url .'")</script>');
	}

	public function upload_imagem($value='')
	{				
		if(!empty($_FILES['imagem']['name'])){
			$this->load->library('upload', [
					'upload_path' => FCPATH.'../public/imagens/procedimentos_esteticos',
					'allowed_types' => 'jpg|png|gif',
					'file_name' => hash('md5', uniqid(rand(0, 500)) . time() . rand(0, 500)),
					'max_size' => 8 * 1024,
					'remove_spaces' => TRUE
				]
			);
			if ($this->upload->do_upload('imagem')){
				$file_data = $this->upload->data();
				$this->load->library('image_lib', [
						'image_library' => 'gd2',
						'source_image' => $file_data['full_path'],
						'create_thumb' => FALSE,
						'maintain_ratio' => TRUE,
						'width' => 1200,
						'height' => 600
					]
				);
				$this->image_lib->resize();
			}

			if($this->input->post('imagem_procedimentos_estetico')){
				if ($_FILES['imagem']['name'] != $this->input->post('imagem_procedimentos_estetico')) {
					$apagar = FCPATH.'../public/imagens/procedimentos_esteticos/' . $this->input->post('imagem_procedimentos_estetico');
					@unlink($apagar);
				}
			}
		}else{
			if($this->input->post('imagem_procedimentos_estetico')){
				$file_data['file_name'] = $this->input->post('imagem_procedimentos_estetico');
			}else{
				$file_data['file_name'] = '';
			}
		}
		return $file_data;
	}

	public function editar_procedimentos_estetico()
	{
		if($this->input->get('id')){
			$procedimento_estetico = $this->procedimentos_esteticos_model->get_procedimentos_estetico($this->input->get('id'));
			$this->montaTela('procedimentos_esteticos/formulario', compact('procedimento_estetico'));
		}
	}

	public function excluir_procedimentos_estetico(){
		if ($this->input->post('id')) {
			$procedimento_estetico = $this->procedimentos_esteticos_model->get_procedimentos_estetico($this->input->post('id'));
			if($this->procedimentos_esteticos_model->excluir_procedimentos_estetico($this->input->post('id'))){
				$apagar = FCPATH.'../public/imagens/procedimentos_esteticos/' . $procedimento_estetico->imagem;
				@unlink($apagar);
				$response['type'] = 'success';
				$response['title'] = 'Exclusão';
				$response['message'] = 'Procedimento estético excluído com sucesso!';
				echo json_encode($response);
			}else{
				$response['type'] = 'error';
				$response['title'] = 'Exclusão';
				$response['message'] = 'Ocorreu um erro ao excluír o procedimento estético!';
				echo json_encode($response);
			}
		}
		return;
	}

}
