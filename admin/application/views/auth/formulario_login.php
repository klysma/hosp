<!DOCTYPE html>

<html lang="en" class="no-js">

	<head>



		<title>ADMIN - Hospital dos olhos do norte de minas</title>

		<!--All Meta tags-->

		<meta charset="utf-8">

	    <meta http-equiv="X-UA-Compatible" content="IE=edge">

	    <meta name="viewport" content="width=device-width, initial-scale=1">

      <link rel="shortcut icon" type="image/png" href="<?php echo base_url() ?>../assets/images/favicon.png"/>


		<!--Fonts Css Links-->



		<link href="<?php echo base_url() ?>../assets/css/font-awesome.min.css" rel="stylesheet" />

		<link href="<?php echo base_url() ?>../assets/css/ionicons.min.css" rel="stylesheet" />









		<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>../assets/css/flaticon.css" />



		<!--Bootstrap-->

		<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>../assets/css/bootstrap.min.css" />



		<link href="fonts/lato/stylesheet-lato.css" rel="stylesheet" />

		<link href="<?php echo base_url() ?>../assets/css/stylesheet-os.css" rel="stylesheet" />

		<link href="<?php echo base_url() ?>../assets/css/component-side-men.css" rel="stylesheet" />



		<!--[if IE]>

			<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>../assets/css/ie-only.css" />

		<![endif]-->





		<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>../assets/css/plug-css.css" />

		<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>../assets/css/style.css" />



		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->

	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

	    <!--[if lt IE 9]>

	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>

	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

	    <![endif]-->



	</head>



<body>




	<!--Main Content Wrapper-->


				<!--Top Navigation End-->







	    <!--Header End-->













		<!--Contact Content-->

		<section class="mcare-Contact1-form contact-page2">

			<div class="container">



				<div class="row">






					<!--Contact Form-->
          <div class="col-md-3">

          </div>

					<div align="center" class="col-md-6 padding-spacer-right">



						<img src="<?php echo base_url() ?>../assets/images/logo.png" alt="">

						<!-- Alert Masseges -->

						<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12" >

							<div class="alert alert-success hidden" id="contactSuccess">

								<strong>Success!</strong> Your message has been sent to us.

							</div>



							<div class="alert alert-danger hidden" id="contactError">

								<strong>Error!</strong> There was an error sending your message.

							</div>

						</div>



						<!--Form Start-->

						<form  action="<?php echo base_url(array('validar-login')) ?>" method="post">



							<!-- Name Text Box -->





							<!-- Email Text Box -->
                <div align="center" class="row">
                    <div class="col-md-2">

                    </div>
							<div class="col-md-8 col-lg-8 col-sm-8 col-xs-8 no-pad control-even" >

							    <div class="mcare-field control-group">



							         <input type="text" class="form-control" placeholder="CPF" name="cpf" id="cpf"/>

							    </div>

							</div>
              <div class="col-md-2">

              </div>
            </div>
							<!-- Email Text Box -->
                <div align="center" class="row">
                    <div class="col-md-2">

                    </div>
							<div class="col-md-8 col-lg-8 col-sm-8 col-xs-8 no-pad control-even" >

							    <div class="mcare-field control-group">



							         <input type="password" class="form-control" placeholder="Senha" name="senha" />

							    </div>

							</div>
              <div class="col-md-2">

              </div>
            </div>
							<!-- Email Text Box -->
                <div align="center" class="row">
                    <div class="col-md-2">

                    </div>
							<div class="col-md-8 col-lg-8 col-sm-8 col-xs-8 no-pad control-even" >

							    <div class="mcare-field control-group">



							          <button class="mcare-button-dark  pull-right mcare-button-med"  data-loading-text="Loading..." type="submit">Entrar</button>

							    </div>

							</div>
              <div class="col-md-2">

              </div>
            </div>






							<!-- Subject Text Box -->













						</form><!-- Form End -->



					</div>

          <div class="col-md-3">

          </div>

					<!--Important Contacts-->


				</div>

			</div>

		</section>











		<!--Google Map-->

		<section class="mcare-Contact1-map contact-page2">

			<div style="padding:0px!important" class="container-fluid">

				<h2 class="mcare-h2">Administração - Hospital dos olhos do Norte de Minas</h2>

				<div class="row">






				</div>

			</div>

		</section>
<script type="text/javascript" src="<?php echo base_url() ?>../assets/js/jquery-1.11.2.min.js"></script>
  <script src="<?php echo base_url() ?>../assets/js/jquery.mask.js"></script>

<script type="text/javascript">
$(document).ready(function(){

$('#cpf').mask('000.000.000-00', {reverse: true});

});
</script>
