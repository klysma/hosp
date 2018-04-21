<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Corpo_clinico extends TEC_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('corpo_clinico_model');

    }

    public function index()
    {
       $corpo_clinico = $this->corpo_clinico_model->get_corpo_clinico();
      
        $this->montaPagina('corpo_clinico/pagina', compact('corpo_clinico'));
    }
}
