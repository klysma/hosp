<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Procedimentos_esteticos_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function get_menu_procedimentos_esteticos()
    {
        $this->db->select('id, titulo, nome_url');
        $this->db->from('procedimentos_esteticos');
        $query = $this->db->get();
        if($query->num_rows() > 0){
            return $query->result();
        }else{
            return FALSE;
        }
    }

    public function get_procedimento_estetico($procedimento)
    {
        $this->db->select('*')
                ->from('procedimentos_esteticos')
                ->where('nome_url', $procedimento);

        $query = $this->db->get();
        if($query->num_rows() > 0){
            return $query->row();
        }else{
            return FALSE;
        }
    }
}
