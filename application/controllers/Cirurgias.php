<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cirurgias extends TEC_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('cirurgias_model');
    }

    public function index($nome_cirurgia)
    {
        if(!$cirurgia = $this->cirurgias_model->get_categoria($nome_cirurgia)){
            show_404();
        }

        $this->set_menu_active(
            [
                'menu' => 'cirurgias',
                'submenu' => $nome_cirurgia
            ]
        );
        $this->montaPagina('cirurgias/lista', compact('cirurgia'));
    }

    public function categoria($nome_categoria)
    {
        if(!$categoria = $this->cirurgias_model->get_categoria($nome_categoria)){
            show_404();
        }

        $cirurgias = $this->cirurgias_model->get_cirurgias_categorias($categoria->id);

        $this->set_menu_active(
            [
                'menu' => 'cirurgias',
                'submenu' => $nome_categoria
            ]
        );
        $this->montaPagina('cirurgias/lista', compact('categoria', 'cirurgias'));
    }

    public function cirurgia($nome_categoria, $nome_cirurgia)
    {
        if(!$categoria = $this->cirurgias_model->get_categoria($nome_categoria)){
            show_404();
        }

        if(!$cirurgia = $this->cirurgias_model->get_cirurgia($nome_cirurgia)){
            show_404();
        }

        $this->set_menu_active(
            [
                'menu' => 'cirurgias',
                'submenu' => $nome_cirurgia
            ]
        );
        $this->montaPagina('cirurgias/pagina', compact('cirurgia'));
    }
}
