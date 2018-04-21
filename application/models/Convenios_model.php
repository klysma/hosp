<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Convenios_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function get_convenios()
    {
        $this->db->select('*');
        $this->db->from('convenios');
        $query = $this->db->get();
        if($query->num_rows() > 0){
            return $query->result();
        }else{
            return FALSE;
        }
    }
    public function get_convenios_prefeituras()
    {
        $this->db->select('*');
        $this->db->from('convenios_prefeituras');
        $query = $this->db->get();
        if($query->num_rows() > 0){
            return $query->result();
        }else{
            return FALSE;
        }
    }
}
