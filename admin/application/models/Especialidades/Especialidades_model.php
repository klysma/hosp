<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Especialidades_model extends CI_Model {

	public function __construct() {
		parent::__construct();
	}

	public function salvar_especialidades($dados, $id=NULL)
	{
		if($id){
			$this->db->where('id', $id);
			if($this->db->update('especialidades', $dados)){
				return true;
			}else{
				return false;
			}
		}else{
			if($this->db->insert('especialidades', $dados)){
				return true;
			}else
			{
				return false;
			}
		}
	}

	public function get_especialidades()
	{
		$this->db->select('*');
		$this->db->from('especialidades');
		$query = $this->db->get();
		if($query->num_rows() > 0){
			return $query->result();
		}else{
			return FALSE;
		}
	}

	public function get_especialidades_id($id=null)
	{
		if($id){
			$this->db->select('*');
			$this->db->from('especialidades');
			$this->db->where('id', $id);
			$query = $this->db->get();
			if($query->num_rows() > 0){
				return $query->row();
			}else{
				return FALSE;
			}
		}
	}

	function excluir_especialidades_id($id){
		$this->db->where('id', $id);
		if($this->db->delete('especialidades')){
			return TRUE;
		}else{
			return FALSE;
		}
	}
}
