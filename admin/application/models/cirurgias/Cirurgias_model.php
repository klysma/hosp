<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cirurgias_model extends CI_Model {

	public function __construct() {
		parent::__construct();
	}

	public function salvar_cirurgia($dados, $id=NULL)
	{
		if($id){
			$this->db->where('id', $id);
			if($this->db->update('cirurgias', $dados)){
				return true;
			}else{
				return false;
			}
		}else{
			if($this->db->insert('cirurgias', $dados)){
				return true;
			}else
			{
				return false;
			}
		}
	}

	public function get_cirurgias()
	{
		$this->db->select('id, titulo, data');
		$this->db->from('cirurgias');
		$query = $this->db->get();
		if($query->num_rows() > 0){
			return $query->result();
		}else{
			return FALSE;
		}
	}

	public function get_cirurgia($id=null)
	{
		if($id){
			$this->db->select('*');
			$this->db->from('cirurgias');
			$this->db->where('id', $id);
			$query = $this->db->get();
			if($query->num_rows() > 0){
				return $query->row();
			}else{
				return FALSE;
			}
		}
	}

	function excluir_cirurgia($id){
		$this->db->where('id', $id);
		if($this->db->delete('cirurgias')){
			return TRUE;
		}else{
			return FALSE;
		}
	}
}
