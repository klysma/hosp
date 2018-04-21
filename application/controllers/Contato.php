<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contato extends TEC_Controller {

    public function __construct()
    {
        parent::__construct();

        $this->set_menu_active(
            [
                'menu' => 'contato',
                'submenu' => ''
            ]
        );
    }

    public function index()
    {
        $this->montaPagina('contato/pagina');
    }

    public function enviar_contato()
    {
        $this->load->library('email');
        $config['charset'] = 'utf-8';
        $config['mailtype'] = 'html';
        $this->email->initialize($config);

        $this->email->from($this->input->post('email'));
        $this->email->to('contato@cecor.com.br');
        $this->email->reply_to($this->input->post('email'), $this->input->post('nome'));

        $data['nome'] = $this->input->post('nome');
        $data['email'] = $this->input->post('email');
        $data['mensagem'] = $this->input->post('mensagem');
        $data['telefone'] = $this->input->post('telefone');
        $this->load->view('email/contato', $data, TRUE);

        $this->email->message($this->load->view('email/contato', $data, TRUE));
        $return = $this->email->send();

        if ($return) {
            $result = [
                'title' => 'Concluído',
                'message' => 'Sua mensagem foi enviada com sucesso, se necessário entraremos em contato com você em breve.',
                'status' => 'success'
            ];
        }else{
            $result = [
                'title' => 'Ops',
                'message' => 'Ocorreu um erro ao enviar sua mensagem, tente novamente.',
                'status' => 'error'
            ];
        }

        return $this->output->json($result);
    }
}
