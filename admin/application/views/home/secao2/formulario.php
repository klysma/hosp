<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <ol class="breadcrumb">
            <li>
                <a href="javascript:void(0)">Home</a>
            </li>
            <li>
                Seção 1
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
  <form action="<?php echo base_url(array('home', 'salvar', 'secao2')) ?>" method="post" id="form-cadastro-noticia" enctype="multipart/form-data">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                        <?php if (isset($dados)): ?>
                            <input type="hidden" name="id" value="<?php echo $dados->id ?>">
                        <?php endif ?>

                        <label> Secção 2</label>
                        <h3>Edição da secao 2 da página home</h3>
                        <div class="hr-line-dashed"></div>
                        <div class="row">

                            <div class="col-sm-4 error-file">
                              <div class="form-group col-md-">
                                  <label class="control-label">subtitulo Superior:</label>
                                  <input type="text" name="titulo" class="form-control" value="<?php echo (isset($dados->titulo)) ? $dados->titulo : '' ?>">

                              </div>
                                <label class="control-label">Imagem destaque: * (1200px X 600px)</label>
                                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                    <div class="form-control" data-trigger="fileinput">
                                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                        <span class="fileinput-filename"></span>
                                    </div>
                                    <span class="input-group-addon btn btn-default btn-file">
                                        <span class="fileinput-new">Selecione a imagem</span>
                                        <span class="fileinput-exists">Alterar</span>
                                        <input type="file" id="imagem_S1" name="imagem" class="file" />
                                    </span>
                                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                                </div>
                                <div class="col-sm-12 preview-image">
                                    <div id="img-S1" class="lightBoxGallery">
                                        <?php if (isset($dados->imagem)): ?>
                                            <img id="img-show-S1" src="<?php echo base_url(array('../', 'public', 'imagens', 'home', $dados->imagem)) ?>">
                                        <?php endif ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-xs-6">
                                  <div class="form-group">
                                      <label class="control-label">Texto:</label>
                                      <input type="text" name="texto" class="form-control" value="<?php echo (isset($dados->titulo)) ? $dados->texto : '' ?>">
                                  </div>

                              </div>
                        </div>
                        <br><br>


                        <?php if (isset($dados->imagem)): ?>
                            <input type="hidden" name="imagem_secao" value="<?php echo $dados->imagem ?>">
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


</script>


<script type="text/javascript">
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();

        //showNotification
        <?php if (isset($notification)): ?>
            showNotification(<?php echo '"'. $notification->type .'","'. $notification->title .'","'. $notification->message .'"' ?>)
        <?php endif ?>
    })
</script>
