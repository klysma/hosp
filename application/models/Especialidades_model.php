<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Especialidades_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }


    public function get_especialidades(){
      $this->db->select('*');
      $this->db->from('especialidades');
      $query = $this->db->get();
      if($query->num_rows() > 0){
          return $query->result();
      }else{
          return FALSE;
      }
    }

    public function get_especialidades_id($id){
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
