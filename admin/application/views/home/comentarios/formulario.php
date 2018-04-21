<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <ol class="breadcrumb">
            <li>
                <a href="javascript:void(0)">Home</a>
            </li>
            <li>
                <a href="<?php echo base_url(array('home', 'comentarios')) ?>">comentarios</a>
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
                      <form action="<?php echo base_url(array('home', 'comentarios', 'salvar')) ?>" method="post" id="form-cadastro-banner" enctype="multipart/form-data">
                        <?php if (isset($comentario)): ?>
                            <input type="hidden" name="id" value="<?php echo $comentario->id ?>">
                        <?php endif ?>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                                <div class="form-group col-md-2">
                                    <label class="control-label">Nome:

                                    </label>
                                    <input type="text" name="nome" class="form-control" value="<?php echo (isset($comentario)) ? $comentario->nome : '' ?>">
                                </div>
                                <div class="form-group col-md-8">
                                    <label class="control-label">Link do comentário do facebook:
                                    </label>
                                    <textarea name="link"  rows="8" cols="80"><?php echo (isset($comentario)) ? $comentario->link : '' ?>"></textarea>

                            </div>
                          </div>

                        </div>



                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <div class="text-right">
                                        <a href="<?php echo base_url(array('site', 'comentarios')) ?>" class="btn btn-white">Cancelar</a>
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

    <?php if (!isset($comentario)): ?>
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
