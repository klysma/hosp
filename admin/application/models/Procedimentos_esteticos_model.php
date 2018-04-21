<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Procedimentos_esteticos_model extends CI_Model {

	public function __construct() {
		parent::__construct();
	}

	public function salvar_procedimentos_estetico($dados, $id=NULL)
	{
		if($id){
			$this->db->where('id', $id);
			if($this->db->update('procedimentos_esteticos', $dados)){
				return true;
			}else{
				return false;
			}
		}else{
			if($this->db->insert('procedimentos_esteticos', $dados)){
				return true;
			}else
			{
				return false;
			}
		}
	}

	public function get_procedimentos_esteticos()
	{
		$this->db->select('id, titulo, data');
		$this->db->from('procedimentos_esteticos');
		$query = $this->db->get();
		if($query->num_rows() > 0){
			return $query->result();
		}else{
			return FALSE;
		}
	}

	public function get_procedimentos_estetico($id=null)
	{
		if($id){
			$this->db->select('*');
			$this->db->from('procedimentos_esteticos');
			$this->db->where('id', $id);
			$query = $this->db->get();
			if($query->num_rows() > 0){
				return $query->row();
			}else{
				return FALSE;
			}
		}
	}

	function excluir_procedimentos_estetico($id){
		$this->db->where('id', $id);
		if($this->db->delete('procedimentos_esteticos')){
			return TRUE;
		}else{
			return FALSE;
		}
	}
}
