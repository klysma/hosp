<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Home extends TEC_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('home/noticias_model');
		$this->load->model('home/home_model');
		$this->load->model('home/secao_model');

		$this->set_menu_active(
			[
				'menu' => 'home',
				'submenu' => 'home-inicial'
			]
		);
	}

public function lista_secao1(){
  $this->set_menu_active(
    [
      'menu' => 'home',
      'submenu' => 'home-s1'
    ]
  );

  if($this->input->get('type')){
    $notification = new stdClass;
    $notification->type = $this->input->get('type');
    $notification->title = $this->input->get('title');
    $notification->message = $this->input->get('message');
    // $data['notification'] = $notification;
  }

  $pagina = $this->home_model->get_S1();

  $this->montaTela('home/secao1/formulario', compact('pagina', 'notification'));

}

public function secao(){
	$dados = $this->secao_model->get_secao();
	$this->set_menu_active(
		[
			'menu' => 'home',
			'submenu' => 'home-s1'
		]
	);
	if($this->input->get('type')){
    $notification = new stdClass;
    $notification->type = $this->input->get('type');
    $notification->title = $this->input->get('title');
    $notification->message = $this->input->get('message');
    // $data['notification'] = $notification;
  }
	$this->montaTela('home/secao/formulario', compact('dados', 'notification'));
}


public function salvar_secao(){

	$dados = array(
		'titulo1' => $this->input->post('titulo1'),
		'descricao1' => $this->input->post('descricao1'),
		'titulo2' => $this->input->post('titulo2'),
		'descricao2' => $this->input->post('descricao2'),
		'titulo3' => $this->input->post('titulo3'),
		'descricao3' => $this->input->post('descricao3'),
	);

	$id = null;
	if ($this->input->post('id')) {
		$id = $this->input->post('id');
	}

	if($this->secao_model->salvar_secao($dados, $id)){
		$_GET['type'] = 'success';
		$_GET['title'] = 'Atualização';
		$_GET['message'] = 'Seção atualizada com sucesso!';

	}else{
		$_GET['type'] = 'error';
		$_GET['title'] = 'Atualização';
		$_GET['message'] = 'Erro ao atualizar Sessão!';
	}

	$this->secao();
	$url = base_url(array('home/secao'));
	$this->output->append_output('<script>window.history.replaceState("", "Hosp dos Olhos", "'. $url .'")</script>');

}


public function lista_secao2(){
  $this->set_menu_active(
    [
      'menu' => 'home',
      'submenu' => 'home-s2'
    ]
  );

  if($this->input->get('type')){
    $notification = new stdClass;
    $notification->type = $this->input->get('type');
    $notification->title = $this->input->get('title');
    $notification->message = $this->input->get('message');
    // $data['notification'] = $notification;
  }

  $elementos = $this->home_model->get_lista_S2();

  $this->montaTela('home/secao2/lista', compact('elementos', 'notification'));
}

public function lista_secao3(){
  $this->set_menu_active(
    [
      'menu' => 'home',
      'submenu' => 'home-s3'
    ]

  );

  if($this->input->get('type')){
    $notification = new stdClass;
    $notification->type = $this->input->get('type');
    $notification->title = $this->input->get('title');
    $notification->message = $this->input->get('message');
    // $data['notification'] = $notification;
  }

  $elementos = $this->home_model->get_lista_S3();

  $this->montaTela('home/secao3/lista', compact('elementos', 'notification'));
}

public function novo_secao2(){

	$this->set_menu_active(
		[
			'menu' => 'home',
			'submenu' => 'home-s2'
		]
	);

	if($this->input->get('type')){
		$notification = new stdClass;
		$notification->type = $this->input->get('type');
		$notification->title = $this->input->get('title');
		$notification->message = $this->input->get('message');
		// $data['notification'] = $notification;
	}

		$dados = $this->home_model->get_S2();


	$this->montaTela('home/secao2/formulario', compact('dados', 'notification'));
}


public function novo_secao3(){

	$this->set_menu_active(
		[
			'menu' => 'home',
			'submenu' => 'home-s3'
		]
	);

	if($this->input->get('type')){
		$notification = new stdClass;
		$notification->type = $this->input->get('type');
		$notification->title = $this->input->get('title');
		$notification->message = $this->input->get('message');
		// $data['notification'] = $notification;
	}

	if($id = $this->input->get('id')){
		$dados = $this->home_model->get_S3($id);
	}

	$this->montaTela('home/secao3/formulario', compact('dados', 'notification'));
}


public function salvar_secao1(){

  $this->load->helper('text');
  $upload = $this->upload_imagem();

  $dados = [
    'texto' => $this->input->post('texto'),
    'imagem' => $upload['file_name'],
    'link' => $this->input->post('link'),
  ];

  $id = NULL;

  //editar agenda
  if($this->input->post('id')){
    $id = $this->input->post('id');
  }

  if($this->home_model->salvar_secao1($dados, $id))
  {
      $_GET['type'] = 'success';
      $_GET['title'] = 'Atualização';
      $_GET['message'] = 'Seção atualizada com sucesso!';

  }
  else
  {

    $_GET['type'] = 'error';
    $_GET['title'] = 'Atualização';
    $_GET['message'] = 'Ocorreu um erro ao atualizar a seção!';
  }
  $this->lista_secao1();
  $url = base_url(array('home/secao1'));
  $this->output->append_output('<script>window.history.replaceState("", "Hosp dos Olhos", "'. $url .'")</script>');
}


public function salvar_secao2(){

  $this->load->helper('text');
  $upload = $this->upload_imagem();

  $dados = [
    'texto' => $this->input->post('texto'),
    'titulo' => $this->input->post('titulo'),
    'imagem' => $upload['file_name'],

  ];

  $id = NULL;

  //editar agenda
  if($this->input->post('id')){
    $id = $this->input->post('id');
  }

  if($this->home_model->salvar_secao2($dados, $id))
  {
      $_GET['type'] = 'success';
      $_GET['title'] = 'Atualização';
      $_GET['message'] = 'Seção atualizada com sucesso!';

  }
  else
  {

    $_GET['type'] = 'error';
    $_GET['title'] = 'Atualização';
    $_GET['message'] = 'Ocorreu um erro ao atualizar a seção!';
  }
  $this->novo_secao2();
  $url = base_url(array('home/secao2'));
  $this->output->append_output('<script>window.history.replaceState("", "Hosp dos Olhos", "'. $url .'")</script>');
}


public function salvar_secao3(){

  $this->load->helper('text');
  //$upload = $this->upload_imagem();

  $dados = [

    'titulo' => $this->input->post('titulo'),
    'texto' => $this->input->post('texto'),
    'icone' => $this->input->post('icone'),
    //'imagem' => $upload['file_name'],

  ];

  $id = NULL;

  //editar agenda
  if($this->input->post('id')){
    $id = $this->input->post('id');
  }

  if($this->home_model->salvar_secao3($dados, $id))
  {
      $_GET['type'] = 'success';
      $_GET['title'] = 'Atualização';
      $_GET['message'] = 'Seção atualizada com sucesso!';

  }
  else
  {

    $_GET['type'] = 'error';
    $_GET['title'] = 'Atualização';
    $_GET['message'] = 'Ocorreu um erro ao atualizar a seção!';
  }
  $this->lista_secao3();
  $url = base_url(array('home/secao3'));
  $this->output->append_output('<script>window.history.replaceState("", "Hosp dos Olhos", "'. $url .'")</script>');
}

public function upload_imagem($value='')
{

  if(!empty($_FILES['imagem']['name'])){
    $this->load->library('upload', [
        'upload_path' => FCPATH.'../public/imagens/home',
        'allowed_types' => 'jpg|png|gif',
        'file_name' => hash('md5', uniqid(rand(0, 500)) . time() . rand(0, 500)),
        'max_size' => 8 * 1024,
        'remove_spaces' => TRUE
      ]
    );
    if ($this->upload->do_upload('imagem')){
      $file_data = $this->upload->data();
      $this->load->library('image_lib', [
          'image_library' => 'gd2',
          'source_image' => $file_data['full_path'],
          'create_thumb' => FALSE,
          'maintain_ratio' => TRUE,
          'quality' => '100%'
        ]
      );
      $this->image_lib->resize();
    }

    if($this->input->post('imagem_secao')){
      if ($_FILES['imagem']['name'] != $this->input->post('imagem_secao')) {
        $apagar = FCPATH.'../public/imagens/home/' . $this->input->post('imagem_secao');
        @unlink($apagar);
      }
    }
  }else{
    if($this->input->post('imagem_secao')){
      $file_data['file_name'] = $this->input->post('imagem_secao');
    }else{
      $file_data['file_name'] = '';
    }
  }
  return $file_data;
}


public function excluir_secao2(){
		if ($id = $this->input->post('id')) {
				$elemento = $this->home_model->get_S2($id);
				if($this->home_model->excluir_S2($this->input->post('id'))){
						$apagar = FCPATH.'../public/imagens/home/' . $elemento->imagem;
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

public function excluir_secao3(){
		if ($id = $this->input->post('id')) {
				$elemento = $this->home_model->get_S3($id);
				if($this->home_model->excluir_S3($this->input->post('id'))){
						$apagar = FCPATH.'../public/imagens/home/' . $elemento->imagem;
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
