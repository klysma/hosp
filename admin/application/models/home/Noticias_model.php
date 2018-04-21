<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Noticias_model extends CI_Model {

	public function __construct() {
		parent::__construct();
	}

	public function salvar_noticia($dados, $id=NULL)
	{
		if($id){
			$this->db->where('id', $id);
			if($this->db->update('noticias', $dados)){
				return true;
			}else{
				return false;
			}
		}else{
			if($this->db->insert('noticias', $dados)){
				return true;
			}else
			{
				return false;
			}
		}
	}

	public function get_noticias()
	{
		$this->db->select('id, titulo, texto_breve, data, autor');
		$this->db->from('noticias');
		$query = $this->db->get();
		if($query->num_rows() > 0){
			return $query->result();
		}else{
			return FALSE;
		}
	}

	public function get_noticia($id=null)
	{
		if($id){
			$this->db->select('*');
			$this->db->from('noticias');
			$this->db->where('id', $id);
			$query = $this->db->get();
			if($query->num_rows() > 0){
				return $query->row();
			}else{
				return FALSE;
			}
		}
	}

	function excluir_noticia($id){
		$this->db->where('id', $id);
		if($this->db->delete('noticias')){
			return TRUE;
		}else{
			return FALSE;
		}
	}
}
