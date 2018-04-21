<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Agenda extends TEC_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('agenda_model');
		$this->set_menu_active(
			[
				'menu' => 'agenda',
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
		$agendas =  $this->agenda_model->get_agendas();
		$notification = '';
		if($this->input->get('type')){
			$notification = new stdClass;
			$notification->type = $this->input->get('type');
			$notification->title = $this->input->get('title');
			$notification->message = $this->input->get('message');
			// $data['notification'] = $notification;
		}

		$this->montaTela('agenda/lista', compact('agendas', 'notification'));
	}

	function nova_agenda(){
		$agendas = $this->agenda_model->get_agendas();
		$dias = ['Domingo', 'Segunda-feira', 'Terça-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feira', 'Sábado'];
		foreach ($agendas as $key => $agenda) {
			unset($dias[array_search($agenda->dia, $dias)]);
		}
		$this->montaTela('agenda/formulario', compact('dias'));
	}

	function salvar_agenda(){
		if($this->input->post()){
			$dados = array(
				'agendas_id' => $this->input->post('id_dia'),
				'descricao' => $this->input->post('descricao')
			);

			$id_item = NULL;

			//editar agenda
			if($this->input->post('id_item')){
				$id_item = $this->input->post('id_item');
			}
			if($response['id'] = $this->agenda_model->salvar_horario($dados, $id_item))
			{
				$response['type'] = 'success';
				if($id_item){
					$response['title'] = 'Atualização';
					$response['message'] = 'Horário atualizado com sucesso!';
				}else{
					$response['title'] = 'Cadastro';
					$response['message'] = 'Horário cadastrado com sucesso!';
				}
			}
			else
			{
				$response['type'] = 'error';
				if($id){
					$response['title'] = 'Atualização';
					$response['message'] = 'Ocorreu um erro ao atualizar o horário!';
				}else{
					$response['title'] = 'Cadastro';
					$response['message'] = 'Ocorreu um erro ao cadastrar o horário!';
				}
			}

			echo json_encode($response);
		}
	}

	public function editar_agenda()
	{
		if($this->input->get('id')){
			$agenda = $this->agenda_model->get_agenda($this->input->get('id'));
			$this->montaTela('agenda/formulario', compact('agenda', 'dias'));
		}
	}

	public function excluir_agenda(){
		if ($this->input->post('id_item')) {
			if($this->agenda_model->excluir_horario($this->input->post('id_item'))){
				$response['type'] = 'success';
				$response['title'] = 'Exclusão';
				$response['message'] = 'Horário excluído com sucesso!';
				echo json_encode($response);
			}else{
				$response['type'] = 'error';
				$response['title'] = 'Exclusão';
				$response['message'] = 'Ocorreu um erro ao excluír o horário!';
				echo json_encode($response);
			}
		}
		return;
	}
}
