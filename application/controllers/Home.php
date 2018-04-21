<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends TEC_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('home_model');
        $this->load->model('noticias_model');


    }

    public function index()
    {
        //$this->load->library('pagination');

        $noticias = $this->noticias_model->get_noticias(0, 3);

        $secao = $this->home_model->get_secao();
        $secao2 = $this->home_model->get_home_S2();
        $secao3 = $this->home_model->get_home_S3();
        $banners = $this->home_model->get_banners();
        $corpo_clinico = $this->home_model->get_corpo_clinico();
        $comentarios = $this->home_model->get_comentarios();
        $convenios = $this->home_model->get_convenios();

        $this->montaPagina('home/pagina', compact('banners', 'noticias', 'secao', 'secao2', 'secao3', 'corpo_clinico', 'comentarios', 'convenios'));

    }


    public function error()
    {
        show_404();
    }
}
