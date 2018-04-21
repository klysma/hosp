<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Convenios_model extends CI_Model {

	public function __construct() {
		parent::__construct();
	}

	public function salvar_convenio($dados, $id=NULL)
	{
		if($id){
			$this->db->where('id', $id);
			if($this->db->update('convenios', $dados)){
				return true;
			}else{
				return false;
			}
		}else{
			if($this->db->insert('convenios', $dados)){
				return true;
			}else
			{
				return false;
			}
		}
	}

	public function get_convenios()
	{
		$this->db->select('id, titulo');
		$this->db->from('convenios');
		$query = $this->db->get();
		if($query->num_rows() > 0){
			return $query->result();
		}else{
			return FALSE;
		}
	}

	public function get_convenio($id=null)
	{
		if($id){
			$this->db->select('*');
			$this->db->from('convenios');
			$this->db->where('id', $id);
			$query = $this->db->get();
			if($query->num_rows() > 0){
				return $query->row();
			}else{
				return FALSE;
			}
		}
	}

	function excluir_convenio($id){
		$this->db->where('id', $id);
		if($this->db->delete('convenios')){
			return TRUE;
		}else{
			return FALSE;
		}
	}
}
