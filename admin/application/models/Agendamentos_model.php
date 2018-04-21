<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Agendamentos_model extends CI_Model {

	public function __construct() {
		parent::__construct();
	}

	public function get_agendamentos()
	{
		$this->db->select('*');
		$this->db->from('agendamentos');
		$this->db->order_by('agendamentos.id', 'DESC');
		$query = $this->db->get();
		if($query->num_rows() > 0){
			return $query->result();
		}else{
			return FALSE;
		}
	}

	// public function salvar_agenda($dados, $id=NULL)
	// {
	// 	if($id){
	// 		$this->db->where('id', $id);
	// 		if($this->db->update('agendas', $dados)){
	// 			return true;
	// 		}else{
	// 			return false;
	// 		}
	// 	}else{
	// 		if($this->db->insert('agendas', $dados)){
	// 			return true;
	// 		}else
	// 		{
	// 			return false;
	// 		}
	// 	}
	// }

	// public function get_agenda($id=null)
	// {
	// 	if($id){
	// 		$this->db->select('*');
	// 		$this->db->from('agendas');
	// 		$this->db->where('id', $id);
	// 		$query = $this->db->get();
	// 		if($query->num_rows() > 0){
	// 			return $query->row();
	// 		}else{
	// 			return FALSE;
	// 		}
	// 	}
	// }

	// function excluir_agenda($id){
	// 	$this->db->where('id', $id);
	// 	if($this->db->delete('agendas')){
	// 		return TRUE;
	// 	}else{
	// 		return FALSE;
	// 	}
	// }
}
