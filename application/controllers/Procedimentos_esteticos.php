<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Procedimentos_esteticos extends TEC_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('procedimentos_esteticos_model');
    }

    public function index($nome_procedimento)
    {
        if(!$procedimento = $this->procedimentos_esteticos_model->get_procedimento_estetico($nome_procedimento)){
            show_404();
        }

        $this->set_menu_active(
            [
                'menu' => 'procedimentos',
                'submenu' => $nome_procedimento
            ]
        );
        $this->montaPagina('procedimentos_esteticos/pagina', compact('procedimento'));
    }
}
