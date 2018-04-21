<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <ol class="breadcrumb">
            <li>
                <a href="javascript:void(0)">Home</a>
            </li>
            <li>
                Inicial
            </li>
            <li class="active">
                <strong>formulário</strong>
            </li>
        </ol>
    </div>
    <div class="col-lg-2">
    </div>
</div>
<div class="wrapper wrapper-content animated">
  <form action="<?php echo base_url(array('home', 'salvar', 'inicial')) ?>" method="post" id="form-cadastro-noticia" enctype="multipart/form-data">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                        <?php if (isset($pagina)): ?>
                            <input type="hidden" name="id" value="<?php echo $pagina->id ?>">
                        <?php endif ?>

                        <label> Secção 1</label>
                        <h3>Introdução</h3>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-sm-4 error-file">
                                <label class="control-label">Imagem destaque: * (1200px X 600px)</label>
                                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                    <div class="form-control" data-trigger="fileinput">
                                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                        <span class="fileinput-filename"></span>
                                    </div>
                                    <span class="input-group-addon btn btn-default btn-file">
                                        <span class="fileinput-new">Selecione a imagem</span>
                                        <span class="fileinput-exists">Alterar</span>
                                        <input type="file" id="imagem_S1" name="imagem_S1" class="file" />
                                    </span>
                                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                                </div>
                                <div class="col-sm-12 preview-image">
                                    <div id="img-S1" class="lightBoxGallery">
                                        <?php if (isset($noticia)): ?>
                                            <img id="img-show-S1" src="<?php echo base_url(array('../', 'public', 'imagens', 'noticias', $noticia->imagem)) ?>">
                                        <?php endif ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-xs-6">
                                  <div class="form-group">
                                      <label class="control-label">Texto:</label>
                                      <textarea name="texto_S1" class="form-control summernote" rows="4"><?php echo (isset($pagina->texto_S1)) ? $pagina->texto_S1 : '' ?></textarea>
                                  </div>
                                  <div class="form-group">
                                      <label class="control-label">Link Botão:</label>
                                      <input type="text" name="link_S1" class="form-control" value="<?php echo (isset($pagina->link_S1)) ? $pagina->link_S1 : '' ?>">
                                  </div>
                              </div>
                        </div>
                        <br><br>
                        <label> Secção 2</label>
                        <h3>Galeria</h3>
                          <div class="hr-line-dashed"></div>
                          <div class="row">
                              <div class="col-sm-6 error-file">
                                  <label class="control-label">Imagem destaque: * (1200px X 600px)</label>
                                  <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                      <div class="form-control" data-trigger="fileinput">
                                          <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                          <span class="fileinput-filename"></span>
                                      </div>
                                      <span class="input-group-addon btn btn-default btn-file">
                                          <span class="fileinput-new">Selecione a imagem</span>
                                          <span class="fileinput-exists">Alterar</span>
                                          <input type="file" id="imagem_S2-1" name="img_S2_1" class="file" />
                                      </span>
                                      <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                                  </div>
                                  <div class="form-group">
                                      <label class="control-label">Texto:</label>
                                      <textarea name="texto_S2_1" class="form-control summernote" rows="4"><?php echo (isset($pagina->texto_S2_1)) ? $pagina->texto_S2_1 : '' ?></textarea>
                                  </div>

                              </div>

                              <div class="col-sm-6 col-xs-6">

                                <div class="col-sm-12 preview-image">
                                    <div id="img-S2-1" style="margin-top:15%" class="lightBoxGallery">
                                        <?php if (isset($noticia)): ?>
                                            <img id="img-show" src="<?php echo base_url(array('../', 'public', 'imagens', 'noticias', $noticia->imagem)) ?>">
                                        <?php endif ?>
                                    </div>
                                </div>
                                </div>
                          </div>
                        <div class="row">
                          <div class="row">
                              <div class="col-sm-6 error-file">
                                  <label class="control-label">Imagem destaque: * (1200px X 600px)</label>
                                  <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                      <div class="form-control" data-trigger="fileinput">
                                          <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                          <span class="fileinput-filename"></span>
                                      </div>
                                      <span class="input-group-addon btn btn-default btn-file">
                                          <span class="fileinput-new">Selecione a imagem</span>
                                          <span class="fileinput-exists">Alterar</span>
                                          <input type="file" id="imagem_S2-2" name="img_S2_2" class="file" />
                                      </span>
                                      <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                                  </div>
                                  <div class="form-group">
                                      <label class="control-label">Texto:</label>
                                      <textarea name="texto_S2_2" class="form-control summernote" rows="4"><?php echo (isset($pagina->texto_S2_2)) ? $pagina->texto_S2_2 : '' ?></textarea>
                                  </div>

                              </div>

                              <div class="col-sm-6 col-xs-6">

                                <div class="col-sm-12 preview-image">
                                    <div id="img-S2-2" style="margin-top:15%" class="lightBoxGallery">
                                        <?php if (isset($noticia)): ?>
                                            <img id="img-show" src="<?php echo base_url(array('../', 'public', 'imagens', 'noticias', $noticia->imagem)) ?>">
                                        <?php endif ?>
                                    </div>
                                </div>
                                </div>
                          </div>

                          <div class="row">
                              <div class="col-sm-6 error-file">
                                  <label class="control-label">Imagem destaque: * (1200px X 600px)</label>
                                  <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                      <div class="form-control" data-trigger="fileinput">
                                          <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                          <span class="fileinput-filename"></span>
                                      </div>
                                      <span class="input-group-addon btn btn-default btn-file">
                                          <span class="fileinput-new">Selecione a imagem</span>
                                          <span class="fileinput-exists">Alterar</span>
                                          <input type="file" id="imagem_S2-3" name="img_S2_3" class="file" />
                                      </span>
                                      <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                                  </div>
                                  <div class="form-group">
                                      <label class="control-label">Texto:</label>
                                      <textarea name="texto_S2_3" class="form-control summernote" rows="4"><?php echo (isset($pagina->texto_S2_3)) ? $pagina->texto_S2_3 : '' ?></textarea>
                                  </div>

                              </div>

                              <div class="col-sm-6 col-xs-6">

                                <div class="col-sm-12 preview-image">
                                    <div id="img-S2-3" style="margin-top:15%" class="lightBoxGallery">
                                        <?php if (isset($noticia)): ?>
                                            <img id="img-show" src="<?php echo base_url(array('../', 'public', 'imagens', 'noticias', $noticia->imagem)) ?>">
                                        <?php endif ?>
                                    </div>
                                </div>
                                </div>
                          </div>
                        <div class="row">

                        </div>
                        <br><br><br>
                        <label> Secção 1</label>
                        <h3>Convênios Principais</h3>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-sm-4 error-file">
                                <label class="control-label">Imagem destaque: * (1200px X 600px)</label>
                                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                    <div class="form-control" data-trigger="fileinput">
                                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                        <span class="fileinput-filename"></span>
                                    </div>
                                    <span class="input-group-addon btn btn-default btn-file">
                                        <span class="fileinput-new">Selecione a imagem</span>
                                        <span class="fileinput-exists">Alterar</span>
                                        <input type="file" id="imagem_CV-1" name="convenio_1" class="file" />
                                    </span>
                                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                                </div>
                                <div class="col-sm-12 preview-image">
                                    <div id="img-CV-1" class="lightBoxGallery">
                                        <?php if (isset($noticia)): ?>
                                            <img id="img-show-S1" src="<?php echo base_url(array('../', 'public', 'imagens', 'noticias', $noticia->imagem)) ?>">
                                        <?php endif ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 error-file">
                                <label class="control-label">Imagem destaque: * (1200px X 600px)</label>
                                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                    <div class="form-control" data-trigger="fileinput">
                                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                        <span class="fileinput-filename"></span>
                                    </div>
                                    <span class="input-group-addon btn btn-default btn-file">
                                        <span class="fileinput-new">Selecione a imagem</span>
                                        <span class="fileinput-exists">Alterar</span>
                                        <input type="file" id="imagem_CV-2" name="convenio_2" class="file" />
                                    </span>
                                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                                </div>
                                <div class="col-sm-12 preview-image">
                                    <div id="img-CV-2" class="lightBoxGallery">
                                        <?php if (isset($noticia)): ?>
                                            <img id="img-show-S1" src="<?php echo base_url(array('../', 'public', 'imagens', 'noticias', $noticia->imagem)) ?>">
                                        <?php endif ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 error-file">
                                <label class="control-label">Imagem destaque: * (1200px X 600px)</label>
                                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                    <div class="form-control" data-trigger="fileinput">
                                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                        <span class="fileinput-filename"></span>
                                    </div>
                                    <span class="input-group-addon btn btn-default btn-file">
                                        <span class="fileinput-new">Selecione a imagem</span>
                                        <span class="fileinput-exists">Alterar</span>
                                        <input type="file" id="imagem_CV-3" name="convenio_3" class="file" />
                                    </span>
                                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                                </div>
                                <div class="col-sm-12 preview-image">
                                    <div id="img-CV-3" class="lightBoxGallery">
                                        <?php if (isset($noticia)): ?>
                                            <img id="img-show-S1" src="<?php echo base_url(array('../', 'public', 'imagens', 'noticias', $noticia->imagem)) ?>">
                                        <?php endif ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 error-file">
                                <label class="control-label">Imagem destaque: * (1200px X 600px)</label>
                                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                    <div class="form-control" data-trigger="fileinput">
                                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                        <span class="fileinput-filename"></span>
                                    </div>
                                    <span class="input-group-addon btn btn-default btn-file">
                                        <span class="fileinput-new">Selecione a imagem</span>
                                        <span class="fileinput-exists">Alterar</span>
                                        <input type="file" id="imagem_CV-4" name="convenio_4" class="file" />
                                    </span>
                                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                                </div>
                                <div class="col-sm-12 preview-image">
                                    <div id="img-CV-4" class="lightBoxGallery">
                                        <?php if (isset($noticia)): ?>
                                            <img id="img-show-S1" src="<?php echo base_url(array('../', 'public', 'imagens', 'noticias', $noticia->imagem)) ?>">
                                        <?php endif ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 error-file">
                                <label class="control-label">Imagem destaque: * (1200px X 600px)</label>
                                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                    <div class="form-control" data-trigger="fileinput">
                                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                        <span class="fileinput-filename"></span>
                                    </div>
                                    <span class="input-group-addon btn btn-default btn-file">
                                        <span class="fileinput-new">Selecione a imagem</span>
                                        <span class="fileinput-exists">Alterar</span>
                                        <input type="file" id="imagem_CV-5" name="convenio_5" class="file" />
                                    </span>
                                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                                </div>
                                <div class="col-sm-12 preview-image">
                                    <div id="img-CV-5" class="lightBoxGallery">
                                        <?php if (isset($noticia)): ?>
                                            <img id="img-show-S1" src="<?php echo base_url(array('../', 'public', 'imagens', 'noticias', $noticia->imagem)) ?>">
                                        <?php endif ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 error-file">
                                <label class="control-label">Imagem destaque: * (1200px X 600px)</label>
                                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                    <div class="form-control" data-trigger="fileinput">
                                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                        <span class="fileinput-filename"></span>
                                    </div>
                                    <span class="input-group-addon btn btn-default btn-file">
                                        <span class="fileinput-new">Selecione a imagem</span>
                                        <span class="fileinput-exists">Alterar</span>
                                        <input type="file" id="imagem_CV-6" name="convenio_6" class="file" />
                                    </span>
                                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                                </div>
                                <div class="col-sm-12 preview-image">
                                    <div id="img-CV-6" class="lightBoxGallery">
                                        <?php if (isset($noticia)): ?>
                                            <img id="img-show-S1" src="<?php echo base_url(array('../', 'public', 'imagens', 'noticias', $noticia->imagem)) ?>">
                                        <?php endif ?>
                                    </div>
                                </div>
                            </div>

                        </div

                        <?php if (isset($noticia)): ?>
                            <input type="hidden" name="imagem_noticia" value="<?php echo $noticia->imagem ?>">
                        <?php endif ?>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <div class="text-right">

                                        <button class="btn btn-primary" type="submit">Salvar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
  </form>
</div>

<script type="text/javascript">
    $('input[type="text"]').setMask();
    $("#form-cadastro-noticia").validate({});

    $('.summernote').summernote({
    	height: 100,
    	toolbar:
      [
       ['style', ['style']],
      ['font', ['bold', 'italic', 'underline', 'clear']],
      // ['font', ['bold', 'italic', 'underline', 'strikethrough', 'superscript', 'subscript', 'clear']],
      ['fontname', ['fontname']],
      ['fontsize', ['fontsize']],
      ['color', ['color']],
      ['para', ['paragraph']],
      ['height', ['height']],
      //['table', ['table']],
      //['insert', ['link', 'picture', 'hr']],
      ['view', ['codeview']],
      //['help', ['help']]
      ],
   	});

    <?php if (!isset($noticia)): ?>
        $.validator.addClassRules("file", {
            validate_file: true
        });
    <?php endif ?>

    //metodo para validar o valor
  /*  $.validator.addMethod("validate_file", function(value, element){
        if(value.length > 0){
            return true;
        }
        if($(".error-file").find('label.error').length){
            $(".error-file").find('label.error').remove();
        }
        $(".error-file").append('<label id="imagem-error" class="error" for="imagem"></label>');
        return false;
    }, "Este campo é obrigatório.");*/


      // SECAO 1
    $('#imagem_S1').on('change', function(){
        input = $(this);
        if (input[0].files && input[0].files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#img-S1').find('img').remove();
                $('#img-S1').append('<img id="img-show-S1" src="'+e.target.result+'">');
            }

            reader.readAsDataURL(input[0].files[0]);
        }else{
            $('#img-S1').find('img').remove();
        }
    });
      // SECAO 2
    $('#imagem_S2-1').on('change', function(){
        input = $(this);
        if (input[0].files && input[0].files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#img-S2-1').find('img').remove();
                $('#img-S2-1').append('<img id="img-show-S2-1" src="'+e.target.result+'">');
            }

            reader.readAsDataURL(input[0].files[0]);
        }else{
            $('#img-S2-1').find('img').remove();
        }
    });
    $('#imagem_S2-2').on('change', function(){
        input = $(this);
        if (input[0].files && input[0].files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#img-S2-2').find('img').remove();
                $('#img-S2-2').append('<img id="img-show-S2-2" src="'+e.target.result+'">');
            }

            reader.readAsDataURL(input[0].files[0]);
        }else{
            $('#img-S2-2').find('img').remove();
        }
    });
    $('#imagem_S2-3').on('change', function(){
        input = $(this);
        if (input[0].files && input[0].files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#img-S2-3').find('img').remove();
                $('#img-S2-3').append('<img id="img-show-S2-3" src="'+e.target.result+'">');
            }

            reader.readAsDataURL(input[0].files[0]);
        }else{
            $('#img-S2-3').find('img').remove();
        }
    });

    //==================******************==============

    // SECAO DOS CONVÊNIOS
  $('#imagem_CV-1').on('change', function(){
      input = $(this);
      if (input[0].files && input[0].files[0]) {
          var reader = new FileReader();

          reader.onload = function (e) {
              $('#img-CV-1').find('img').remove();
              $('#img-CV-1').append('<img id="img-show-CV-1" src="'+e.target.result+'">');
          }

          reader.readAsDataURL(input[0].files[0]);
      }else{
          $('#img-CV-1').find('img').remove();
      }
  });

  $('#imagem_CV-2').on('change', function(){
      input = $(this);
      if (input[0].files && input[0].files[0]) {
          var reader = new FileReader();

          reader.onload = function (e) {
              $('#img-CV-2').find('img').remove();
              $('#img-CV-2').append('<img id="img-show-CV-2" src="'+e.target.result+'">');
          }

          reader.readAsDataURL(input[0].files[0]);
      }else{
          $('#img-CV-2').find('img').remove();
      }
  });

  $('#imagem_CV-3').on('change', function(){
      input = $(this);
      if (input[0].files && input[0].files[0]) {
          var reader = new FileReader();

          reader.onload = function (e) {
              $('#img-CV-3').find('img').remove();
              $('#img-CV-3').append('<img id="img-show-CV-3" src="'+e.target.result+'">');
          }

          reader.readAsDataURL(input[0].files[0]);
      }else{
          $('#img-CV-3').find('img').remove();
      }
  });

  $('#imagem_CV-4').on('change', function(){
      input = $(this);
      if (input[0].files && input[0].files[0]) {
          var reader = new FileReader();

          reader.onload = function (e) {
              $('#img-CV-4').find('img').remove();
              $('#img-CV-4').append('<img id="img-show-CV-4" src="'+e.target.result+'">');
          }

          reader.readAsDataURL(input[0].files[0]);
      }else{
          $('#img-CV-4').find('img').remove();
      }
  });

  $('#imagem_CV-5').on('change', function(){
      input = $(this);
      if (input[0].files && input[0].files[0]) {
          var reader = new FileReader();

          reader.onload = function (e) {
              $('#img-CV-5').find('img').remove();
              $('#img-CV-5').append('<img id="img-show-CV-5" src="'+e.target.result+'">');
          }

          reader.readAsDataURL(input[0].files[0]);
      }else{
          $('#img-CV-5').find('img').remove();
      }
  });

  $('#imagem_CV-6').on('change', function(){
      input = $(this);
      if (input[0].files && input[0].files[0]) {
          var reader = new FileReader();

          reader.onload = function (e) {
              $('#img-CV-6').find('img').remove();
              $('#img-CV-6').append('<img id="img-show-CV-6" src="'+e.target.result+'">');
          }

          reader.readAsDataURL(input[0].files[0]);
      }else{
          $('#img-CV-6').find('img').remove();
      }
  });

</script>
