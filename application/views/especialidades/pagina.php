
    <div style="background: url(<?php echo base_url() ?>assets/images/especialidades.jpg) no-repeat;" class="inner-page-hero-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="inner-page-title">
                        <h1>Especialidades</h1>
                        <h4><a href="<?php echo base_url() ?>">Home</a> - Especialidades</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  inner page hero area end -->
    <!--  service area start -->
    <div class="service-area">
        <div class="container  service-border">
            <div class="service-border">
                <div class="service-section">

                      <?php for ($i=0; $i < count($especialidades) ; $i+=3):?>
                        <div class="row">

                        <?php if (array_key_exists($i , $especialidades )): ?>
                        <div class="col-sm-4 wow fadeInLeft">
                            <div class="service-single-items margin-30">
                                <img src="public/imagens/especialidades/<?php echo $especialidades[$i]->imagem ?>" alt="">
                                <h3><?php echo $especialidades[$i]->titulo ?></h3>
                                <h5><?php echo $especialidades[$i]->texto ?></h5>
                                <a href="javascript:void(0)" data-id="<?php echo $especialidades[$i]->id ?>" class="more-btn hover-rotate detalhes"><i class="zmdi zmdi-plus"></i>Detalhesais</a>
                            </div>
                        </div>
                        <?php endif; ?>
                        <?php if (array_key_exists($i+1 , $especialidades )): ?>
                        <div class="col-sm-4 wow fadeInLeft">
                            <div class="service-single-items margin-30">
                                <img src="public/imagens/especialidades/<?php echo $especialidades[$i+1]->imagem ?>" alt="">
                                <h3><?php echo $especialidades[$i+1]->titulo ?></h3>
                                <h5><?php echo $especialidades[$i+1]->texto ?></h5>
                                <a href="javascript:void(0)" data-id="<?php echo $especialidades[$i+1]->id ?>" class="more-btn hover-rotate detalhes"><i class="zmdi zmdi-plus"></i>Detalhes</a>
                            </div>
                        </div>
                        <?php endif; ?>
                        <?php if (array_key_exists($i+2 , $especialidades )): ?>
                        <div class="col-sm-4 wow fadeInLeft">
                            <div class="service-single-items margin-30">
                                <img src="public/imagens/especialidades/<?php echo $especialidades[$i+2]->imagem ?>" alt="">
                                <h3><?php echo $especialidades[$i+2]->titulo ?></h3>
                                <h5><?php echo $especialidades[$i+2]->texto ?></h5>
                                <a href="javascript:void(0)" data-id="<?php echo $especialidades[$i+2]->id ?>" class="more-btn hover-rotate detalhes"><i class="zmdi zmdi-plus"></i>Detalhes</a>
                            </div>
                        </div>
                        <?php endif; ?>
                        </div>
                      <?php endfor ?>

            </div>
        </div>
      
    </div>
  </div>
  <div id="modals-load"></div>
<script type="text/javascript">
$('.detalhes').on('click', function(){

      let dados = {id: $(this).data('id') }
      loadModal('modals-load', '<?php echo base_url(array('detalhes-especialidades')) ?>', dados, 'especialidades-modal');

});
</script>


