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
  <form action="<?php echo base_url(array('home', 'salvar', 'secao3')) ?>" method="post" id="form-cadastro-noticia" enctype="multipart/form-data">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                        <?php if (isset($dados)): ?>
                            <input type="hidden" name="id" value="<?php echo $dados->id ?>">
                        <?php endif ?>

                        <label> Secção 1</label>
                        <h3>Introdução</h3>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                          <div class="col-md-12">
                            <div class="form-group col-md-6">
                                <label class="control-label">Título:</label>
                                <input type="text" name="titulo" class="form-control" value="<?php echo (isset($dados->titulo)) ? $dados->titulo : '' ?>">

                            </div>
                            <div class="form-group col-md-6">
                                <label class="control-label">Texto:</label>
                                <input type="text" name="texto" class="form-control" value="<?php echo (isset($dados->texto)) ? $dados->texto : '' ?>">

                            </div>
                            <div class="form-group col-md-6">
                                <label class="control-label">Ícone:</label>
                                <input type="text" name="icone" class="form-control" value="<?php echo (isset($dados->icone)) ? $dados->icone : '' ?>">

                            </div>
                        <div class="row">
                        </div>
                        <br><br>

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
