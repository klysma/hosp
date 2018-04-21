<!DOCTYPE


		<!--Bread Crumbs-->

		<section class="mcare-inner-header">

			<div class="container">

				<div class="row">

					<h1>

              Convênios
					</h1>

					<div class="crumbs">

						<span><a href="<?php echo base_url() ?>">Home</a></span>

						<span><a href="<?php echo base_url() ?>">Convênios</a></span>

					</div>

				</div>

			</div>

		</section>



		<!--Side Menu-->

<div class="container">

<div class="rows">
  <div class="col-md-12">

    <?php foreach ($convenios as $key => $convenio): ?>


    <div class="col-md-3">
      <img src="<?php echo base_url() ?>public/imagens/convenios/<?php echo $convenio->imagem ?>" alt="">
    </div>

  <?php endforeach; ?>


  </div>
</div>

</div>



















		<!--Client Logo Carousel-->
