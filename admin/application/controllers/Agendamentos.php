<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class agendamentos extends TEC_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('agendamentos_model');
		$this->set_menu_active(
			[
				'menu' => 'agendamentos',
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
		$agendamentos =  $this->agendamentos_model->get_agendamentos();
		$notification = '';
		if($this->input->get('type')){
			$notification = new stdClass;
			$notification->type = $this->input->get('type');
			$notification->title = $this->input->get('title');
			$notification->message = $this->input->get('message');
			// $data['notification'] = $notification;
		}

		$this->montaTela('agendamentos/lista', compact('agendamentos', 'notification'));
	}

	// function nova_agenda(){				
	// 	$agendas = $this->agenda_model->get_agendas();
	// 	$dias = ['Domingo', 'Segunda-feira', 'Terça-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feira', 'Sábado'];
	// 	foreach ($agendas as $key => $agenda) {
	// 		unset($dias[array_search($agenda->dia, $dias)]);
	// 	}
	// 	$this->montaTela('agenda/formulario', compact('dias'));
	// }

	// function salvar_agenda(){
	// 	if($this->input->post()){
	// 		$dados = array(
	// 			'dia' => $this->input->post('dia'),
	// 			'descricao' => $this->input->post('descricao')
	// 		);

	// 		$id = NULL;

	// 		//editar agenda
	// 		if($this->input->post('id')){
	// 			$id = $this->input->post('id');
	// 		}

	// 		if($this->agenda_model->salvar_agenda($dados, $id))
	// 		{
	// 			$_GET['type'] = 'success';
	// 			if($id){
	// 				$_GET['title'] = 'Atualização';
	// 				$_GET['message'] = 'Agenda atualizada com sucesso!';
	// 			}else{
	// 				$_GET['title'] = 'Cadastro';
	// 				$_GET['message'] = 'Agenda cadastrada com sucesso!';
	// 			}
	// 		}
	// 		else
	// 		{
	// 			$_GET['type'] = 'error';
	// 			if($id){
	// 				$_GET['title'] = 'Atualização';
	// 				$_GET['message'] = 'Ocorreu um erro ao atualizar a agenda!';
	// 			}else{
	// 				$_GET['title'] = 'Cadastro';
	// 				$_GET['message'] = 'Ocorreu um erro ao cadastrar a agenda!';
	// 			}
	// 		}
	// 		$this->lista();
	// 		$url = base_url(array('home/banners'));
	// 		$this->output->append_output('<script>window.history.replaceState("", "Dr Bruno Laughton", "'. $url .'")</script>');
	// 	}
	// }

	// public function editar_agenda()
	// {
	// 	if($this->input->get('id')){
	// 		$agenda = $this->agenda_model->get_agenda($this->input->get('id'));
	// 		$agendas = $this->agenda_model->get_agendas();
	// 		$dias = ['Domingo', 'Segunda-feira', 'Terça-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feita', 'Sábado'];
	// 		foreach ($agendas as $key => $agd) {
	// 			if($agenda->dia !== $agd->dia)
	// 				unset($dias[array_search($agd->dia, $dias)]);
	// 		}
	// 		$this->montaTela('agenda/formulario', compact('agenda', 'dias'));
	// 	}
	// }

	// public function excluir_agenda(){
	// 	if ($this->input->post('id')) {
	// 		if($this->agenda_model->excluir_agenda($this->input->post('id'))){
	// 			$response['type'] = 'success';
	// 			$response['title'] = 'Exclusão';
	// 			$response['message'] = 'Agenda excluída com sucesso!';
	// 			echo json_encode($response);
	// 		}else{
	// 			$response['type'] = 'error';
	// 			$response['title'] = 'Exclusão';
	// 			$response['message'] = 'Ocorreu um erro ao excluír o banner!';
	// 			echo json_encode($response);
	// 		}
	// 	}
	// 	return;
	// }
}
