<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Noticias_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function get_num_noticias()
    {
        $this->db->from('noticias');
        return $this->db->count_all_results();
    }

    public function get_noticias($pagina, $itens_pagina)
    {
        $this->db->select('id, titulo, nome_url, texto_breve, imagem, autor, data')
                ->from('noticias')
                ->order_by('id', 'DESC')
                ->limit($itens_pagina, $itens_pagina * $pagina);
        $query = $this->db->get();
        if($query->num_rows() > 0){
            return $query->result();
        }else{
            return FALSE;
        }
    }


    public function get_noticia($nome_url)
    {
        $this->db->select('*')
                ->from('noticias')
                ->where('nome_url', $nome_url);
        $query = $this->db->get();
        if($query->num_rows() == 1){
            return $query->row();
        }else{
            return FALSE;
        }
    }
    public function get_noticia_ultimas()
    {
        $this->db->select('*')
                ->from('noticias');
                $this->db->limit(3);
        $query = $this->db->get();
        if($query->num_rows() > 0){
            return $query->result();
        }else{
            return FALSE;
        }
    }

    public function get_home()
    {
        $this->db->select('*')
                ->from('home');
        $query = $this->db->get();
        if($query->num_rows() == 1){
            return $query->row();
        }else{
            return FALSE;
        }
    }
}
