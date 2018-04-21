<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home_model extends CI_Model {

	public function __construct() {
		parent::__construct();
	}


  public function get_S1(){

    $this->db->select('secao1.*');
    $this->db->from('secao1');
    $query = $this->db->get();
    if($query->num_rows() > 0){
      return $query->row();
    }else{
      return FALSE;
    }

  }


  public function get_lista_S2(){

    $this->db->select('secao2.*');
    $this->db->from('secao2');
    $query = $this->db->get();
    if($query->num_rows() > 0){
      return $query->result();
    }else{
      return FALSE;
    }
  }

  public function get_lista_S3(){

    $this->db->select('secao3.*');
    $this->db->from('secao3');
    $query = $this->db->get();
    if($query->num_rows() > 0){
      return $query->result();
    }else{
      return FALSE;
    }
  }

  public function get_S2(){

    $this->db->select('secao2.*');
    $this->db->from('secao2');

    $query = $this->db->get();
    if($query->num_rows() == 1){
      return $query->row();
    }else{
      return FALSE;
    }

  }

  public function get_S3($id){

    $this->db->select('secao3.*');
    $this->db->from('secao3');
		$this->db->where('id', $id);
    $query = $this->db->get();
    if($query->num_rows() > 0){
      return $query->row();
    }else{
      return FALSE;
    }

  }

  public function salvar_secao1($dados, $id){
    if($id){
			$this->db->where('id', $id);
			if($this->db->update('secao1', $dados)){
				return true;
			}else{
				return false;
			}
		}else{
				return false;
		}
  }

  public function salvar_secao2($dados, $id){
		if($id){
				$this->db->where('id', $id);
				if($this->db->update('secao2', $dados)){
						return true;
				}else{
						return false;
				}
		}else{
				if($this->db->insert('secao2', $dados)){
						return true;
				}else
				{
						return false;
				}
		}
  }

  public function salvar_secao3($dados, $id){
		if($id){
				$this->db->where('id', $id);
				if($this->db->update('secao3', $dados)){
						return true;
				}else{
						return false;
				}
		}else{
				if($this->db->insert('secao3', $dados)){
						return true;
				}else
				{
						return false;
				}
		}
  }

	public function excluir_S2($id){
		$this->db->where('id', $id);
		if($this->db->delete('secao2')){
				return TRUE;
		}else{
				return FALSE;
		}
	}

	public function excluir_S3($id){
		$this->db->where('id', $id);
		if($this->db->delete('secao3')){
				return TRUE;
		}else{
				return FALSE;
		}
	}


}
