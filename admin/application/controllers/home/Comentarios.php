<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Comentarios extends TEC_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('home/comentarios_model');

        $this->set_menu_active(
        	[
                'menu' => 'home',
                'submenu' => 'home-comentarios'
            ]
        );
    }

    public function index()
    {
        $this->lista();
    }


    public function lista()
    {
        $comentarios =  $this->comentarios_model->get_comentarios();
        $notification = '';
        if($this->input->get('type')){
            $notification = new stdClass;
            $notification->type = $this->input->get('type');
            $notification->title = $this->input->get('title');
            $notification->message = $this->input->get('message');
            // $data['notification'] = $notification;
        }

        $this->montaTela('home/comentarios/lista', compact('comentarios', 'notification'));
    }

    function novo_comentarios(){
        $this->montaTela('home/comentarios/formulario');
    }

    function salvar_comentarios(){



        if($this->input->post()){
        	//$upload = $this->upload_comentarios();
        	//$upload2 = $this->upload_img_principal();
            $dados = array(
                'nome' => $this->input->post('nome'),
                'link' => $this->input->post('link'),
              );

            $id = NULL;

            //editar agenda
            if($this->input->post('id')){
                $id = $this->input->post('id');
            }

            if($this->comentarios_model->salvar_comentario($dados, $id))
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
                    $_GET['message'] = 'Ocorreu um erro ao atualizar o comentario!';
                }else{
                    $_GET['title'] = 'Cadastro';
                    $_GET['message'] = 'Ocorreu um erro ao cadastrar o comentario!';
                }
            }
            $this->lista();
            $url = base_url(array('home/comentarios'));
            $this->output->append_output('<script>window.history.replaceState("", "Hospital de olhos", "'. $url .'")</script>');
        }
    }

    public function upload_comentarios($value='')
    {

    	if(!empty($_FILES['comentario']['name'])){
    	    $this->load->library('upload', array(
    	            'upload_path' => FCPATH.'../public/imagens/comentarios',
    	            'allowed_types' => 'jpg|png|gif',
    	            'file_name' => hash('md5', uniqid(rand(0, 500)) . time() . rand(0, 500)),
    	            'max_size' => 8 * 1024,
    	            'remove_spaces' => TRUE
    	        ));

    	    if($this->upload->do_upload('comentario')){

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

    	    if($this->input->post('imagem_comentario')){
    	        if ($_FILES['comentario']['name'] != $this->input->post('imagem_comentario')) {
    	            $apagar = FCPATH.'../public/imagens/comentarios/' . $this->input->post('imagem_comentario');
    	            @unlink($apagar);
    	        }
    	    }
    	}else{
    	    if($this->input->post('imagem_comentario')){
    	        $file_data['file_name'] = $this->input->post('imagem_comentario');
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
    	            'upload_path' => FCPATH.'../public/imagens/comentarios',
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
    	        if ($_FILES['comentario']['name'] != $this->input->post('imagem_principal_img')) {
    	            $apagar = FCPATH.'../public/imagens/comentarios/' . $this->input->post('imagem_principal_img');
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


    public function editar_comentarios()
    {
        if($this->input->get('id')){
            $dados['comentario'] = $this->comentarios_model->get_comentario($this->input->get('id'));

            $this->montaTela('home/comentarios/formulario', $dados);
        }
    }

    public function excluir_comentarios(){
        if ($this->input->post('id')) {
          //  $comentario = $this->comentarios_model->get_comentario($this->input->post('id'));
            if($this->comentarios_model->excluir_comentario($this->input->post('id'))){
                $response['type'] = 'success';
                $response['title'] = 'Exclusão';
                $response['message'] = 'Banner excluído com sucesso!';
                echo json_encode($response);
            }else{
                $response['type'] = 'error';
                $response['title'] = 'Exclusão';
                $response['message'] = 'Ocorreu um erro ao excluír o comentario!';
                echo json_encode($response);
            }
        }
        return;
    }

}
