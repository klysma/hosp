<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Noticias extends TEC_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('noticias_model');

        $this->set_menu_active(
            [
                'menu' => 'home',
                'submenu' => ''
            ]
        );
    }

    public function index()
    {
        $this->load->library('pagination');
        $segment = 2;
        $pagina = ($this->uri->segment($segment)) ? (int) $this->uri->segment($segment) - 1: 0;
        $itens_pagina =3;
        $num_itens = $this->noticias_model->get_num_noticias();
        $noticias = $this->noticias_model->get_noticias($pagina, $itens_pagina);
        $paginacao = $this->pagination->generate(['noticias'], $num_itens, $itens_pagina, $segment);

        $this->montaPagina('noticias/lista_noticias', compact('noticias', 'paginacao'));
    }

    public function visualizar()
    {
        $noticia = $this->noticias_model->get_noticia($this->uri->segment(2));
        if(!$noticia){
            show_404();
        }
        $ultimas = $this->noticias_model->get_noticia_ultimas();

        $this->montaPagina('noticias/pagina', compact('noticia', 'ultimas'));
    }
}
