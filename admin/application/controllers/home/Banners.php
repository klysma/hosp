<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Banners extends TEC_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('home/banners_model');

        $this->set_menu_active(
        	[
                'menu' => 'home',
                'submenu' => 'home-banners'
            ]
        );
    }

    public function index()
    {
        $this->lista();
    }


    public function lista()
    {
        $banners =  $this->banners_model->get_banners();
        $notification = '';
        if($this->input->get('type')){
            $notification = new stdClass;
            $notification->type = $this->input->get('type');
            $notification->title = $this->input->get('title');
            $notification->message = $this->input->get('message');
            // $data['notification'] = $notification;
        }

        $this->montaTela('home/banners/lista', compact('banners', 'notification'));
    }

    function novo_banner(){
        $this->montaTela('home/banners/formulario');
    }

    function salvar_banner(){



        if($this->input->post()){
        	$upload = $this->upload_banners();
        	$upload2 = $this->upload_img_principal();
            $dados = array(
                'titulo' => $this->input->post('titulo'),
                'imagem' => $upload['file_name'],
                'imagem_principal' => $upload2['file_name'],
                'subtitulo' => $this->input->post('subtitulo'),
                'titulo_destaque' => $this->input->post('titulo_destaque'),
                'telefone' => $this->input->post('telefone')
            );

            $id = NULL;

            //editar agenda
            if($this->input->post('id')){
                $id = $this->input->post('id');
            }

            if($this->banners_model->salvar_banner($dados, $id))
            {
                $_GET['type'] = 'success';
                if($id){
                    $_GET['title'] = 'Atualização';
                    $_GET['message'] = 'Banner atualizado com sucesso!';
                }else{
                    $_GET['title'] = 'Cadastro';
                    $_GET['message'] = 'Banner cadastrado com sucesso!';
                }
            }
            else
            {
                $_GET['type'] = 'error';
                if($id){
                    $_GET['title'] = 'Atualização';
                    $_GET['message'] = 'Ocorreu um erro ao atualizar o banner!';
                }else{
                    $_GET['title'] = 'Cadastro';
                    $_GET['message'] = 'Ocorreu um erro ao cadastrar o banner!';
                }
            }
            $this->lista();
            $url = base_url(array('home/banners'));
            $this->output->append_output('<script>window.history.replaceState("", "Hospital de olhos", "'. $url .'")</script>');
        }
    }

    public function upload_banners($value='')
    {

    	if(!empty($_FILES['banner']['name'])){
    	    $this->load->library('upload', array(
    	            'upload_path' => FCPATH.'../public/imagens/banners',
    	            'allowed_types' => 'jpg|png|gif',
    	            'file_name' => hash('md5', uniqid(rand(0, 500)) . time() . rand(0, 500)),
    	            'max_size' => 8 * 1024,
    	            'remove_spaces' => TRUE
    	        ));

    	    if($this->upload->do_upload('banner')){

    	        $file_data = $this->upload->data();
    	        $this->load->library('image_lib', array(
    	                'image_library' => 'gd2',
    	                'source_image' => $file_data['full_path'],
    	                'create_thumb' => FALSE,
    	                'maintain_ratio' => TRUE,
    	                //'width' => 1600,
    	                //'height' => 500
    	            )
    	        );
    	        //$this->image_lib->resize();
    	    }

    	    if($this->input->post('imagem_banner')){
    	        if ($_FILES['banner']['name'] != $this->input->post('imagem_banner')) {
    	            $apagar = FCPATH.'../public/imagens/banners/' . $this->input->post('imagem_banner');
    	            @unlink($apagar);
    	        }
    	    }
    	}else{
    	    if($this->input->post('imagem_banner')){
    	        $file_data['file_name'] = $this->input->post('imagem_banner');
    	    }else{
    	        $file_data['file_name'] = '';
    	    }
    	}
    	return $file_data;
    }

    public function upload_img_principal($value='')
    {
    	if(!empty($_FILES['imagem_principal']['name'])){
    	    $this->load->library('upload', array(
    	            'upload_path' => FCPATH.'../public/imagens/banners',
    	            'allowed_types' => 'jpg|png|gif',
    	            'file_name' => hash('md5', uniqid(rand(0, 500)) . time() . rand(0, 500)),
    	            'max_size' => 8 * 1024,
    	            'remove_spaces' => TRUE
    	        ));

    	    if($this->upload->do_upload('imagem_principal')){
    	        $file_data = $this->upload->data();
    	        $this->load->library('image_lib', array(
    	                'image_library' => 'gd2',
    	                'source_image' => $file_data['full_path'],
    	                'create_thumb' => FALSE,
    	                'maintain_ratio' => TRUE,
    	                //'width' => 1600,
    	                //'height' => 500
    	            )
    	        );
    	        //$this->image_lib->resize();
    	    }

    	    if($this->input->post('imagem_principal_img')){
    	        if ($_FILES['banner']['name'] != $this->input->post('imagem_principal_img')) {
    	            $apagar = FCPATH.'../public/imagens/banners/' . $this->input->post('imagem_principal_img');
    	            @unlink($apagar);
    	        }
    	    }
    	}else{
    	    if($this->input->post('imagem_principal_img')){
    	        $file_data['file_name'] = $this->input->post('imagem_principal_img');
    	    }else{
    	        $file_data['file_name'] = '';
    	    }
    	}
    	return $file_data;
    }


    public function editar_banner()
    {
        if($this->input->get('id')){
            $dados['banner'] = $this->banners_model->get_banner($this->input->get('id'));

            $this->montaTela('home/banners/formulario', $dados);
        }
    }

    public function excluir_banner(){
        if ($this->input->post('id')) {
            $banner = $this->banners_model->get_banner($this->input->post('id'));
            if($this->banners_model->excluir_banner($this->input->post('id'))){
                $apagar = FCPATH.'../public/imagens/banners/' . $banner->imagem;
                @unlink($apagar);
                $response['type'] = 'success';
                $response['title'] = 'Exclusão';
                $response['message'] = 'Banner excluído com sucesso!';
                echo json_encode($response);
            }else{
                $response['type'] = 'error';
                $response['title'] = 'Exclusão';
                $response['message'] = 'Ocorreu um erro ao excluír o banner!';
                echo json_encode($response);
            }
        }
        return;
    }

}
