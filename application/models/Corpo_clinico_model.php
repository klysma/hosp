<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Corpo_clinico_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }


    public function get_corpo_clinico(){
      $this->db->select('*');
      $this->db->from('corpo_clinico');
      $query = $this->db->get();
      if($query->num_rows() > 0){
          return $query->result();
      }else{
          return FALSE;
      }
    }


  }
