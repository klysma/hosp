<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Corpo_clinico extends TEC_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('/corpo_clinico/Corpo_clinico_model');

		$this->set_menu_active(
			[
				'menu' => 'corpo-clinico',
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

		$corpo_clinico =  $this->Corpo_clinico_model->get_corpo_clinico();
		$notification = '';
		if($this->input->get('type')){
			$notification = new stdClass;
			$notification->type = $this->input->get('type');
			$notification->title = $this->input->get('title');
			$notification->message = $this->input->get('message');
			// $data['notification'] = $notification;
		}

		$this->montaTela('corpo_clinico/lista', compact('corpo_clinico', 'notification'));
	}

	function novo(){
		$this->montaTela('corpo_clinico/formulario');
	}

	function salvar(){
		$this->load->helper('text');
		$upload = $this->upload_imagem();
		$dados = [
			'titulo' => $this->input->post('titulo'),
			'imagem' => $upload['file_name'],
			'texto' => $this->input->post('texto'),
			'profissao' => $this->input->post('profissao'),
			'crm' => $this->input->post('crm'),
			'email' => $this->input->post('email')

		];

		$id = NULL;


		if($this->input->post('id')){
			$id = $this->input->post('id');
		}

		if($this->Corpo_clinico_model->salvar_corpo_clinico($dados, $id))
		{
			$_GET['type'] = 'success';
			if($id){
				$_GET['title'] = 'Atualização';
				$_GET['message'] = 'Profissional atualizado com sucesso!';
			}else{
				$_GET['title'] = 'Cadastro';
				$_GET['message'] = 'Profissional cadastrado com sucesso!';
			}
		}
		else
		{
			$_GET['type'] = 'error';
			if($id){
				$_GET['title'] = 'Atualização';
				$_GET['message'] = 'Ocorreu um erro ao atualizar o Profissional!';
			}else{
				$_GET['title'] = 'Cadastro';
				$_GET['message'] = 'Ocorreu um erro ao cadastrar o Profissional!';
			}
		}
		$this->lista();
		$url = base_url(array('corpo-clinico'));
		$this->output->append_output('<script>window.history.replaceState("", "Hosp dos Olhos", "'. $url .'")</script>');
	}

	public function upload_imagem($value='')
	{
		if(!empty($_FILES['imagem']['name'])){
			$this->load->library('upload', [
					'upload_path' => FCPATH.'../public/imagens/corpo_clinico',
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
						'quality' => '100%'
					]
				);
				$this->image_lib->resize();
			}

			if($this->input->post('imagem_corpo_clinico')){
				if ($_FILES['imagem']['name'] != $this->input->post('imagem_corpo_clinico')) {
					$apagar = FCPATH.'../public/imagens/corpo_clinico/' . $this->input->post('imagem_corpo_clinico');
					@unlink($apagar);
				}
			}
		}else{
			if($this->input->post('imagem_corpo_clinico')){
				$file_data['file_name'] = $this->input->post('imagem_corpo_clinico');
			}else{
				$file_data['file_name'] = '';
			}
		}
		return $file_data;
	}

	public function editar()
	{
		if($this->input->get('id')){
			$corpo_clinico = $this->Corpo_clinico_model->get_corpo_clinico_id($this->input->get('id'));
			$this->montaTela('corpo_clinico/formulario', compact('corpo_clinico'));
		}
	}

	public function excluir(){
		if ($this->input->post('id')) {
			$corpo_clinico = $this->Corpo_clinico_model->get_corpo_clinico_id($this->input->post('id'));
			if($this->Corpo_clinico_model->excluir_corpo_clinico_id($this->input->post('id'))){
				$apagar = FCPATH.'../public/imagens/corpo_clinico/' . $corpo_clinico->imagem;
				@unlink($apagar);
				$response['type'] = 'success';
				$response['title'] = 'Exclusão';
				$response['message'] = 'Profissional excluído com sucesso!';
				echo json_encode($response);
			}else{
				$response['type'] = 'error';
				$response['title'] = 'Exclusão';
				$response['message'] = 'Ocorreu um erro ao excluír o Profissional!';
				echo json_encode($response);
			}
		}
		return;
	}

}
