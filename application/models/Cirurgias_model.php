<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cirurgias_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function get_menu_cirurgias()
    {
        $this->db->select('id, nome, nome_url');
        $this->db->from('categorias_cirurgias');
        $qCat = $this->db->get();
        if($qCat->num_rows() == 0){
            return FALSE;
        }

        return $qCat->result();
    }

    public function get_categoria($categoria)
    {
        $this->db->select('*')
                ->from('categorias_cirurgias')
                ->where('nome_url', $categoria);

        $query = $this->db->get();
        if($query->num_rows() > 0){
            return $query->row();
        }else{
            return FALSE;
        }
    }

    public function get_cirurgias_categorias($categoria)
    {
        $this->db->select('cirurgias.*, categorias_cirurgias.nome_url AS url_categoria')
                ->from('cirurgias')
                ->join('categorias_cirurgias', 'cirurgias.categorias_cirurgias_id=categorias_cirurgias.id')
                ->where('categorias_cirurgias_id', $categoria);

        $query = $this->db->get();
        if($query->num_rows() > 0){
            return $query->result();
        }else{
            return FALSE;
        }
    }

    public function get_cirurgia($cirurgia)
    {
        $this->db->select('*')
                ->from('cirurgias')
                ->where('nome_url', $cirurgia);

        $query = $this->db->get();
        if($query->num_rows() > 0){
            return $query->row();
        }else{
            return FALSE;
        }
    }
}
