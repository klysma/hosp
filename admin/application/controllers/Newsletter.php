<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Newsletter extends TEC_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('newsletter_model');
        $this->set_menu_active(
        	[
                'menu' => 'newsletter',
                'submenu' => ''
            ]
        );
    }

    public function index()
    {
        $this->lista();
    }


    public function lista()
    {
        $newsletter =  $this->newsletter_model->get_newsletters();
        $notification = '';
        if($this->input->get('type')){
            $notification = new stdClass;
            $notification->type = $this->input->get('type');
            $notification->title = $this->input->get('title');
            $notification->message = $this->input->get('message');
            // $data['notification'] = $notification;
        }

        $this->montaTela('newsletter/lista', compact('newsletter', 'notification'));
    }
}
