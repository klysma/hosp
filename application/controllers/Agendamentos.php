<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Agendamentos extends TEC_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('agendamentos_model');
    }

    public function agendar()
    {
        $db = [
            'nome' => $this->input->post('nome'),
            'email' => $this->input->post('email'),
            'telefone' => $this->input->post('telefone'),
            'dia' => $this->input->post('dia_semana'),
            'parte_dia' => $this->input->post('parte_dia'),
            'mensagem' => $this->input->post('mensagem')

        ];

        if($this->agendamentos_model->agendar($db)){
            $this->load->library('email');
            $config['charset'] = 'utf-8';
            $config['mailtype'] = 'html';
            $this->email->initialize($config);

            $this->email->from($this->input->post('email'));
            $this->email->to('contato@cecor.com.br');

            $data['nome'] = $db['nome'];
            $data['email'] = $db['email'];
            $data['telefone'] = $db['telefone'];
            $data['dia'] = $db['dia'];

            $this->email->message($this->load->view('email/agendamento', $data, TRUE));
            $return = $this->email->send();
            $result = [
                'title' => 'Concluído',
                'message' => 'Agendamento realizado, entraremos em contato em breve para confirmar o dia e horário de seu atendimento.',
                'status' => 'success'
            ];
        }else{
            $result = [
                'title' => 'Desculpe',
                'message' => 'Ocorreu um erro durante o agendamento, tente novamente mais tarde.',
                'status' => 'error'
            ];
        }

        return $this->output->json($result);
    }
}
