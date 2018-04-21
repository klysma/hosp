


		<section class="banner-slit demo-2 clearfix">
            <div id="slider" class="sl-slider-wrapper">
				<div class="sl-slider">

					<?php foreach ($banners as $key => $banner): ?>
						<div class="sl-slide sl-slide-horizontal" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">

							<div class="sl-slide-inner">

								<div class="bg-img bg-img-1" style="background-image: url(<?php echo base_url() ?>public/imagens/banners/<?php echo $banner->imagem ?>);"></div>

								<div class="ban-cotent">
									<div class="ban1-left">

										<span class="ban1-txt1">

											<?php echo $banner->titulo_destaque ?>

										</span><br>

										<span class="ban1-txt2">

											<?php echo $banner->subtitulo ?>

										</span><br>

										<span class="ban1-txt3">

											O principal hospital de saúde ocular do norte de minas

										</span><br>

										<?php if($banner->telefone): ?>

										<span class="ban1-contact">

											<em>Ligue agora</em><br>

											<?php echo $banner->telefone ?>

										</span>
									<?php endif; ?>

									</div>
									<div class="right-img img-inn1"><img style="" src="<?php echo base_url() ?>public/imagens/banners/<?php echo $banner->imagem_principal ?>" class="img-responsive" alt="Banner fotos imagem"></div>

								</div>

							</div>

						</div>
					<?php endforeach; ?>
				</div><!-- /sl-slider -->
				<nav id="nav-arrows" class="nav-arrows">

					<span class="nav-arrow-prev">Anterior</span>

					<span class="nav-arrow-next">Próximo</span>
				</nav>
			</div><!-- /slider-wrapper -->
		</section>

		<!--Head Icon Boxes wrap-->

		<section class="mcare-text-ibox1-wrap"
			<div class="container">
				<div class="row">
					<!--Icon Box-->
					<div style="padding-left: 30px;" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="mcare-text-ibox1 first-info-ibox">
							<!-- <span>Equipe super</span><br>CAPACITADA -->
							<h1 class="mcare-main-title"><?php echo $secao->titulo1 ?></h1>
							<p class="main-content ibox1-content text-content">
							<?php echo $secao->descricao1 ?>
							</p>
						</div>
					</div>
					<!--Icon Box-->
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
						<div class="mcare-text-ibox1">

							<h3><i class="fa fa-trophy"></i><?php echo $secao->titulo2 ?></h3>

							<p class="main-content ibox1-content text-content">

								<?php echo $secao->descricao2 ?>.

							</p>

						</div>

					</div>



					<!--Icon Box-->

					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">

						<div class="mcare-text-ibox1">

							<h3><i class="mcare-flaticon-nurse4"></i><?php echo $secao->titulo3 ?></h3>

							<p class="main-content ibox1-content text-content">

								Super organizado, atendimento exepcional, procedimentos com aparelhos modernos, higienização exelente, tudo de melhor para você e sua família.

							</p>

						</div>

					</div>



				</div>

			</div>

		</section>

		<!--Icon Boxes 1 End-->
		<!--Call To Action 1-->

		<section style="background:rgba(0, 0, 0, 0.10) url(<?php echo base_url() ?>public/imagens/home/<?php echo $secao2->imagem ?>) repeat" class="mcare-caction1-wrap video_section" data-vide-bg="vid/ocean" data-vide-options="position: 0% 50%">

			<div class="para-overlay">

				<div class="container">

					<div class="row">

						<div class="col-md-12">

							<div class="caction1-inner">
								<h2 class="caction1-text">
									<em><?php echo $secao2->texto ?></em><br>
								<?php echo $secao2->titulo ?>
								</h2>

								<a href="#" class="mcare-button button1" data-toggle="modal" data-target="#app-modal">PRÉ AGENDAR</a>

								<a href="#" class="mcare-button button2">CONTATO</a>

							</div>

						</div>

					</div>

				</div>

			</div>

		</section>









		<!--Content Icon Boxes wrap-->

		<section class="mcare-text-ibox2-wrap ss-style-triangles sep-section">

			<div class="container">

				<div class="row">



					<!--Icon Box-->
					<?php foreach ($secao3 as $key => $item): ?>

					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="pic pic-3d">
							<div class="mcare-text-ibox2 border-effect">
								<div class="">
									<div class="ibox2-icon">
										<i class="<?php echo $item->icone ?>"></i>
										<span class="back-icon"><i class="<?php echo $item->icone ?>"></i></span>
									</div>
									<h4><?php echo $item->titulo ?></h4>
									<p class="main-content ibox2-content text-content">
										<?php echo $item->texto ?>
									</p>
								</div>
							</div>
					    </div>
					</div>

				<?php endforeach; ?>



				</div>

			</div>

		</section>

		<!--Icon Boxes 1 Ens-->


		<!--Corpo Clinico-->

		<section class="mcare-aboutclinic">



			<div class="container">

				<div class="row">

					<div class="col-md-12">



						<div class="mcare-aboutclinic-tabs">



							<div role="tabpanel">



							  <!-- Nav tabs -->




							  <!-- Tab panes -->

							  <div class="tab-content">



								<!--Meet The Doctors -->

										<section class="sc-inner clearfix">

											<div class="container">



												<!--News Carousel-->

												<div class="row">

													<h2 class="mcare-h2">Corpo Clínico</h2>

													<div class="mcare-news-inner owl-carousel">




														<?php foreach ($corpo_clinico as $key => $medico): ?>

														<div class="">

															<div class="col-md-12">

			    							    		<div class="meet-doc-box second-eff">

			    							    			<div class="meet-img-wrap">

			    							    				<img src="<?php echo base_url() ?>public/imagens/corpo_clinico/<?php echo $medico->imagem ?>" class="img-responsive" alt="meet-doctors">

			    							    				<div class="doc-info-part">

			    							    					<a class="prof-mail" href="mailto:info@meditreat.com"><i class="ion-ios-email-outline"></i>info@meditreat.com</a>

			    							    					<p class="text-content">"<?php echo $medico->texto ?>"</p>

			    							    					<!-- <a href="#modal_corpo_clinico" data-toggle="modal" data-target="#modal_corpo_clinicol" class="prof-button"><button type="button" data-toggle="modal" data-target="#modal_corpo_clinico" style="    background: rgba(255, 0, 0, 0);border: none;" name="button">Ver Perfil</button></a> -->

			    							    				</div>

			    							    			</div>

			    							    			<div class="doc-main-info">

			    								    			<h4><?php echo $medico->titulo ?> </h4>
			                                                    <h6>CRM: <?php echo $medico->crm ?></h6>

			    								    			<span class="doc-role"><?php echo $medico->profissao ?> </span>
																		<div align="center" class="">

			    								    			<button style="background:#1693B8;color:white; width:50%" type="button" class="form-control" name="button">Ver Perfil</button>
																	</div>

			    							    			</div>

			    							    		</div>

			    							    	</div>
														</div>


													<?php endforeach; ?>



													</div>

												</div>

												<!--News Carousel End-->





											</div>

										</section>



							    <div class="mcare-aboutclinic-tabs">





    									<!--Meet The Doc Box-->







    						</div>





							</div>

						</div>

					</div>

				</div>

			</div>

		</section>


		<!--Video section background-->

		<section class="mcare-caction1-wrap video_section" data-vide-bg="vid/ocean" data-vide-options="position: 0% 50%">



			<div class="para-overlay">

				<div class="container-fluid">

					<div class="row">



						<div class="col-md-6 no-pad">

							<div class="mcare-sid-cac">

								<h4 class="dept-title">

									Cirurgias a Laser

								</h4>

								<div class="side-cac-content main-block clearfix">



									<p>

										Somos o único Hospital do Norte de Minas a oferecer a tecnologia a laser para nossos pacientes e para todos os oftalmologista capacitados na técnica.

									</p>

									<!--<img src="<?php echo base_url() ?>assets/images/eye.jpg" class="img-responsive" alt=""> -->

								</div>

								<div class="row">

									<div class="col-md-6">

										<div class="feature-wrap"></div>

									</div>

									<div class="col-md-6">



									</div>



								</div>

							</div>

						</div>



						<!--Meditreat Accordion-->

						<div class="col-md-6 no-pad">

							<div class="mcare-departments">

							<h4 class="dept-title">

								Conheca nossas Cirurgias

							</h4>



							<div class="department-collapse">



								<div class="panel-group accordion-caret" id="accordion" role="tablist" aria-multiselectable="true">



								  <div class="panel panel-default">

								    <div class="panel-heading" role="tab" id="headingOne">

								      <h4 class="panel-title">

								        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="true" aria-controls="collapse1">

								         <i class="mcare-flaticon-hospital32"></i> Cirurgia refrativa Personalizada

								        </a>

								      </h4>

								    </div>

								    <div id="collapse1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">

								      <div class="panel-body text-content">

								        A cirurgia refrativa é o nome dado às cirurgias para corrigir os erros refrativos (miopia, hipermetropia, astigmatismo e presbiopia). Por deﬁnição é indicada quando o paciente tem dependência dos óculos e com a cirurgia eliminará ou diminuirá está dependência.

								      </div>

								    </div>

								  </div>



								  <div class="panel panel-default">

								    <div class="panel-heading" role="tab" id="headingTwo">

								      <h4 class="panel-title">

								        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false" aria-controls="collapse2">

								         <i class="mcare-flaticon-dentist13"></i> Cirurgia de catarata

								        </a>

								      </h4>

								    </div>

								    <div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">

								      <div class="panel-body text-content">

								        A Cirurgia de Catarata a Laser Personalizada é realizada com tecnologia avançada, fazendo o uso de equipamentos de ponta como o LenSx Laser System e o Centurion System.

								      </div>

								    </div>

								  </div>



								  <div class="panel panel-default">

								    <div class="panel-heading" role="tab" id="headingThree">

								      <h4 class="panel-title">

								        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse3" aria-expanded="false" aria-controls="collapse3">

								         <i class="mcare-flaticon-injection"></i> Cirurgia de Ceratocone

								        </a>

								      </h4>

								    </div>

								    <div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">

								      <div class="panel-body text-content">

								        ndicado no estágio moderado de tratamento de ceratocone, corresponde ao implante cirúrgico de segmentos de anéis intra-estromais na córnea, tentando melhorar a estrutura corneana. Uma microincisão é realizada na córnea e introduzido anéis de polimetil metacrilato em seu estroma, em cada lado da pupila do olho a ser operado. Os segmentos vão tentar o aplanamento do ápice da córnea tentando deixá-la o mais próximo do natural.

								      </div>

								    </div>

								  </div>







								</div>



							</div>

						</div>

						</div>



					</div>

				</div>

			</div>

		</section>











		<!--News-->



		</section>







		<!--Full Width Counter Wrap-->



		</section>





		<!--Client Testimonial Carousel-->

		<section class="mcare-testimonial-wrap">

			<div class="container">

				<div class="row">

					<h2 class="mcare-h2">Comentarios <span>dos nossos Clientes</span></h2>

					<div class="col-md-offset-2 col-md-8 col-lg-8 col-sm-12 col-xs-12">



						<div class="owl-carousel2">


							<?php foreach ($comentarios as $key => $comentario): ?>

							<div class="testimonial-inner">
								<div align="center" class="">

<?php echo $comentario->link ?>

							</div>


								<div class="testi-meta">

									<!-- <span class="testi-author text-content">Juliano Cardoso</span>

									<span class="testi-desig text-content">Mechanical Engineer</span> -->

								</div>

								<!-- <img src="<?php echo base_url() ?>assets/images/testi-11.png" alt=""> -->

							</div>

						<?php endforeach; ?>








						</div>



					</div>

				</div>

			</div>

		</section>





		<!--Client Logo Carousel-->

		<section class="mcare-client-wrap">

			<div class="mcare-client-outer">

				<div class="container">

					<div class="row">

						<div class="col-md-offset-1 col-lg-10 col-md-10 col-sm-12 col-xs-12">

							<div class="client-inner owl-carousel3">

								<?php foreach ($convenios as $key => $convenio): ?>

								<div class="client-box">

									<img style="    width: 112px;" src="<?php echo base_url() ?>public/imagens/convenios/<?php echo $convenio->imagem ?>" alt="">

								</div>
							<?php endforeach; ?>

							</div>

						</div>

					</div>

				</div>

			</div>

		</section>


		<style media="screen">
			.mtm{
				display: none !important;
			}
		</style>
