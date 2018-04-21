<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Inicial extends TEC_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('home/noticias_model');
		$this->load->model('home/Inicial_model');

		$this->set_menu_active(
			[
				'menu' => 'home',
				'submenu' => 'home-inicial'
			]
		);
	}

	function salvar_conteudo(){
		$this->load->helper('text');
		$upload = $this->upload_imagem();
		$dados = [
			'titulo' => $this->input->post('titulo'),
			'nome_url' => url_title(convert_accented_characters($this->input->post('titulo')), '-', TRUE),
			'imagem' => $upload['file_name'],
			'autor' => $this->input->post('autor'),
			'texto_breve' => $this->input->post('texto_breve'),
			'texto' => $this->input->post('texto')
		];

		$id = NULL;

		//editar agenda
		if($this->input->post('id')){
			$id = $this->input->post('id');
		}else{
			$dados['data'] = date('Y-m-d H:i:s');
		}

		if($this->noticias_model->salvar_noticia($dados, $id))
		{
			$_GET['type'] = 'success';
			if($id){
				$_GET['title'] = 'Atualização';
				$_GET['message'] = 'Notícia atualizado com sucesso!';
			}else{
				$_GET['title'] = 'Cadastro';
				$_GET['message'] = 'Notícia cadastrado com sucesso!';
			}
		}
		else
		{
			$_GET['type'] = 'error';
			if($id){
				$_GET['title'] = 'Atualização';
				$_GET['message'] = 'Ocorreu um erro ao atualizar o notícia!';
			}else{
				$_GET['title'] = 'Cadastro';
				$_GET['message'] = 'Ocorreu um erro ao cadastrar o notícia!';
			}
		}
		$this->lista();
		$url = base_url(array('home/noticias'));
		$this->output->append_output('<script>window.history.replaceState("", "Dr Bruno Laughton", "'. $url .'")</script>');
	}

	public function upload_imagem($value='')
	{
		if(!empty($_FILES['imagem']['name'])){
			$this->load->library('upload', [
					'upload_path' => FCPATH.'../public/imagens/noticias',
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
						'width' => 1200,
						'height' => 600
					]
				);
				$this->image_lib->resize();
			}

			if($this->input->post('imagem_noticia')){
				if ($_FILES['imagem']['name'] != $this->input->post('imagem_noticia')) {
					$apagar = FCPATH.'../public/imagens/noticias/' . $this->input->post('imagem_noticia');
					@unlink($apagar);
				}
			}
		}else{
			if($this->input->post('imagem_noticia')){
				$file_data['file_name'] = $this->input->post('imagem_noticia');
			}else{
				$file_data['file_name'] = '';
			}
		}
		return $file_data;
	}

	public function editar_tela()
	{
			$dados['pagina'] = $this->Inicial_model->get_conteudo();

			$this->montaTela('home/inicio/formulario', $dados);

	}


	public function salvar_inicial(){

		$dados = [
			'texto_S1' => $this->input->post('texto_S1'),
			'link_S1' => $this->input->post('link_S1'),
			'texto_S2_1' => $this->input->post('texto_S2_1'),
			'texto_S2_2' => $this->input->post('texto_S2_2'),
			'texto_S2_3' => $this->input->post('texto_S2_3'),
		];


		
		$this->Inicial_model->salvar_home($dados, $this->input->post('id'));
	}



}
