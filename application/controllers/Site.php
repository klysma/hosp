<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Site extends TEC_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Convenios_model');
        $this->load->model('Corpo_clinico_model');
        $this->load->model('Especialidades_model');
        $this->load->model('Clinica_model');

        $this->set_menu_active(
            [
                'menu' => 'perfil',
                'submenu' => ''
            ]
        );
    }

    public function sobre()
    {
        $itens = $this->Clinica_model->get_itens();
        $clinica = $this->Clinica_model->get_clinica();
        $this->montaPagina('sobre/pagina', compact('itens', 'clinica'));
    }


    public function multimidia(){
      $this->montaPagina('multimidia/pagina');
    }

    public function especialidades()
    {
        $especialidades = $this->Especialidades_model->get_especialidades();
        $this->montaPagina('especialidades/pagina', compact('especialidades'));
    }


    public function contato()
    {
        $this->montaPagina('contato/pagina');
    }

    public function detalhes_especialidades(){

        $especialidade = $this->Especialidades_model->get_especialidades_id($this->input->post('id'));

        $this->load->view('especialidades/especialidades-modal', compact('especialidade'));
    }

    public function estrutura(){
      $this->montaPagina('estrutura/pagina');
    }

}
