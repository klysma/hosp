<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Cirurgias extends TEC_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('cirurgias/cirurgias_model');
		$this->load->model('cirurgias/categorias_model');

		$this->set_menu_active(
			[
				'menu' => 'cirurgias',
				'submenu' => 'cirurgias-cirurgia'
			]
		);
	}

	public function index()
	{
		$this->lista();
	}


	public function lista()
	{
		$cirurgias =  $this->cirurgias_model->get_cirurgias();
		$notification = '';
		if($this->input->get('type')){
			$notification = new stdClass;
			$notification->type = $this->input->get('type');
			$notification->title = $this->input->get('title');
			$notification->message = $this->input->get('message');
			// $data['notification'] = $notification;
		}

		$this->montaTela('cirurgias/cirurgia/lista', compact('cirurgias', 'notification'));
	}

	function nova_cirurgia(){
		$categorias =  $this->categorias_model->get_categorias();
		$this->montaTela('cirurgias/cirurgia/formulario', compact('categorias'));
	}

	function salvar_cirurgia(){
		$this->load->helper('text');
		$upload = $this->upload_imagem();
		$dados = [
			'titulo' => $this->input->post('titulo'),
			'texto_breve' => $this->input->post('texto_breve'),
			'nome_url' => url_title(convert_accented_characters($this->input->post('titulo')), '-', TRUE),
			'categorias_cirurgias_id' => $this->input->post('categoria'),
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

		if($this->cirurgias_model->salvar_cirurgia($dados, $id))
		{
			$_GET['type'] = 'success';
			if($id){
				$_GET['title'] = 'Atualização';
				$_GET['message'] = 'Cirurgia atualizada com sucesso!';
			}else{
				$_GET['title'] = 'Cadastro';
				$_GET['message'] = 'Cirurgia cadastrada com sucesso!';
			}
		}
		else
		{
			$_GET['type'] = 'error';
			if($id){
				$_GET['title'] = 'Atualização';
				$_GET['message'] = 'Ocorreu um erro ao atualizar a cirurgia!';
			}else{
				$_GET['title'] = 'Cadastro';
				$_GET['message'] = 'Ocorreu um erro ao cadastrar a cirurgia!';
			}
		}
		$this->lista();
		$url = base_url(array('cirurgias'));
		$this->output->append_output('<script>window.history.replaceState("", "Dr Bruno Laughton", "'. $url .'")</script>');
	}

	public function upload_imagem($value='')
	{				
		if(!empty($_FILES['imagem']['name'])){
			$this->load->library('upload', [
					'upload_path' => FCPATH.'../public/imagens/cirurgias',
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

			if($this->input->post('imagem_cirurgia')){
				if ($_FILES['imagem']['name'] != $this->input->post('imagem_cirurgia')) {
					$apagar = FCPATH.'../public/imagens/cirurgias/' . $this->input->post('imagem_cirurgia');
					@unlink($apagar);
				}
			}
		}else{
			if($this->input->post('imagem_cirurgia')){
				$file_data['file_name'] = $this->input->post('imagem_cirurgia');
			}else{
				$file_data['file_name'] = '';
			}
		}
		return $file_data;
	}

	public function editar_cirurgia()
	{
		if($this->input->get('id')){
			$cirurgia = $this->cirurgias_model->get_cirurgia($this->input->get('id'));
			$categorias =  $this->categorias_model->get_categorias();
			$this->montaTela('cirurgias/cirurgia/formulario', compact('cirurgia', 'categorias'));
		}
	}

	public function excluir_cirurgia(){
		if ($this->input->post('id')) {
			$cirurgia = $this->cirurgias_model->get_cirurgia($this->input->post('id'));
			if($this->cirurgias_model->excluir_cirurgia($this->input->post('id'))){
				$apagar = FCPATH.'../public/imagens/cirurgias/' . $cirurgia->imagem;
				@unlink($apagar);
				$response['type'] = 'success';
				$response['title'] = 'Exclusão';
				$response['message'] = 'Cirurgia excluída com sucesso!';
				echo json_encode($response);
			}else{
				$response['type'] = 'error';
				$response['title'] = 'Exclusão';
				$response['message'] = 'Ocorreu um erro ao excluír a cirurgia!';
				echo json_encode($response);
			}
		}
		return;
	}

}
