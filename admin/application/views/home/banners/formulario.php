<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <ol class="breadcrumb">
            <li>
                <a href="javascript:void(0)">Home</a>
            </li>
            <li>
                <a href="<?php echo base_url(array('home', 'banners')) ?>">banners</a>
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
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                      <form action="<?php echo base_url(array('home', 'banners', 'salvar')) ?>" method="post" id="form-cadastro-banner" enctype="multipart/form-data">
                        <?php if (isset($banner)): ?>
                            <input type="hidden" name="id" value="<?php echo $banner->id ?>">
                        <?php endif ?>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-sm-12 col-xs-12">
                                <div class="form-group col-md-8">
                                    <label class="control-label">Título:

                                    </label>
                                    <input type="text" name="titulo" class="form-control" value="<?php echo (isset($banner)) ? $banner->titulo : '' ?>">
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="control-label">Telefone:
                                    </label>
                                    <input type="text" name="telefone" class="form-control" value="<?php echo (isset($banner)) ? $banner->telefone : '' ?>">

                            </div>
                          </div>
                            <div class="col-sm-6 error-file">
                                <label class="control-label">Banner de Fundo: * (1600px X 500px)</label>
                                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                    <div class="form-control" data-trigger="fileinput">
                                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                        <span class="fileinput-filename"></span>
                                    </div>
                                    <span class="input-group-addon btn btn-default btn-file">
                                        <span class="fileinput-new">Selecione o banner</span>
                                        <span class="fileinput-exists">Alterar</span>
                                        <input type="file" id="banner" name="banner" class="file" />
                                    </span>
                                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12 preview-image">
                                        <div class="lightBoxGallery img1">
                                            <?php if (isset($banner)): ?>
                                                <img id="img-show" src="<?php echo base_url(array('../', 'public', 'imagens', 'banners', $banner->imagem)) ?>">
                                            <?php endif ?>

                                            <!-- <div id="blueimp-gallery" class="blueimp-gallery">
                                                <div class="slides"></div>
                                                <h3 class="title">Banner</h3>
                                                <a class="prev">‹</a>
                                                <a class="next">›</a>
                                                <a class="close">×</a>
                                                <a class="play-pause"></a>
                                                <ol class="indicator"></ol>
                                            </div> -->

                                        </div>
                                    </div>
                                </div>

                                <?php if (isset($banner)): ?>
                                    <input type="hidden" name="imagem_banner" value="<?php echo $banner->imagem ?>">
                                <?php endif ?>
                            </div>
                            <div class="col-sm-6 error-file">
                                <label class="control-label">Imagem principal: * (1600px X 500px)</label>
                                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                    <div class="form-control" data-trigger="fileinput">
                                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                        <span class="fileinput-filename"></span>
                                    </div>
                                    <span class="input-group-addon btn btn-default btn-file">
                                        <span class="fileinput-new">Selecione o banner</span>
                                        <span class="fileinput-exists">Alterar</span>
                                        <input type="file" id="imagem_principal" name="imagem_principal" class="file" />
                                    </span>
                                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12 preview-image">
                                        <div class="lightBoxGallery img2">
                                            <?php if (isset($banner)): ?>
                                                <img id="img-show" src="<?php echo base_url(array('../', 'public', 'imagens', 'banners', $banner->imagem_principal)) ?>">
                                            <?php endif ?>

                                            <!-- <div id="blueimp-gallery" class="blueimp-gallery">
                                                <div class="slides"></div>
                                                <h3 class="title">Banner</h3>
                                                <a class="prev">‹</a>
                                                <a class="next">›</a>
                                                <a class="close">×</a>
                                                <a class="play-pause"></a>
                                                <ol class="indicator"></ol>
                                            </div> -->

                                        </div>
                                    </div>
                                </div>

                                <?php if (isset($banner)): ?>
                                    <input type="hidden" name="imagem_principal_img" value="<?php echo $banner->imagem_principal ?>">
                                <?php endif ?>

                            </div>
                        </div>
                        <div class="row">
                          <div class="col-sm-6 col-xs-6">
                                <div class="form-group">
                                    <label class="control-label">Título em destaque:
                                    <i class="fa fa-question-circle" aria-hidden="true" data-toggle="tooltip" data-placement="left" title="Tooltip on left" ></i></label>
                                    <textarea name="titulo_destaque" class="form-control summernote" rows="4"><?php echo (isset($banner)) ? $banner->titulo_destaque : '' ?></textarea>
                                </div>
                            </div>
                          <div class="col-sm-6 col-xs-6">
                                <div class="form-group">
                                    <label class="control-label">Sub titulo:</label>
                                    <textarea name="subtitulo" class="form-control summernote" rows="4"><?php echo (isset($banner)) ? $banner->subtitulo : '' ?></textarea>
                                </div>

                            </div>
                        </div>



                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <div class="text-right">
                                        <a href="<?php echo base_url(array('site', 'banners')) ?>" class="btn btn-white">Cancelar</a>
                                        <button class="btn btn-primary" type="submit">Salvar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
var teste;
    $('input[type="text"]').setMask();
    $("#form-cadastro-banner").validate({});

    <?php if (!isset($banner)): ?>
        $.validator.addClassRules("file", {
            validate_file: true
        });
    <?php endif ?>

    //metodo para validar o valor
    $.validator.addMethod("validate_file", function(value, element){
        if(value.length > 0){
            return true;
        }
        if($(".error-file").find('label.error').length){
            $(".error-file").find('label.error').remove();
        }
        $(".error-file").append('<label id="banner-error" class="error" for="banner"></label>');
        return false;
    }, "Este campo é obrigatório.");

    $('#banner').on('change', function(){
        input = $(this);
        if (input[0].files && input[0].files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.img1').find('img').remove();
                $('.img1').append('<img id="img-show" src="'+e.target.result+'">');
            }

            reader.readAsDataURL(input[0].files[0]);
        }else{
            $('.img1').find('img').remove();
        }
    });


    $('#imagem_principal').on('change', function(){
        input = $(this);
        if (input[0].files && input[0].files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.img2').find('img').remove();
                $('.img2').append('<img id="img-show" src="'+e.target.result+'">');
            }

            reader.readAsDataURL(input[0].files[0]);
        }else{
            $('.img2').find('img').remove();
        }
    });


    $('.summernote').summernote({

      height: 100,
      toolbar: [
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
</script>
