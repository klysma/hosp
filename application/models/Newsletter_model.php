<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Newsletter_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function salvar($dados)
    {
        if($this->db->insert('newsletter', $dados)){
            return TRUE;
        }else{
            return FALSE;
        }
    }
}
