<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function get_banners()
    {
        $this->db->select('*');
        $this->db->from('banners');
        $query = $this->db->get();
        if($query->num_rows() > 0){
            return $query->result();
        }else{
            return FALSE;
        }
    }



    public function get_home_S1()
    {
        $this->db->select('secao1.*');
        $this->db->from('secao1');
        $query = $this->db->get();
        if($query->num_rows() == 1){
            return $query->row();
        }else{
            return FALSE;
        }
    }

    public function get_secao()
    {
        $this->db->select('secao.*');
        $this->db->from('secao');
        $query = $this->db->get();
        if($query->num_rows() == 1){
            return $query->row();
        }else{
            return FALSE;
        }
    }

    public function get_home_S2()
    {
        $this->db->select('secao2.*');
        $this->db->from('secao2');
        $query = $this->db->get();
        if($query->num_rows() == 1){
            return $query->row();
        }else{
            return FALSE;
        }
    }

    public function get_home_S3()
    {
        $this->db->select('secao3.*');
        $this->db->from('secao3');
        $query = $this->db->get();
        if($query->num_rows() > 0){
            return $query->result();
        }else{
            return FALSE;
        }
    }

    public function get_comentarios()
    {
        $this->db->select('comentarios.*');
        $this->db->from('comentarios');
        $query = $this->db->get();
        if($query->num_rows() > 0){
            return $query->result();
        }else{
            return FALSE;
        }
    }
    public function get_convenios()
    {
        $this->db->select('convenios.*');
        $this->db->from('convenios');
        $query = $this->db->get();
        if($query->num_rows() > 0){
            return $query->result();
        }else{
            return FALSE;
        }
    }

    public function agendar($dados)
    {
        if($this->db->insert('agendamentos', $dados)){
            return TRUE;
        }else{
            return FALSE;
        }
    }

    public function get_corpo_clinico(){

      $this->db->select('corpo_clinico.*');
      $this->db->from('corpo_clinico');
      $query = $this->db->get();
      if($query->num_rows() > 0){
          return $query->result();
      }else{
          return FALSE;
      }

    }


}
