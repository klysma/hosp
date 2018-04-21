<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Convenios extends TEC_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('convenios_model');

    }

    public function index()
    {
        $convenios = $this->convenios_model->get_convenios();

        $this->montaPagina('convenios/pagina', compact('convenios'));
    }

    public function prefeituras(){
      $dados['convenios'] = $this->convenios_model->get_convenios_prefeituras();

      $this->montaPagina('convenios/pagina', $dados);
    }

}
