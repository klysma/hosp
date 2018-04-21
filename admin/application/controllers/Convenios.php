<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Convenios extends TEC_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('convenios_model');

		$this->set_menu_active(
			[
				'menu' => 'convenios',
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
		$convenios =  $this->convenios_model->get_convenios();
		$notification = '';
		if($this->input->get('type')){
			$notification = new stdClass;
			$notification->type = $this->input->get('type');
			$notification->title = $this->input->get('title');
			$notification->message = $this->input->get('message');
			// $data['notification'] = $notification;
		}

		$this->montaTela('convenios/lista', compact('convenios', 'notification'));
	}

	function novo_convenio(){
		$this->montaTela('convenios/formulario');
	}

	function salvar_convenio(){
		$this->load->helper('text');
		$upload = $this->upload_imagem();
		$dados = [
			'titulo' => $this->input->post('titulo'),
			'imagem' => $upload['file_name'],
		];

		$id = NULL;

		//editar agenda
		if($this->input->post('id')){
			$id = $this->input->post('id');
		}else{
			$dados['data'] = date('Y-m-d H:i:s');
		}

		if($this->convenios_model->salvar_convenio($dados, $id))
		{
			$_GET['type'] = 'success';
			if($id){
				$_GET['title'] = 'Atualização';
				$_GET['message'] = 'Convênio atualizado com sucesso!';
			}else{
				$_GET['title'] = 'Cadastro';
				$_GET['message'] = 'Convênio cadastrado com sucesso!';
			}
		}
		else
		{
			$_GET['type'] = 'error';
			if($id){
				$_GET['title'] = 'Atualização';
				$_GET['message'] = 'Ocorreu um erro ao atualizar o convênio!';
			}else{
				$_GET['title'] = 'Cadastro';
				$_GET['message'] = 'Ocorreu um erro ao cadastrar o convênio!';
			}
		}
		$this->lista();
		$url = base_url(array('convenios'));
		$this->output->append_output('<script>window.history.replaceState("", "Dr Bruno Laughton", "'. $url .'")</script>');
	}

	public function upload_imagem($value='')
	{				
		if(!empty($_FILES['imagem']['name'])){
			$this->load->library('upload', [
					'upload_path' => FCPATH.'../public/imagens/convenios',
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
						'width' => 200,
						'height' => 200
					]
				);
				$this->image_lib->resize();
			}

			if($this->input->post('imagem_convenio')){
				if ($_FILES['imagem']['name'] != $this->input->post('imagem_convenio')) {
					$apagar = FCPATH.'../public/imagens/convenios/' . $this->input->post('imagem_convenio');
					@unlink($apagar);
				}
			}
		}else{
			if($this->input->post('imagem_convenio')){
				$file_data['file_name'] = $this->input->post('imagem_convenio');
			}else{
				$file_data['file_name'] = '';
			}
		}
		return $file_data;
	}

	public function editar_convenio()
	{
		if($this->input->get('id')){
			$convenio = $this->convenios_model->get_convenio($this->input->get('id'));
			$this->montaTela('convenios/formulario', compact('convenio'));
		}
	}

	public function excluir_convenio(){
		if ($this->input->post('id')) {
			$convenio = $this->convenios_model->get_convenio($this->input->post('id'));
			if($this->convenios_model->excluir_convenio($this->input->post('id'))){
				$apagar = FCPATH.'../public/imagens/convenios/' . $convenio->imagem;
				@unlink($apagar);
				$response['type'] = 'success';
				$response['title'] = 'Exclusão';
				$response['message'] = 'Convênio excluído com sucesso!';
				echo json_encode($response);
			}else{
				$response['type'] = 'error';
				$response['title'] = 'Exclusão';
				$response['message'] = 'Ocorreu um erro ao excluír o convênio!';
				echo json_encode($response);
			}
		}
		return;
	}

}
