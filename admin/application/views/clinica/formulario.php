<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <ol class="breadcrumb">

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
                    <form action="<?php echo base_url(array('clinica', 'salvar')) ?>" method="post" id="form-cadastro-procedimentos-esteticos" enctype="multipart/form-data">
                         <?php if (isset($hospital)): ?>
                            <input type="hidden" name="id" value="<?php echo $hospital->id ?>">
                        <?php endif ?>
                        <div class="hr-line-dashed"></div>


                        <div class="row">
                          <div class="col-md-6">
                            <div class="col-sm-12 col-xs-12" >
                                <div class="form-group">
                                    <label class="control-label">Título:</label>
                                    <input type="text" name="titulo1" class="form-control" value="<?php echo isset($hospital)? $hospital->titulo1 : "" ?>">
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Ícone:</label>
                                    <input type="text" name="icone1" class="form-control" value="<?php echo isset($hospital)? $hospital->titulo1 : "" ?>">
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Texto :</label>
                                    <textarea name="texto1" class="form-control summernote" rows="4"><?php echo isset($hospital)? $hospital->titulo1 : "" ?></textarea>
                                </div>
                            </div>
                            </div>

                            <div class="col-md-6">
                              <div class="row">
                          <div class="col-sm-12 error-file">
                              <label class="control-label">Imagem destaque: * (1200px X 600px)</label>
                              <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                  <div class="form-control" data-trigger="fileinput">
                                      <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                      <span class="fileinput-filename"></span>
                                  </div>
                                  <span class="input-group-addon btn btn-default btn-file">
                                      <span class="fileinput-new">Selecione a imagem</span>
                                      <span class="fileinput-exists">Alterar</span>
                                      <input type="file" id="imagem1" name="imagem1" class="file" />
                                  </span>
                                  <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                              </div>
                          </div>
                            <div class="col-sm-6 preview-image">
                                <div class="lightBoxGallery1 lightBoxGallery">
                                    <?php if (isset($hospital)): ?>
                                        <img id="img-show" src="<?php echo base_url(array('../', 'public', 'imagens', 'clinica', $hospital->imagem1)) ?>">
                                    <?php endif ?>
                                </div>
                            </div>
                        </div>

                        <?php if (isset($hospital)): ?>
                            <input type="hidden" name="imagem_hospital" value="<?php echo $hospital->imagem1 ?>">
                        <?php endif ?>
                            </div>

                     
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                          <div class="col-md-6">
                            <div class="col-sm-12 col-xs-12" >
                                <div class="form-group">
                                    <label class="control-label">Título:</label>
                                    <input type="text" name="titulo2" class="form-control" value="<?php echo isset($hospital)? $hospital->titulo2 : "" ?>">
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Ícone:</label>
                                    <input type="text" name="icone2" class="form-control" value="<?php echo isset($hospital)? $hospital->icone2 : "" ?>">
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Texto :</label>
                                    <textarea name="texto2" class="form-control summernote" rows="4"><?php echo isset($hospital)? $hospital->texto2 : "" ?></textarea>
                                </div>
                            </div>
                            </div>

                            <div class="col-md-6">
                              <div class="row">
                          <div class="col-sm-12 error-file">
                              <label class="control-label">Imagem destaque: * (1200px X 600px)</label>
                              <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                  <div class="form-control" data-trigger="fileinput">
                                      <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                      <span class="fileinput-filename"></span>
                                  </div>
                                  <span class="input-group-addon btn btn-default btn-file">
                                      <span class="fileinput-new">Selecione a imagem</span>
                                      <span class="fileinput-exists">Alterar</span>
                                      <input type="file" id="imagem2" name="imagem2" class="file" />
                                  </span>
                                  <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                              </div>
                          </div>
                            <div class="col-sm-6 preview-image">
                                <div class="lightBoxGallery2 lightBoxGallery">
                                    <?php if (isset($hospital)): ?>
                                        <img id="img-show" src="<?php echo base_url(array('../', 'public', 'imagens', 'clinica', $hospital->imagem2)) ?>">
                                    <?php endif ?>
                                </div>
                            </div>
                        </div>

                        <?php if (isset($hospital)): ?>
                            <input type="hidden" name="imagem_hospital" value="<?php echo $hospital->imagem2 ?>">
                        <?php endif ?>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="row">
                          <div class="col-md-6">
                            <div class="col-sm-12 col-xs-12" >

                                <div class="form-group col-md-12">
                                    <label class="control-label">Título:</label>
                                    <input type="text" name="titulo3" class="form-control" value="<?php echo isset($hospital)? $hospital->titulo3 : "" ?>">
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">Ícone:</label>
                                    <input type="text" name="icone3" class="form-control" value="<?php echo isset($hospital)? $hospital->icone3 : "" ?>">

                                </div>
                                <div class="form-group col-md-6">
                                    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>

                                </div>
                                <div class="form-group col-md-12">
                                    <label class="control-label">Texto :</label>
                                    <textarea name="texto3" class="form-control summernote" rows="4"><?php echo isset($hospital)? $hospital->texto3 : "" ?></textarea>
                                </div>
                            </div>
                            </div>

                            <div class="col-md-6">
                              <div class="row">
                          <div class="col-sm-12 error-file">
                              <label class="control-label">Imagem destaque: * (1200px X 600px)</label>
                              <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                  <div class="form-control" data-trigger="fileinput">
                                      <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                      <span class="fileinput-filename"></span>
                                  </div>
                                  <span class="input-group-addon btn btn-default btn-file">
                                      <span class="fileinput-new">Selecione a imagem</span>
                                      <span class="fileinput-exists">Alterar</span>
                                      <input type="file" id="imagem3" name="imagem3" class="file" />
                                  </span>
                                  <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remover</a>
                              </div>
                          </div>
                            <div class="col-sm-6 preview-image">
                                <div class="lightBoxGallery3 lightBoxGallery">
                                    <?php if (isset($hospital)): ?>
                                        <img id="img-show" src="<?php echo base_url(array('../', 'public', 'imagens', 'clinica', $hospital->imagem3)) ?>">
                                    <?php endif ?>
                                </div>
                            </div>
                        </div>

                        <?php if (isset($hospital)): ?>
                            <input type="hidden" name="imagem_hospital" value="<?php echo $hospital->imagem3 ?>">
                        <?php endif ?>
                            </div>

                     
                        </div>

                
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <div class="text-right">
                                        <a href="<?php echo base_url(array('corpo-clinico')) ?>" class="btn btn-white">Cancelar</a>
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



  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <div class="col-md-12">
            

            <i class="fa fa-address-book  "></i> = fa fa-address-book  <br>
            <i class="fa fa-address-book-o  "></i> = fa fa-address-book-o  <br>
            <i class="fa fa-address-card  "></i> = fa fa-address-card  <br>
            <i class="fa fa-address-card-o  "></i> = fa fa-address-card-o  <br>
            <i class="fa fa-adjust  "></i> = fa fa-adjust  <br>
            <i class="fa fa-american-sign-language-interpreting "></i> = fa fa-american-sign-language-interpreting <br>
            <i class="fa fa-anchor  "></i> = fa fa-anchor  <br>
            <i class="fa fa-archive "></i> = fa fa-archive <br>
            <i class="fa fa-area-chart  "></i> = fa fa-area-chart  <br>
            <i class="fa fa-arrows  "></i> = fa fa-arrows  <br>
            <i class="fa fa-arrows-h  "></i> = fa fa-arrows-h  <br>
            <i class="fa fa-arrows-v  "></i> = fa fa-arrows-v  <br>
            <i class="fa fa-asl-interpreting  "></i> = fa fa-asl-interpreting  <br>
            <i class="fa fa-assistive-listening-systems "></i> = fa fa-assistive-listening-systems <br>
            <i class="fa fa-asterisk  "></i> = fa fa-asterisk  <br>
            <i class="fa fa-at  "></i> = fa fa-at  <br>
            <i class="fa fa-automobile  "></i> = fa fa-automobile  <br>
            <i class="fa fa-audio-description "></i> = fa fa-audio-description <br>
            <i class="fa fa-balance-scale "></i> = fa fa-balance-scale <br>
            <i class="fa fa-ban "></i> = fa fa-ban <br>
            <i class="fa fa-bank  "></i> = fa fa-bank  <br>
            <i class="fa fa-bar-chart "></i> = fa fa-bar-chart <br>
            <i class="fa fa-bar-chart-o "></i> = fa fa-bar-chart-o <br>
            <i class="fa fa-barcode "></i> = fa fa-barcode <br>
            <i class="fa fa-bars  "></i> = fa fa-bars  <br>
            <i class="fa fa-bath  "></i> = fa fa-bath  <br>
            <i class="fa fa-bathtub "></i> = fa fa-bathtub <br>
            <i class="fa fa-battery-0 "></i> = fa fa-battery-0 <br>
            <i class="fa fa-battery-1 "></i> = fa fa-battery-1 <br>
            <i class="fa fa-battery-2 "></i> = fa fa-battery-2 <br>
            <i class="fa fa-battery-3 "></i> = fa fa-battery-3 <br>
            <i class="fa fa-battery-4 "></i> = fa fa-battery-4 <br>
            <i class="fa fa-battery-empty "></i> = fa fa-battery-empty <br>
            <i class="fa fa-battery-full  "></i> = fa fa-battery-full  <br>
            <i class="fa fa-battery-half  "></i> = fa fa-battery-half  <br>
            <i class="fa fa-battery-quarter "></i> = fa fa-battery-quarter <br>
            <i class="fa fa-battery-three-quarters  "></i> = fa fa-battery-three-quarters  <br>
            <i class="fa fa-bed "></i> = fa fa-bed <br>
            <i class="fa fa-beer  "></i> = fa fa-beer  <br>
            <i class="fa fa-bell  "></i> = fa fa-bell  <br>
            <i class="fa fa-bell-o  "></i> = fa fa-bell-o  <br>
            <i class="fa fa-bell-slash  "></i> = fa fa-bell-slash  <br>
            <i class="fa fa-bell-slash-o  "></i> = fa fa-bell-slash-o  <br>
            <i class="fa fa-bicycle "></i> = fa fa-bicycle <br>
            <i class="fa fa-binoculars  "></i> = fa fa-binoculars  <br>
            <i class="fa fa-birthday-cake "></i> = fa fa-birthday-cake <br>
            <i class="fa fa-blind "></i> = fa fa-blind <br>
            <i class="fa fa-bolt  "></i> = fa fa-bolt  <br>
            <i class="fa fa-bomb  "></i> = fa fa-bomb  <br>
            <i class="fa fa-book  "></i> = fa fa-book  <br>
            <i class="fa fa-bookmark  "></i> = fa fa-bookmark  <br>
            <i class="fa fa-bookmark-o  "></i> = fa fa-bookmark-o  <br>
            <i class="fa fa-braille "></i> = fa fa-braille <br>
            <i class="fa fa-briefcase "></i> = fa fa-briefcase <br>
            <i class="fa fa-bug "></i> = fa fa-bug <br>
            <i class="fa fa-building  "></i> = fa fa-building  <br>
            <i class="fa fa-building-o  "></i> = fa fa-building-o  <br>
            <i class="fa fa-bullhorn  "></i> = fa fa-bullhorn  <br>
            <i class="fa fa-bullseye  "></i> = fa fa-bullseye  <br>
            <i class="fa fa-bus "></i> = fa fa-bus <br>
            <i class="fa fa-cab "></i> = fa fa-cab <br>
            <i class="fa fa-calculator  "></i> = fa fa-calculator  <br>
            <i class="fa fa-calendar  "></i> = fa fa-calendar  <br>
            <i class="fa fa-calendar-o  "></i> = fa fa-calendar-o  <br>
            <i class="fa fa-calendar-check-o  "></i> = fa fa-calendar-check-o  <br>
            <i class="fa fa-calendar-minus-o  "></i> = fa fa-calendar-minus-o  <br>
            <i class="fa fa-calendar-plus-o "></i> = fa fa-calendar-plus-o <br>
            <i class="fa fa-calendar-times-o  "></i> = fa fa-calendar-times-o  <br>
            <i class="fa fa-camera  "></i> = fa fa-camera  <br>
            <i class="fa fa-camera-retro  "></i> = fa fa-camera-retro  <br>
            <i class="fa fa-car "></i> = fa fa-car <br>
            <i class="fa fa-caret-square-o-down "></i> = fa fa-caret-square-o-down <br>
            <i class="fa fa-caret-square-o-left "></i> = fa fa-caret-square-o-left <br>
            <i class="fa fa-caret-square-o-right  "></i> = fa fa-caret-square-o-right  <br>
            <i class="fa fa-caret-square-o-up "></i> = fa fa-caret-square-o-up <br>
            <i class="fa fa-cart-arrow-down "></i> = fa fa-cart-arrow-down <br>
            <i class="fa fa-cart-plus "></i> = fa fa-cart-plus <br>
            <i class="fa fa-cc  "></i> = fa fa-cc  <br>
            <i class="fa fa-certificate "></i> = fa fa-certificate <br>
            <i class="fa fa-check "></i> = fa fa-check <br>
            <i class="fa fa-check-circle  "></i> = fa fa-check-circle  <br>
            <i class="fa fa-check-circle-o  "></i> = fa fa-check-circle-o  <br>
            <i class="fa fa-check-square  "></i> = fa fa-check-square  <br>
            <i class="fa fa-check-square-o  "></i> = fa fa-check-square-o  <br>
            <i class="fa fa-child "></i> = fa fa-child <br>


          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  

<script type="text/javascript">

$('input[type="text"]').setMask();
$("#form-cadastro-agenda").validate({});
$('.help').tooltip();

$('.horarios').on('click', '.item .add', function(){
  $('.horarios .add').addClass('hidden');
  $('.horarios').append($($('#item-horario').html()));
});

$('.remove-item').on('click', function(){
  var id = ($(this).data('remover'));
  var target = $(this).closest('.row');

  swal({
          title: "Atenção,",
          text: "Tem certeza que deseja excluir?",
          type: "warning",
          showCancelButton: true,
          confirmButtonColor: "#DD6B55",
          confirmButtonText: "Sim, excluir",
          cancelButtonText: "Não, cancelar",
          closeOnConfirm: true,
          closeOnCancel: true },
        function (isConfirm) {
          if (!isConfirm) {
             return;
          }
          $.ajax({
            url: '<?php echo base_url(['clinica', 'item', 'excluir']) ?>',
            type: 'POST',
            data: {
              id_item: id
            },
            beforeSend: function(){
                $('#loading').removeClass('loading-off');
            },
            success: function(result) {
                result = JSON.parse(result);

                showNotification(result.type, result.title, result.message);
                target.remove();
                target.remove().last().find('button.add').removeClass('hidden');
            },
            complete: function(){
                $('#loading').addClass('loading-off');
            }
        });
      });
});


    $('input[type="text"]').setMask();
    $("#form-cadastro-procedimentos-esteticos").validate({});

    $('.summernote').summernote({
    	height: 100,
    	toolbar: [
        
          ['font', ['bold', 'italic', 'underline']],
          ['color', ['color']],
          ['height', ['height']],
          ['table', ['table']],
          ['insert', ['picture', 'hr']],
          ['view', ['fullscreen']]
        ],
   	});

    <?php if (!isset($clinica)): ?>
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

    $('#imagem1').on('change', function(){
        input = $(this);
        if (input[0].files && input[0].files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.lightBoxGallery1').find('img').remove();
                $('.lightBoxGallery1').append('<img id="img-show" src="'+e.target.result+'">');
            }

            reader.readAsDataURL(input[0].files[0]);
        }else{
            $('.lightBoxGallery1').find('img').remove();
        }
    });  


      $('#imagem2').on('change', function(){
        input = $(this);
        if (input[0].files && input[0].files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.lightBoxGallery2').find('img').remove();
                $('.lightBoxGallery2').append('<img id="img-show" src="'+e.target.result+'">');
            }

            reader.readAsDataURL(input[0].files[0]);
        }else{
            $('.lightBoxGallery2').find('img').remove();
        }
    });   


     $('#imagem3').on('change', function(){
        input = $(this);
        if (input[0].files && input[0].files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.lightBoxGallery3').find('img').remove();
                $('.lightBoxGallery3').append('<img id="img-show" src="'+e.target.result+'">');
            }

            reader.readAsDataURL(input[0].files[0]);
        }else{
            $('.lightBoxGallery3').find('img').remove();
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
