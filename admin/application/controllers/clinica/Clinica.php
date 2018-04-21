<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Clinica extends TEC_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('clinica/Clinica_model');

		$this->set_menu_active(
			[
				'menu' => 'a-clinica',
				'submenu' => ''
			]
		);
	}


  	public function index()
  	{
  		$this->editar();
  	}


  	function salvar(){

      

  		$this->load->helper('text');
      $upload1 = $this->upload_imagem('imagem1');
      $upload2 = $this->upload_imagem('imagem2');
  		$upload3 = $this->upload_imagem('imagem3');
  		$dados = [
  			'titulo1' => $this->input->post('titulo1'),
        'icone1' => $this->input->post('icone1'),
        'texto1' => $this->input->post('texto1'),

        'titulo2' => $this->input->post('titulo2'),
        'icone2' => $this->input->post('icone2'),
        'texto2' => $this->input->post('texto2'),

        'titulo3' => $this->input->post('titulo3'),
  			'icone3' => $this->input->post('icone3'),
  			'texto3' => $this->input->post('texto3'),

        'imagem1' => $upload1['file_name'],
        'imagem2' => $upload2['file_name'],
				'imagem3' => $upload3['file_name']

  		];

 

  		$id = NULL;


  		if($this->input->post('id')){
  			$id = $this->input->post('id');
  		}

  		if($this->Clinica_model->salvar_clinica($dados, $id))
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
  		$this->editar();
  		$url = base_url(array('clinica'));
  		$this->output->append_output('<script>window.history.replaceState("", "Hosp dos Olhos", "'. $url .'")</script>');
  	}

  	public function upload_imagem($imagem)
  	{
  		if(!empty($_FILES[$imagem]['name'])){
  			$this->load->library('upload', [
  					'upload_path' => FCPATH.'../public/imagens/clinica',
  					'allowed_types' => 'jpg|png|gif',
  					'file_name' => hash('md5', uniqid(rand(0, 500)) . time() . rand(0, 500)),
  					'max_size' => 8 * 1024,
  					'remove_spaces' => TRUE
  				]
  			);
  			if ($this->upload->do_upload($imagem)){
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

  			if($this->input->post('imagem_clinica')){
  				if ($_FILES['imagem']['name'] != $this->input->post('imagem_clinica')) {
  					$apagar = FCPATH.'../public/imagens/clinica/' . $this->input->post('imagem_clinica');
  					@unlink($apagar);
  				}
  			}
  		}else{
  			if($this->input->post('imagem_clinica')){
  				$file_data['file_name'] = $this->input->post('imagem_clinica');
  			}else{
  				$file_data['file_name'] = '';
  			}
  		}
  		return $file_data;
  	}

  	public function editar()
  	{

  			$hospital = $this->Clinica_model->get_clinica();
  			$itens = $this->Clinica_model->get_itens();

				$notification = '';
				if($this->input->get('type')){
					$notification = new stdClass;
					$notification->type = $this->input->get('type');
					$notification->title = $this->input->get('title');
					$notification->message = $this->input->get('message');
					// $data['notification'] = $notification;
				}
  			$this->montaTela('clinica/formulario', compact('hospital', 'notification', 'itens'));

  	}

  	public function excluir(){
  		if ($this->input->post('id')) {
  			$clinica = $this->Clinica_model->get_clinica_id($this->input->post('id'));
  			if($this->Clinica_model->excluir_clinica_id($this->input->post('id'))){
  				$apagar = FCPATH.'../public/imagens/clinica/' . $clinica->imagem;
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


  	public function excluir_item(){

  		if ($this->input->post('id_item')) {

  			if($this->Clinica_model->excluir_clinica_item($this->input->post('id_item'))){

  				$response['type'] = 'success';
  				$response['title'] = 'Exclusão';
  				$response['message'] = 'Item excluído com sucesso!';
  				echo json_encode($response);
  			}else{
  				$response['type'] = 'error';
  				$response['title'] = 'Exclusão';
  				$response['message'] = 'Ocorreu um erro ao excluír o Item!';
  				echo json_encode($response);
  			}
  		}
  		return;
  	}

  }
