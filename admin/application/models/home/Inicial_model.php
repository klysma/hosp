<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Inicial_model extends CI_Model {

	public function __construct() {
		parent::__construct();
	}

	public function salvar_home($dados, $id=NULL)
	{
		if($id){
			$this->db->where('id', $id);
			if($this->db->update('home', $dados)){
				return true;
			}else{
				return false;
			}
		}else{
				return false;
		}
	}

	public function get_conteudo()
	{
		$this->db->select('home.*');
		$this->db->from('home');
		$query = $this->db->get();
		if($query->num_rows() > 0){
			return $query->row();
		}else{
			return FALSE;
		}
	}

}
