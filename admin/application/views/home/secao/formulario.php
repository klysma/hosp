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
  <form action="<?php echo base_url(array('home', 'salvar', 'secao')) ?>" method="post" id="form-cadastro-noticia" enctype="multipart/form-data">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                        <?php if (isset($dados->id)): ?>
                            <input type="hidden" name="id" value="<?php echo $dados->id ?>">
                        <?php endif ?>

                        <label> Secção 1</label>
                        <h3>Introdução</h3>
                        <div class="hr-line-dashed"></div>
                        <div class="row">

                            <div class="col-sm-6 col-xs-6">
                                  <div class="form-group">
                                      <label class="control-label">Titulo 1:</label>
                                      <textarea name="titulo1" class="form-control summernote" rows="4"><?php echo isset($dados->titulo1)? $dados->titulo1 : "" ?></textarea>
                                  </div>

                              </div>
                            <div class="col-sm-6 col-xs-6">
                                  <div class="form-group">
                                      <label class="control-label">descricao 1:</label>
                                        <textarea name="descricao1" class="form-control summernote" rows="4"><?php echo isset($dados->descricao1)? $dados->descricao1 : "" ?></textarea>
                                  </div>

                              </div>
                        </div>
                        <div class="row">

                            <div class="col-sm-6 col-xs-6">
                                  <div class="form-group">
                                      <label class="control-label">Titulo 2:</label>
                                      <textarea name="titulo2" class="form-control summernote" rows="4"><?php echo isset($dados->titulo2)? $dados->titulo2 : "" ?></textarea>
                                  </div>

                              </div>
                            <div class="col-sm-6 col-xs-6">
                                  <div class="form-group">
                                      <label class="control-label">descricao 2:</label>
                                        <textarea name="descricao2" class="form-control summernote" rows="4"><?php echo isset($dados->descricao2)? $dados->descricao2 : "" ?></textarea>
                                  </div>

                              </div>
                        </div>
                        <div class="row">

                            <div class="col-sm-6 col-xs-6">
                                  <div class="form-group">
                                      <label class="control-label">Titulo 3:</label>

                                      <textarea name="titulo3" class="form-control summernote" rows="4"><?php echo isset($dados->titulo3)? $dados->titulo3 : "" ?></textarea>
                                  </div>

                              </div>
                            <div class="col-sm-6 col-xs-6">
                                  <div class="form-group">
                                      <label class="control-label">descricao 3:</label>
                                        <textarea name="descricao3" class="form-control summernote" rows="4"><?php echo isset($dados->descricao3)? $dados->descricao3 : "" ?></textarea>
                                  </div>

                              </div>
                        </div>
                        <div class="hr-line-dashed"></div>
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
