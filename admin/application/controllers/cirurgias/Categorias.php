<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Categorias extends TEC_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('cirurgias/categorias_model');

		$this->set_menu_active(
			[
				'menu' => 'cirurgias',
				'submenu' => 'cirurgias-categorias'
			]
		);
	}

	public function index()
	{
		$this->lista();
	}


	public function lista()
	{
		$categorias =  $this->categorias_model->get_categorias();
		$notification = '';
		if($this->input->get('type')){
			$notification = new stdClass;
			$notification->type = $this->input->get('type');
			$notification->title = $this->input->get('title');
			$notification->message = $this->input->get('message');
		}

		$this->montaTela('cirurgias/categorias/lista', compact('categorias', 'notification'));
	}

	function nova_categoria(){
		$this->montaTela('cirurgias/categorias/formulario');
	}

	function salvar_categoria(){
		$this->load->helper('text');
		$dados = [
			'nome' => $this->input->post('nome'),
			'nome_url' => url_title(convert_accented_characters($this->input->post('nome')), '-', TRUE),
		];

		$id = NULL;

		//editar agenda
		if($this->input->post('id')){
			$id = $this->input->post('id');
		}

		if($this->categorias_model->salvar_categoria($dados, $id))
		{
			$_GET['type'] = 'success';
			if($id){
				$_GET['title'] = 'Atualização';
				$_GET['message'] = 'Categoria atualizada com sucesso!';
			}else{
				$_GET['title'] = 'Cadastro';
				$_GET['message'] = 'Categoria cadastrada com sucesso!';
			}
		}
		else
		{
			$_GET['type'] = 'error';
			if($id){
				$_GET['title'] = 'Atualização';
				$_GET['message'] = 'Ocorreu um erro ao atualizar a categoria!';
			}else{
				$_GET['title'] = 'Cadastro';
				$_GET['message'] = 'Ocorreu um erro ao cadastrar a categoria!';
			}
		}
		$this->lista();
		$url = base_url(['cirurgias', 'categorias']);
		$this->output->append_output('<script>window.history.replaceState("", "Dr Bruno Laughton", "'. $url .'")</script>');
	}

	public function editar_categoria()
	{
		if($this->input->get('id')){
			$categoria = $this->categorias_model->get_categoria($this->input->get('id'));
			$this->montaTela('cirurgias/categorias/formulario', compact('categoria'));
		}
	}

	public function excluir_categoria(){
		if ($this->input->post('id')) {
			$categoria = $this->categorias_model->get_categoria($this->input->post('id'));
			if($this->categorias_model->excluir_categoria($this->input->post('id'))){
				$response['type'] = 'success';
				$response['title'] = 'Exclusão';
				$response['message'] = 'Categoria excluída com sucesso!';
				echo json_encode($response);
			}else{
				$response['type'] = 'error';
				$response['title'] = 'Exclusão';
				$response['message'] = 'Ocorreu um erro ao excluír a Categoria!';
				echo json_encode($response);
			}
		}
		return;
	}

}
