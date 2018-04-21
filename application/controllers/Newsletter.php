<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Newsletter extends TEC_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('newsletter_model');
    }

    public function salvar()
    {
        $db = [
            'email' => $this->input->post('email')
        ];

        if($this->newsletter_model->salvar($db)){
            $result = [
                'title' => 'Concluído',
                'message' => 'E-mail cadastrado em nossa base de dados, sempre que sugir novidades você será o primeiro a receber.',
                'status' => 'success'
            ];
        }else{
            $result = [
                'title' => 'Desculpe',
                'message' => 'Ocorreu um erro ao cadastrar seu e-mail, tente novamente mais tarde.',
                'status' => 'error'
            ];
        }

        return $this->output->json($result);
    }
}
