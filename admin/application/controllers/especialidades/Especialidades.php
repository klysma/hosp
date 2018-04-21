<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Especialidades extends TEC_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('/Especialidades/Especialidades_model');

		$this->set_menu_active(
			[
				'menu' => 'especialidades',
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

		$especialidades =  $this->Especialidades_model->get_especialidades();
		$notification = '';
		if($this->input->get('type')){
			$notification = new stdClass;
			$notification->type = $this->input->get('type');
			$notification->title = $this->input->get('title');
			$notification->message = $this->input->get('message');
			// $data['notification'] = $notification;
		}

		$this->montaTela('especialidades/lista', compact('especialidades', 'notification'));
	}

	function novo(){

		$this->montaTela('especialidades/formulario');
	}

	function salvar(){
		$this->load->helper('text');
		$upload = $this->upload_imagem();
		$dados = [
			'titulo' => $this->input->post('titulo'),
			'imagem' => $upload['file_name'],
			'texto' => $this->input->post('texto'),
			'detalhes' => $this->input->post('detalhes')

		];

		$id = NULL;


		if($this->input->post('id')){
			$id = $this->input->post('id');
		}

		if($this->Especialidades_model->salvar_especialidades($dados, $id))
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
		$url = base_url(array('especialidades'));
		$this->output->append_output('<script>window.history.replaceState("", "Hosp dos Olhos", "'. $url .'")</script>');
	}

	public function upload_imagem($value='')
	{
		if(!empty($_FILES['imagem']['name'])){
			$this->load->library('upload', [
					'upload_path' => FCPATH.'../public/imagens/especialidades',
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

			if($this->input->post('imagem_especialidades')){
				if ($_FILES['imagem']['name'] != $this->input->post('imagem_especialidades')) {
					$apagar = FCPATH.'../public/imagens/especialidades/' . $this->input->post('imagem_especialidades');
					@unlink($apagar);
				}
			}
		}else{
			if($this->input->post('imagem_especialidades')){
				$file_data['file_name'] = $this->input->post('imagem_especialidades');
			}else{
				$file_data['file_name'] = '';
			}
		}
		return $file_data;
	}

	public function editar()
	{
		if($this->input->get('id')){
			$especialidade = $this->Especialidades_model->get_especialidades_id($this->input->get('id'));
			$this->montaTela('especialidades/formulario', compact('especialidade'));
		}
	}

	public function excluir(){
		if ($this->input->post('id')) {
			$especialidades = $this->Especialidades_model->get_especialidades_id($this->input->post('id'));
			if($this->Especialidades_model->excluir_especialidades_id($this->input->post('id'))){
				$apagar = FCPATH.'../public/imagens/especialidades/' . $especialidades->imagem;
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
