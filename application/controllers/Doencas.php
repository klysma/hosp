<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Doencas extends TEC_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('convenios_model');

    }

    public function index()
    {
        $convenios = $this->convenios_model->get_convenios();

        $this->montaPagina('doencas/pagina', compact('convenios'));
    }
}
