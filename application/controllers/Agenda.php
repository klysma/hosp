<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Agenda extends TEC_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('agenda_model');

        $this->set_menu_active(
            [
                'menu' => 'agenda',
                'submenu' => ''
            ]
        );
    }

    public function index()
    {
        $agenda = json_encode($this->agenda_model->get_agendas());
        $this->montaPagina('agendamento/pagina', compact('agenda'));
    }
}
