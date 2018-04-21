<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'Admin';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

//->Admin login
$route['login']                                     = "Admin/login";
$route['validar-login']                             = "Admin/validar_login";
$route['logout']                                    = "Admin/logout";



//Admin home site
$route['home/banners'] 								= 'home/Banners';
$route['home/banners/novo'] 						= 'home/Banners/novo_banner';
$route['home/banners/editar'] 						= 'home/Banners/editar_banner';
$route['home/banners/salvar'] 						= 'home/Banners/salvar_banner';
$route['home/banners/excluir'] 						= 'home/Banners/excluir_banner';


//Admin Comentarios
$route['home/comentarios'] 								= 'home/Comentarios';
$route['home/comentarios/novo'] 						= 'home/Comentarios/novo_comentarios';
$route['home/comentarios/editar'] 						= 'home/Comentarios/editar_comentarios';
$route['home/comentarios/salvar'] 						= 'home/Comentarios/salvar_comentarios';
$route['home/comentarios/excluir'] 						= 'home/Comentarios/excluir_comentarios';

//Admin home noticias
$route['home/noticias'] 							= 'home/noticias';
$route['home/noticias/nova'] 						= 'home/noticias/novo_noticia';
$route['home/noticias/editar'] 						= 'home/noticias/editar_noticia';
$route['home/noticias/salvar'] 						= 'home/noticias/salvar_noticia';
$route['home/noticias/excluir'] 					= 'home/noticias/excluir_noticia';

//Admin Home Inicial
$route['home/inicial'] 					= 'home/Inicial/editar_tela';
$route['home/salvar/inicial'] 					= 'home/Inicial/salvar_inicial';


$route['home/secao']  = 'home/Home/secao';
$route['home/salvar/secao'] = 'home/Home/salvar_secao';


//S1
$route['home/secao1'] 					= 'home/Home/lista_secao1';
$route['home/salvar/secao1'] 					= 'home/Home/salvar_secao1';
//S2
$route['home/secao2'] 					= 'home/Home/novo_secao2';
$route['home/secao2/novo'] 					= 'home/Home/novo_secao2';
$route['home/salvar/secao2'] 					= 'home/Home/salvar_secao2';
$route['home/editar/secao2'] 					= 'home/Home/novo_secao2';
$route['home/excluir/secao2'] 					= 'home/Home/excluir_secao2';
//S3
$route['home/secao3'] 					  = 'home/Home/lista_secao3';
$route['home/secao3/novo'] 					= 'home/Home/novo_secao3';
$route['home/salvar/secao3'] 					= 'home/Home/salvar_secao3';
$route['home/editar/secao3'] 					= 'home/Home/novo_secao3';
$route['home/excluir/secao3'] 					= 'home/Home/excluir_secao3';

//CORPO CLÍNICO
$route['corpo-clinico'] 					  = 'corpo_clinico/Corpo_clinico/lista';
$route['corpo-clinico/novo'] 					= 'corpo_clinico/Corpo_clinico/novo';
$route['corpo-clinico/salvar'] 					= 'corpo_clinico/Corpo_clinico/salvar';
$route['corpo-clinico/editar'] 					= 'corpo_clinico/Corpo_clinico/editar';
$route['corpo-clinico/excluir'] 					= 'corpo_clinico/Corpo_clinico/excluir';

//Especialidades
$route['especialidades'] 					  = 'especialidades/Especialidades/lista';
$route['especialidades/novo'] 					= 'especialidades/Especialidades/novo';
$route['especialidades/salvar'] 					= 'especialidades/Especialidades/salvar';
$route['especialidades/editar'] 					= 'especialidades/Especialidades/editar';
$route['especialidades/excluir'] 					= 'especialidades/Especialidades/excluir';

//Clinica
$route['clinica'] 					  = 'clinica/Clinica/editar';
$route['clinica/novo'] 					= 'clinica/Clinica/novo';
$route['clinica/salvar'] 					= 'clinica/Clinica/salvar';
$route['clinica/editar'] 					= 'clinica/Clinica/editar';
$route['clinica/excluir'] 					= 'clinica/Clinica/excluir';
$route['clinica/item/excluir'] 					= 'clinica/Clinica/excluir_item';




//Admin agenda
$route['agenda'] 									= 'Agenda';
$route['agenda/nova'] 								= 'Agenda/nova_agenda';
$route['agenda/editar'] 							= 'Agenda/editar_agenda';
$route['agenda/salvar'] 							= 'Agenda/salvar_agenda';
$route['agenda/excluir'] 							= 'Agenda/excluir_agenda';

//Admin convenios
$route['convenios'] 								= 'Convenios';
$route['convenios/novo'] 							= 'Convenios/novo_convenio';
$route['convenios/editar'] 							= 'Convenios/editar_convenio';
$route['convenios/salvar'] 							= 'Convenios/salvar_convenio';
$route['convenios/excluir'] 						= 'Convenios/excluir_convenio';

//Admin cirurgias
$route['cirurgias'] 								= 'cirurgias/Cirurgias';
$route['cirurgias/nova'] 							= 'cirurgias/Cirurgias/nova_cirurgia';
$route['cirurgias/editar'] 							= 'cirurgias/Cirurgias/editar_cirurgia';
$route['cirurgias/salvar'] 							= 'cirurgias/Cirurgias/salvar_cirurgia';
$route['cirurgias/excluir'] 						= 'cirurgias/Cirurgias/excluir_cirurgia';

$route['cirurgias/categorias']						= 'cirurgias/Categorias/index';
$route['cirurgias/categorias/nova'] 				= 'cirurgias/Categorias/nova_categoria';
$route['cirurgias/categorias/editar'] 				= 'cirurgias/Categorias/editar_categoria';
$route['cirurgias/categorias/salvar'] 				= 'cirurgias/Categorias/salvar_categoria';
$route['cirurgias/categorias/excluir'] 				= 'cirurgias/Categorias/excluir_categoria';

//Admin procedimentos estéticos
$route['procedimentos-esteticos'] 					= 'Procedimentos_esteticos';
$route['procedimentos-esteticos/novo'] 				= 'Procedimentos_esteticos/novo_procedimentos_estetico';
$route['procedimentos-esteticos/editar'] 			= 'Procedimentos_esteticos/editar_procedimentos_estetico';
$route['procedimentos-esteticos/salvar'] 			= 'Procedimentos_esteticos/salvar_procedimentos_estetico';
$route['procedimentos-esteticos/excluir'] 			= 'Procedimentos_esteticos/excluir_procedimentos_estetico';

//admin agendamentos
$route['agendamentos'] 									= 'Agendamentos';

//Admin newsletter
$route['newsletter'] 								= 'newsletter';
