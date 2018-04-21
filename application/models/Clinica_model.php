<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Clinica_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }


    public function get_itens(){
      $this->db->select('*');
      $this->db->from('itens_clinica');
      $query = $this->db->get();
      if($query->num_rows() > 0){
          return $query->result();
      }else{
          return FALSE;
      }
    }

    public function get_clinica(){
      $this->db->select('*');
      $this->db->from('clinica');
      $query = $this->db->get();
      if($query->num_rows() > 0){
          return $query->row();
      }else{
          return FALSE;
      }
    }


  }
