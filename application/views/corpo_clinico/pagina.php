


	    <!--Side Menu-->

		<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right" id="cbp-spmenu-s2">



			<div class="doc-social-wrap">

				<i class="ion-android-share-alt share-social share-toggle"></i>

				<ul class="doc-social share">

					<li><a href="#"><i class="fa fa-facebook"></i></a></li>

					<li><a href="#"><i class="fa fa-twitter"></i></a></li>

					<li><a href="#"><i class="fa fa-google-plus"></i></a></li>

					<li><a href="#"><i class="fa fa-share-alt"></i></a></li>

					<li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>

				</ul>

			</div>

			<nav class="menu mCustomScrollbar light" data-mcs-theme="minimal-dark">



				<div class="menu-logo">

					<img src="<?php echo base_url() ?>assets/images/logo1.png" class="img-responsive" alt="">

				</div>



				<div class="side-men-buttons">

					<a href="#" class="men-but">PURCHASE</a>

					<a href="#" class="men-but">DEMOS</a>

				</div>



				<div class="side-menu-txt">

					<i class="fa fa-stethoscope"></i>

					<i class="fa fa-heartbeat back-icon"></i>

					<p>

						Competently incubate focused schemas with parallel functionalities. Synergistically be re-engineer ethical relationships whereas clicks-mortar technology. Dramatically and the harness.

					</p>

				</div>



				<div class="side-men-gal side-men-title">

					<h3>Doctors Gallery</h3>

					<ul>

						<li><img src="<?php echo base_url() ?>assets/images/meet-doc4.jpg" class="img-responsive" alt=""></li>

						<li><img src="<?php echo base_url() ?>assets/images/meet-doc3.jpg" class="img-responsive" alt=""></li>

						<li><img src="<?php echo base_url() ?>assets/images/meet-doc4.jpg" class="img-responsive" alt=""></li>

						<li><img src="<?php echo base_url() ?>assets/images/meet-doc3.jpg" class="img-responsive" alt=""></li>

						<li><img src="<?php echo base_url() ?>assets/images/meet-doc4.jpg" class="img-responsive" alt=""></li>

						<li><img src="<?php echo base_url() ?>assets/images/meet-doc3.jpg" class="img-responsive" alt=""></li>

					</ul>

				</div>



				<div class="side-men-cat side-men-title">

					<h3>Departments</h3>

					<a href="#">Dentel</a>

					<a href="#">Pediatric</a>

					<a href="#">Orthopedic</a>

					<a href="#">Sergion</a>

					<a href="#">Phisician</a>

					<a href="#">Psychologist</a>

					<a href="#">Dentel</a>

					<a href="#">Pediatric</a>

					<a href="#">Orthopedic</a>

					<a href="#">Sergion</a>

					<a href="#">Phisician</a>

					<a href="#">Psychologist</a>

				</div>



				<div class="icon-list">



				</div>

			</nav>

			<button class="close-button" id="showLeft2"><i class="ion-android-close"></i></button>

		</nav>





		<!--Bread Crumbs-->

		<section style="margin-bottom: 0px; " class="mcare-inner-header">

			<div class="container">

				<div class="row">

					<h1>

					Corpo Clínico

					</h1>

					<div class="crumbs">

						<span><a href="<?php echo base_url() ?>">Home</a></span>

						<span><a href="<?php echo base_url() ?>">Corpo Clinico</a></span>


					</div>

				</div>

			</div>

		</section>








    		<!--Team Section-->

    		<section  class="mcare-aboutus-team parallax1 parallax-section">

    			<div class="para-overlay-light">

    				<div class="container">

    					<div class="row">

    						<h2 class="mcare-h2">Conheça nossos <span>Doutores</span></h2>

    					</div>

    				</div>

    			</div>

    		</section>





    		<section class="mcare-aboutus-team-content">



    			<div class="container">

    				<div class="row">

    					<div class="col-md-12">



    						<div class="mcare-aboutclinic-tabs">

                           <?php foreach ($corpo_clinico as $key => $medico): ?>

                            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">

                                            <div class="meet-doc-box second-eff">

                                                <div class="meet-img-wrap">

                                                    <img src="<?php echo base_url() ?>public/imagens/corpo_clinico/<?php echo $medico->imagem ?>" class="img-responsive" alt="meet-doctors">

                                                    <div class="doc-info-part">

                                                        <a class="prof-mail" href="mailto:info@meditreat.com"><i class="ion-ios-email-outline"></i><?php echo $medico->email ?></a>

                                                        <p class="text-content"><?php echo $medico->texto ?></p>

                                                        <a href="#modal_corpo_clinico" data-toggle="modal" data-target="#modal_corpo_clinicol" class="prof-button"><button type="button" data-toggle="modal" data-target="#modal_corpo_clinico" style="    background: rgba(255, 0, 0, 0);border: none;" name="button">Ver Perfil</button></a>

                                                    </div>

                                                </div>

                                                <div class="doc-main-info">

                                                    <h4><?php echo $medico->titulo; ?></h4>
                                                    <h6>CRM: <?php echo $medico->crm ?></h6>

                                                    <span class="doc-role"><?php echo $medico->profissao ?></span>

                                                    <ul class="meet-doc-social">

                                                        <li><a href="#"><i class="fa fa-facebook meetdoc-social-icon"></i></a></li>

                                                        <li><a href="#"><i class="fa fa-twitter meetdoc-social-icon"></i></a></li>

                                                        <li><a href="#"><i class="fa fa-linkedin meetdoc-social-icon"></i></a></li>

                                                        <li><a href="#"><i class="fa fa-google-plus meetdoc-social-icon"></i></a></li>

                                                    </ul>

                                                </div>

                                            </div>

                                        </div>
                               
                           <?php endforeach ?>



    									<!--Meet The Doc Box-->

    							    	

    						</div>

    					</div>

    				</div>

    			</div>



    		</section>







    		<!--Team Section-->




















		<!--Client Logo Carousel-->




		<!-- Modal -->
<div class="modal fade" id="modal_corpo_clinico" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Jośe Da Silva Firmino</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
				<p>Formação: Universidade Federal de Catuaba</p>
				<p></p>
				<p></p>
				<p></p>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>

      </div>
    </div>
  </div>
</div>
