<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hosp dos Olhos</title>
    <!-- Mainly scripts -->

    <link rel="shortcut icon" href="<?php echo base_url() ?>../assets/images/favicon.png">

    <link href="<?php echo base_url() ?>assets/css/bootstrap.min.css" rel="stylesheet">

    <link href="<?php echo base_url() ?>assets/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <link href="<?php echo base_url() ?>assets/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="<?php echo base_url() ?>assets/css/plugins/dataTables/datatables.min.css" rel="stylesheet">
    <link href="<?php echo base_url() ?>assets/css/plugins/blueimp/css/blueimp-gallery.min.css" rel="stylesheet">

    <link href="<?php echo base_url() ?>assets/css/animate.css" rel="stylesheet">

    <link href="<?php echo base_url() ?>assets/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="<?php echo base_url() ?>assets/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">


    <link href="<?php echo base_url() ?>assets/css/plugins/iCheck/custom.css" rel="stylesheet">

    <link href="<?php echo base_url() ?>assets/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">

    <link href="<?php echo base_url() ?>assets/css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">

    <!-- Sweet Alert -->
    <link href="<?php echo base_url() ?>assets/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

    <link href="<?php echo base_url() ?>assets/css/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
    <link href="<?php echo base_url() ?>assets/css/plugins/fullcalendar/fullcalendar.print.css" rel='stylesheet' media='print'>

    <link href="<?php echo base_url() ?>assets/css/style.css" rel="stylesheet">

    <script src="<?php echo base_url() ?>assets/js/jquery-2.1.1.js"></script>
    <script src="<?php echo base_url() ?>assets/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url() ?>assets/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<?php echo base_url() ?>assets/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <script src="<?php echo base_url() ?>assets/js/plugins/dataTables/datatables.min.js"></script>

    <script src="<?php echo base_url() ?>assets/js/plugins/jasny/jasny-bootstrap.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<?php echo base_url() ?>assets/js/plugins/toastr/toastr.min.js"></script>
    <script src="<?php echo base_url() ?>assets/js/inspinia.js"></script>
    <script src="<?php echo base_url() ?>assets/js/plugins/pace/pace.min.js"></script>
    <!-- Sweet alert -->
    <script src="<?php echo base_url() ?>assets/js/plugins/sweetalert/sweetalert.min.js"></script>

    <script src="<?php echo base_url() ?>assets/js/plugins/iCheck/icheck.min.js"></script>
    <script src="<?php echo base_url() ?>assets/js/meio.mask.js"></script>

    <script src="<?php echo base_url() ?>assets/js/plugins/summernote/summernote.min.js"></script>

    <!-- Jquery Validate -->
    <script src="<?= base_url() ?>assets/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="<?= base_url() ?>assets/js/plugins/validate/translate.messages.js"></script>

    <script src="<?php echo base_url() ?>assets/js/plugins/fullcalendar/moment.min.js"></script>
    <script src="<?php echo base_url() ?>assets/js/plugins/fullcalendar/fullcalendar.min.js"></script>

    <script src="<?php echo base_url() ?>assets/js/plugins/blueimp/jquery.blueimp-gallery.min.js"></script>

    <script type="text/javascript">
        $(function(){
            $('#side-menu').find('.active').removeClass('active');
            $('#<?php echo (isset($active_menu)) ? $active_menu['menu'] : '' ?>').addClass('active');
            $('#<?php echo (isset($active_menu)) ? $active_menu['submenu'] : '' ?>').addClass('active').parent('ul').addClass('collapse in');
        });
    </script>
</head>

<body>

    <div id="wrapper">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li id="home">
                        <a href="#"><i class="fa fa-home"></i> <span class="nav-label">Home</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li id="home-banners"><a href="<?php echo base_url(['home', 'banners']) ?>">Banners</a></li>
                            <li id="home-noticias"><a href="<?php echo base_url(['home', 'noticias']) ?>">Notícias</a></li>
                            <li id="home-s1"><a href="<?php echo base_url(['home', 'secao']) ?>">Seção 1</a></li>
                            <li id="home-s2"><a href="<?php echo base_url(['home', 'secao2']) ?>">Seção 2</a></li>
                            <li id="home-s3"><a href="<?php echo base_url(['home', 'secao3']) ?>">Seção 3</a></li>
                            <li id="home-comentarios"><a href="<?php echo base_url(['home', 'comentarios']) ?>">Comentarios</a></li>
                        </ul>
                    </li>
                    <!-- <li id="agenda">
                        <a href="<?php echo base_url(['agenda']) ?>">
                        	<i class="fa fa-calendar"></i>
                        	<span class="nav-label">Agenda</span>
                        </a>
                    </li> -->
                    <li id="a-clinica">
                        <a href="<?php echo base_url(['clinica']) ?>">
                        	<i class="fa fa-hospital-o"></i>
                        	<span class="nav-label">A Clínica</span>
                        </a>
                    </li>
                     <li id="convenios">
                        <a href="<?php echo base_url(['convenios']) ?>">
                        	<i class="fa fa-calendar"></i>
                        	<span class="nav-label">Convênios</span>
                        </a>
                    </li>
                    <li id="agendamentos">
                        <a href="<?php echo base_url(['agendamentos']) ?>">
                        	<i class="fa fa-calendar-check-o"></i>
                        	<span class="nav-label">Agendamentos</span>
                        </a>
                    </li> <?php /*
                     <li id="cirurgias">
                        <a href="#"><i class="fa fa-home"></i> <span class="nav-label">Cirurgias</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li id="cirurgias-cirurgia"><a href="<?php echo base_url(['cirurgias']) ?>">Cirurgia</a></li>
                            <li id="cirurgias-categorias"><a href="<?php echo base_url(['cirurgias', 'categorias']) ?>">Categorias</a></li>
                        </ul>
                    </li>
                     ?><li id="cirurgia">
                        <a href="<?php echo base_url(['procedimentos-esteticos']) ?>"><i class="fa fa-medkit"></i> <span class="nav-label">Procedimentos estéticos</span></a>
                    </li><?php */ ?>
                    <li id="corpo-clinico">
                       <a href="<?php echo base_url(['corpo-clinico']) ?>"><i class="fa fa-users"></i> <span class="nav-label">Corpo Clínico</span></a>
                    </li>
                    <li id="especialidades">
                       <a href="<?php echo base_url(['especialidades']) ?>"><i class="fa fa-heartbeat"></i> <span class="nav-label">Especialidades</span></a>
                    </li>
                    <!-- <li id="newsletter">
                        <a href="<?php echo base_url(['newsletter']) ?>">
                        	<i class="fa fa-envelope"></i> <span class="nav-label">Newsletter</span>
                        </a>
                    </li> -->
                    <!-- <li id="loja">
                        <a href="#"><i class="fa fa-shopping-bag"></i> <span class="nav-label">Loja</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li id="loja-produtos"><a href="<?php echo base_url(array('loja', 'produtos')) ?>">Produtos</a></li>
                            <li id="loja-categorias"><a href="<?php echo base_url(array('loja', 'categorias')) ?>">Categorias</a></li>
                            <li id="loja-clientes"><a href="<?php echo base_url(array('loja', 'clientes')) ?>">Clientes</a></li>
                            <li id="loja-pedidos"><a href="<?php echo base_url(array('loja', 'pedidos')) ?>">Pedidos</a></li>
                        </ul>
                    </li> -->
                </ul>
            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                       <!--  <form role="search" class="navbar-form-custom" action="search_results.html">
                            <div class="form-group">
                                <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                            </div>
                        </form> -->
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                            <span class="m-r-sm text-muted welcome-message"><strong>Bem-vindo</strong> <?php echo $this->auth->get_nome_usuario() ?></span>
                        </li>
                        <!-- <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                            </a>
                            <ul class="dropdown-menu dropdown-messages">
                                <li>
                                    <div class="dropdown-messages-box">
                                        <a href="profile.html" class="pull-left">
                                            <img alt="image" class="img-circle" src="<?php echo base_url() ?>assets/img/a7.jpg">
                                        </a>
                                        <div class="media-body">
                                            <small class="pull-right">46h ago</small>
                                            <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                            <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="dropdown-messages-box">
                                        <a href="profile.html" class="pull-left">
                                            <img alt="image" class="img-circle" src="<?php echo base_url() ?>assets/img/a4.jpg">
                                        </a>
                                        <div class="media-body ">
                                            <small class="pull-right text-navy">5h ago</small>
                                            <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                            <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="dropdown-messages-box">
                                        <a href="profile.html" class="pull-left">
                                            <img alt="image" class="img-circle" src="<?php echo base_url() ?>assets/img/profile.jpg">
                                        </a>
                                        <div class="media-body ">
                                            <small class="pull-right">23h ago</small>
                                            <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                            <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="text-center link-block">
                                        <a href="mailbox.html">
                                            <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                            </a>
                            <ul class="dropdown-menu dropdown-alerts">
                                <li>
                                    <a href="mailbox.html">
                                        <div>
                                            <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                            <span class="pull-right text-muted small">4 minutes ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="profile.html">
                                        <div>
                                            <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                            <span class="pull-right text-muted small">12 minutes ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="grid_options.html">
                                        <div>
                                            <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                            <span class="pull-right text-muted small">4 minutes ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="text-center link-block">
                                        <a href="notifications.html">
                                            <strong>See All Alerts</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li> -->
                        <li>
                            <a href="<?php echo base_url(array('logout')) ?>">
                                <i class="fa fa-sign-out"></i> Sair
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
