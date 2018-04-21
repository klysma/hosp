<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Secao_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }


    public function get_secao(){
      $this->db->select('*');
      $this->db->from('secao');
      $query = $this->db->get();

      if($query->num_rows()>0){
        return $query->row();
      }else{
        return false;
      }


    }

    public function salvar_secao($dados, $id=NULL){
      if($id){
        $this->db->where('id', $id);
        if ($this->db->update('secao', $dados)) {
          return true;
        }else{
          return false;
        }
      }else{
        if ($this->db->insert('secao', $dados)) {
          return true;
        }else{
          return false;
        }
      }
    }


}
