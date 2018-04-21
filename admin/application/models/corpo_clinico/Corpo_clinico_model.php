<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Corpo_clinico_model extends CI_Model {

	public function __construct() {
		parent::__construct();
	}

	public function salvar_corpo_clinico($dados, $id=NULL)
	{
		if($id){
			$this->db->where('id', $id);
			if($this->db->update('corpo_clinico', $dados)){
				return true;
			}else{
				return false;
			}
		}else{
			if($this->db->insert('corpo_clinico', $dados)){
				return true;
			}else
			{
				return false;
			}
		}
	}

	public function get_corpo_clinico()
	{
		$this->db->select('*');
		$this->db->from('corpo_clinico');
		$query = $this->db->get();
		if($query->num_rows() > 0){
			return $query->result();
		}else{
			return FALSE;
		}
	}

	public function get_corpo_clinico_id($id=null)
	{
		if($id){
			$this->db->select('*');
			$this->db->from('corpo_clinico');
			$this->db->where('id', $id);
			$query = $this->db->get();
			if($query->num_rows() > 0){
				return $query->row();
			}else{
				return FALSE;
			}
		}
	}

	function excluir_corpo_clinico_id($id){
		$this->db->where('id', $id);
		if($this->db->delete('corpo_clinico')){
			return TRUE;
		}else{
			return FALSE;
		}
	}
}
