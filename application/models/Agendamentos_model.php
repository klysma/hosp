<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Agendamentos_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function agendar($dados)
    {
        if($this->db->insert('agendamentos', $dados)){
            return TRUE;
        }else{
            return FALSE;
        }
    }
}
