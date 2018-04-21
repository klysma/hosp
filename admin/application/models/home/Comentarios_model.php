<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Comentarios_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function salvar_comentario($dados, $id=NULL)
    {
        if($id){
            $this->db->where('id', $id);
            if($this->db->update('comentarios', $dados)){
                return true;
            }else{
                return false;
            }
        }else{
            if($this->db->insert('comentarios', $dados)){
                return true;
            }else
            {
                return false;
            }
        }
    }

    public function get_comentarios()
    {
        $this->db->select('*');
        $this->db->from('comentarios');
        $query = $this->db->get();
        if($query->num_rows() > 0){
            return $query->result();
        }else{
            return FALSE;
        }
    }

    public function get_comentario($id=null)
    {
        if($id){
            $this->db->select('*');
            $this->db->from('comentarios');
            $this->db->where('id', $id);
            $query = $this->db->get();
            if($query->num_rows() > 0){
                return $query->row();
            }else{
                return FALSE;
            }
        }
    }

    function excluir_comentario($id){
        $this->db->where('id', $id);
        if($this->db->delete('comentarios')){
            return TRUE;
        }else{
            return FALSE;
        }
    }
}
