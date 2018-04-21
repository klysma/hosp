<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <ol class="breadcrumb">
            <li>
                <a href="<?php echo base_url(['procedimentos-esteticos']) ?>">Procedimentos estéticos</a>
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
                    <form action="<?php echo base_url(array('procedimentos-esteticos', 'salvar')) ?>" method="post" id="form-cadastro-procedimentos-esteticos" enctype="multipart/form-data">
                        <?php if (isset($procedimento_estetico)): ?>
                            <input type="hidden" name="id" value="<?php echo $procedimento_estetico->id ?>">
                        <?php endif ?>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-sm-6 col-xs-12">
                                <div class="form-group">
                                    <label class="control-label">Título:</label>
                                    <input type="text" name="titulo" class="form-control" value="<?php echo (isset($procedimento_estetico)) ? $procedimento_estetico->titulo : '' ?>">
                                </div>
                            </div>
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
                                        <input type="file" id="imagem" name="imagem" class="file" />
                                    </span>
                                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                        	<div class="col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <label class="control-label">Texto:</label>
                                    <textarea name="texto" class="form-control summernote" rows="4"><?php echo (isset($procedimento_estetico)) ? $procedimento_estetico->texto : '' ?></textarea>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12 preview-image">
                                <div class="lightBoxGallery">
                                    <?php if (isset($procedimento_estetico)): ?>
                                        <img id="img-show" src="<?php echo base_url(array('../', 'public', 'imagens', 'procedimentos_esteticos', $procedimento_estetico->imagem)) ?>">
                                    <?php endif ?>
                                </div>
                            </div>
                        </div>

                        <?php if (isset($procedimento_estetico)): ?>
                            <input type="hidden" name="imagem_procedimentos_estetico" value="<?php echo $procedimento_estetico->imagem ?>">
                        <?php endif ?>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <div class="text-right">
                                        <a href="<?php echo base_url(array('procedimentos-esteticos')) ?>" class="btn btn-white">Cancelar</a>
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
    $('input[type="text"]').setMask();
    $("#form-cadastro-procedimentos-esteticos").validate({});

    $('.summernote').summernote({
    	height: 300,
    	toolbar: [
          ['para', ['ul', 'ol', 'paragraph']],
          ['fontsize', ['fontsize']],
          ['fontname', ['fontname']],
          ['style', ['style']],
          ['font', ['bold', 'italic', 'underline', 'clear']],
          ['color', ['color']],
          ['height', ['height']],
          ['table', ['table']],
          ['insert', ['picture', 'hr']],
          ['view', ['fullscreen']]
        ],
   	});

    <?php if (!isset($procedimento_estetico)): ?>
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
        $(".error-file").append('<label id="imagem-error" class="error" for="imagem"></label>');
        return false;
    }, "Este campo é obrigatório.");

    $('#imagem').on('change', function(){
        input = $(this);
        if (input[0].files && input[0].files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.lightBoxGallery').find('img').remove();
                $('.lightBoxGallery').append('<img id="img-show" src="'+e.target.result+'">');
            }

            reader.readAsDataURL(input[0].files[0]);
        }else{
            $('.lightBoxGallery').find('img').remove();
        }
    });
</script>
