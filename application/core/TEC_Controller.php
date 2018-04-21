<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class TEC_Controller extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
    }

    public function set_menu_active($menu='')
    {
        $this->active_menu = $menu;
    }

    private function get_menu_cirurgias()
    {
        $this->load->model('cirurgias_model');
        return $this->cirurgias_model->get_menu_cirurgias();
    }

    private function get_menu_procedimentos_esteticos()
    {
        $this->load->model('procedimentos_esteticos_model');
        return $this->procedimentos_esteticos_model->get_menu_procedimentos_esteticos();
    }

    public function montaPagina($pagina, $data = [], $header = 'header')
    {

        $this->load->view('includes/'. $header, $data);
        $this->load->view($pagina);
        $this->load->view('includes/footer');
    }
}
