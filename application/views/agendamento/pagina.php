    <div class="inner-page-hero-area" style="background: url(<?php echo base_url() ?>assets/images/inner-hero-about-bg.jpg) no-repeat;">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="inner-page-title">
                        <h1>Pré-agendamento</h1>
                        <h4><a href="<?php echo base_url() ?>">Home</a> - Pré-agendamento</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  inner page hero area end -->
    <!-- tappointment area start -->
    <form action="<?php echo base_url('agendar')  ?>">
    <div class="appointment-area section-padding-two">
        <div class="container boder1 service-border">
            <div class="boder2 service-border">
                <div class="appointment-form">

                        <div class="row">
                            <div class="col-sm-4">
                                <div class="appontment-single-form">
                                    <input type="text" name="nome" placeholder="Nome Completo">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="appontment-single-form">
                                    <input type="text" class="telefone " name="telefone" placeholder="Telefone">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="appontment-single-form">
                                    <input type="email" name="email" placeholder="Email">
                                </div>
                            </div>
                            <!-- <div class="col-sm-4">
                                <span class="select-option select-appointment bg">
									<select name="topic">
										<option value="">Select Department</option>
										<option value="">Usa</option>
										<option value="">Canada</option>
										<option value="">Uk</option>
										<option value="">Asia</option>
									</select>
							   </span>
                            </div>
                            <div class="col-sm-4">
                                <span class="select-option select-appointment bg">
									<select name="topic">
										<option value="">Select Doctor</option>
										<option value="">Jenifer</option>
										<option value="">Andew lee</option>
										<option value="">Wong lee</option>
									</select>
							   </span>
                            </div>
                            <div class="col-sm-4">
                                <span class="select-option select-appointment bg">
									<select name="topic">
										<option value="">Select Time</option>
										<option value="">12:30 pm</option>
										<option value="">11:30 am</option>
										<option value="">10:30 am</option>
										<option value="">9:30 am</option>
									</select>
                           		</span>
                            </div> -->
                        </div>

                </div>
                <div class="appointment-details wow fadeInUp">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="appointment-details-title">
                                <h4>Qual o melhor dia para você?</h4>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                      <div class="" data-toggle="buttons">
                        <div class="col-sm-4 col-xs-6">
                            <div class="item-size">
                              <label class="btn btn-danger">
                                <input type="radio" name="dia_semana" value="1" autocomplete="off">
                                <span class="glyphicon glyphicon-ok"></span>
                              </label>
                                <label class="active" for="item_1">Segunda</label>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-6">
                            <div class="item-size">
                              <label class="btn btn-danger">
                                <input type="radio" name="dia_semana" value="2" autocomplete="off">
                                <span class="glyphicon glyphicon-ok"></span>
                              </label>
                                <label for="item_2">Terça</label>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-6">
                            <div class="item-size">
                              <label class="btn btn-danger">
                                <input type="radio" name="dia_semana" value="3" autocomplete="off">
                                <span class="glyphicon glyphicon-ok"></span>
                              </label>
                                <label for="item_3">Quarta</label>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-6">
                            <div class="item-size">
                              <label class="btn btn-danger">
                                <input type="radio" name="dia_semana" value="4" autocomplete="off">
                                <span class="glyphicon glyphicon-ok"></span>
                              </label>
                                <label class="active" for="item_4">Quinta</label>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-6">
                            <div class="item-size">
                              <label class="btn btn-danger">
                                <input type="radio" name="dia_semana" value="5" autocomplete="off">
                                <span class="glyphicon glyphicon-ok"></span>
                              </label>
                                <label for="item_5">Sexta</label>
                            </div>
                        </div>
                      </div>

                        <div class="col-xs-12">
                            <div class="appointment-details-title">
                                <h4>Qual a melhor hora pra você?</h4>
                            </div>
                        </div>

                        <div class="" data-toggle="buttons">
                        <div class="col-xs-4">
                            <div class="item-size">
                              <label class="btn btn-danger">
                        				<input type="radio" name="parte_dia" id="option2" value="1" autocomplete="off">
                        				<span class="glyphicon glyphicon-ok"></span>
                        			</label>
                                <label for="item_7">Manhã</label>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <div class="item-size">
                              <label class="btn btn-danger">
                        				<input type="radio" name="parte_dia" id="option2" value="2" autocomplete="off">
                        				<span class="glyphicon glyphicon-ok"></span>
                        			</label>
                                <label for="item_9">Tarde</label>
                            </div>
                        </div>

	                     </div>

                <!-- <div class="col-xs-12">
                            <div class="appointment-details-title">
                                <h4>Gander:</h4>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-8 col-xs-12">
                            <div class="items-bottom">
                                <div class="item-size">
                                    <input type="checkbox" id="item_11" name="item_size">
                                    <label for="item_11">Male</label>
                                </div>
                                <div class="item-size">
                                    <input type="checkbox" id="item_12" name="item_size">
                                    <label for="item_12">Female</label>
                                </div>
                                <div class="item-size">
                                    <input type="checkbox" id="item_13" name="item_size">
                                    <label for="item_13">Other</label>
                                </div>
                            </div>
                        </div> -->
                    </div>
                    <div class="appointment-form">
                        <div class="row">
                            <div class="col-sm-12">
                                <h4>Nos deixe uma mensagem</h4>
                                <textarea name="mensagem" placeholder="Escreva aqui"></textarea>
                                <a id="send" class="hover-rotate hvr-eftc know-more-btn hvr-bounce-to-right" href="javascript:void(0)">Pré-agendar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
      </form>

<script type="text/javascript">
    $(document).ready(function(){
     $('.telefone').mask('(00) 0 0000-0000');
    });
    </script>

        <style media="screen">
        .btn span.glyphicon {
    opacity: 0;
    }
    .btn.active span.glyphicon {
    opacity: 1;
    }
    input[type=radio]{
      position: absolute;
      clip: rect(0, 0, 0, 0);

    }

    .btn-danger{
      padding: 1px 5px !important;
      border-radius: 0px !important;
      background-color:  #b83437;
    }
</style>

<script type="text/javascript">
 $('#send').on('click', function(){
   const $this = $(this)
   const $form = $this.closest('form');

   if($form.find('[name="nome"]').val() == ''){
     swal('Alerta', 'O campo Nome é obrigatório.');
     return;
   }

   if($form.find('[name="email"]').val() == ''){
     swal('Alerta', 'O campo E-mail é obrigatório.');
     return;
   }

   if($form.find('[name="telefone"]').val() == ''){
     swal('Alerta', 'O campo Mensagem é obrigatório.');
     return;
   }
   if (! $("input[type='radio'][name='dia_semana']").is(':checked') ){
     swal('Alerta', 'Escolha o dia da semana.');
     return;
  }

  if (! $("input[type='radio'][name='parte_dia']").is(':checked') ){
    swal('Alerta', 'Escolha a parte do dia.');
    return;
 }

 if($form.find('[name="mensagem"]').val() == ''){
   swal('Alerta', 'Deixa a sua mensagem.');
   return;
 }


    var email = $form.find('[name="email"]').val();

     var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/
     if (!reg.test(email)){
      swal('Alerta', 'Digite um email válido.');
     return;
     }



   if($form.find('[name="telefone"]').val() == ''){
     swal('Alerta', 'O campo Mensagem é obrigatório.');
     return;
   }

   $.ajax({
     url: $form.attr('action'),
     type: 'POST',
     data: $form.serialize(),
     beforeSend: function () {
       $('#loading').removeClass('loading-off');
     },
     success: function(result) {
       swal(result.data.title, result.data.message, result.data.status);
     },
     complete: function () {
       $('#loading').addClass('loading-off');
     }
   });
 });
</script>
