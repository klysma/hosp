<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Clinica_model extends CI_Model {

	public function __construct() {
		parent::__construct();


	}
	public function salvar_clinica($dados, $id=NULL)
	{
		if($id){
			$this->db->where('id', $id);
			if($this->db->update('clinica', $dados)){
				return true;
			}else{
				return false;
			}
		}else{
			if($this->db->insert('clinica', $dados)){
				return true;
			}else
			{
				return false;
			}
		}
	}


	public function salvar_item($dados, $id=NULL)
	{
		if($id){
			$this->db->where('id', $id);
			if($this->db->update('itens_clinica', $dados)){
				return true;
			}else{
				return false;
			}
		}else{
			if($this->db->insert('itens_clinica', $dados)){
				return true;
			}else
			{
				return false;
			}
		}
	}

	public function get_clinica()
	{
		$this->db->select('*');
		$this->db->from('clinica');
		$query = $this->db->get();
		if($query->num_rows() == 1){
			return $query->row();
		}else{
			return FALSE;
		}
	}

	public function get_itens()
	{
		$this->db->select('*');
		$this->db->from('itens_clinica');
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

	function excluir_clinica_item($id){
		$this->db->where('id', $id);
		if($this->db->delete('itens_clinica')){
			return TRUE;
		}else{
			return FALSE;
		}
	}
}
