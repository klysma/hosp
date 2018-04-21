<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-10">
		<ol class="breadcrumb">
			<li>
				<a href="<?php echo base_url(array('agenda')) ?>">Agenda</a>
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
					<form action="<?php echo base_url(['agenda', 'salvar']) ?>" method="post" id="form-cadastro-agenda" enctype="multipart/form-data">
						<?php if (isset($agenda)): ?>
							<input type="hidden" name="id" value="<?php echo $agenda->id ?>">
						<?php endif ?>
						<div class="hr-line-dashed"></div>
						<div class="row">
							<div class="col-sm-12 col-xs-12">
								<div class="form-group">
									<label class="control-label">Dia:</label>
									<input type="text" name="dia" class="form-control" value="<?= $agenda->dia ?>" readonly>
								</div>
							</div>
						</div>
						<div class="hr-line-dashed"></div>
						<div class="horarios">
							<?php foreach ($agenda->horarios as $key => $item): ?>
								<div class="row item">
									<div class="col-sm-10 col-xs-10">
										<div class="form-group">
											<label class="control-label">Horário:</label>
											<input type="text" name="descricao" class="form-control" value="<?php echo $item->descricao ?>" required>
											<input type="hidden" name="id_item" class="form-control" value="<?= $item->id ?>">
										</div>
									</div>
									<div class="col-sm-2 col-xs-2 text-right">
										<button type="button" class="btn btn-danger remove help" title="Remover esse horário" style="margin-top: 23px"><i class="fa fa-minus"></i></button>
										<button type="button" class="btn btn-success add help hidden" title="Adicionar novo horário" style="margin-top: 23px"><i class="fa fa-plus"></i></button>
										<button type="button" class="btn btn-primary save help" title="Salvar esse horário" style="margin-top: 23px"><i class="fa fa-floppy-o"></i></button>
									</div>
								</div>
							<?php endforeach ?>
							<div class="row item">
								<div class="col-sm-10 col-xs-10">
									<div class="form-group">
										<label class="control-label">Horário:</label>
										<input type="text" name="descricao" class="form-control" value="" required>
										<input type="hidden" name="id_item" class="form-control" value="0">
									</div>
								</div>
								<div class="col-sm-2 col-xs-2 text-right">
									<button type="button" class="btn btn-danger remove help" title="Remover esse horário" style="margin-top: 23px"><i class="fa fa-minus"></i></button>
									<button type="button" class="btn btn-success add help" title="Adicionar novo horário" style="margin-top: 23px"><i class="fa fa-plus"></i></button>
									<button type="button" class="btn btn-primary save help" title="Salvar esse horário" style="margin-top: 23px"><i class="fa fa-floppy-o"></i></button>
								</div>
							</div>
						</div>
						<!-- <div class="hr-line-dashed"></div>
						<div class="row">
							<div class="col-sm-12 col-xs-12">
								<div class="form-group">
									<div class="text-right">
										<a href="<?php echo base_url(['agenda']) ?>" class="btn btn-white">Cancelar</a>
										<button class="btn btn-primary" type="submit">Salvar</button>
									</div>
								</div>
							</div>
						</div> -->
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/template" id="item-horario">
	<div class="row item">
		<div class="col-sm-10 col-xs-10">
			<div class="form-group">
				<label class="control-label">Horário:</label>
				<input type="text" name="descricao" class="form-control" value="" required>
				<input type="hidden" name="id_item" class="form-control" value="0">
			</div>
		</div>
		<div class="col-sm-2 col-xs-2 text-right">
			<button type="button" class="btn btn-danger remove help" title="Remover esse horário" style="margin-top: 23px"><i class="fa fa-minus"></i></button>
			<button type="button" class="btn btn-success add help" title="Adicionar novo horário" style="margin-top: 23px"><i class="fa fa-plus"></i></button>
			<button type="button" class="btn btn-primary save help" title="Salvar esse horário" style="margin-top: 23px"><i class="fa fa-floppy-o"></i></button>
		</div>
	</div>
</script>

<script type="text/javascript">
	$('input[type="text"]').setMask();
	$("#form-cadastro-agenda").validate({});
	$('.help').tooltip();

	$('.horarios').on('click', '.item .add', function(){
		$('.horarios .add').addClass('hidden');
		$('.horarios').append($($('#item-horario').html()));
	});

	$('.horarios').on('click', '.item .save', function(){
		const $form = $('#form-cadastro-agenda');
		const $item = $(this).closest('.item');
		const url = $form.attr('action');
		if($item.find('input[name="descricao"]').val() == ""){
			swal('Oops...', 'O campo descrição é obrigatório!', 'error');
			return;
		}
		$.ajax({
            url: url,
            type: 'POST',
            data: {
            	id_dia: $form.find('input[name="id"]').val(),
            	descricao: $item.find('input[name="descricao"]').val(),
            	id_item: $item.find('input[name="id_item"]').val()
            },
            beforeSend: function(){
                $('#loading').removeClass('loading-off');
            },
            success: function(result) {
                result = JSON.parse(result);
                $item.find('input[name="id_item"]').val(result.id);
                showNotification(result.type, result.title, result.message);
            },
            complete: function(){
                $('#loading').addClass('loading-off');
            }
        });
	});

	$('.horarios').on('click', '.item .remove', function(){
		const $form = $('#form-cadastro-agenda');
		const $item = $(this).closest('.item');
		const url = $form.attr('action');
		if($item.find('input[name="id_item"]').val() == "0"){
			return;
		}
		swal({
            title: "Atenção,",
            text: "Tem certeza que deseja excluir esse horário?",
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
	            url: '<?php echo base_url(['agenda', 'excluir']) ?>',
	            type: 'POST',
	            data: {
	            	id_item: $item.find('input[name="id_item"]').val()
	            },
	            beforeSend: function(){
	                $('#loading').removeClass('loading-off');
	            },
	            success: function(result) {
	                result = JSON.parse(result);
	                showNotification(result.type, result.title, result.message);
	                $item.remove();
	                $item.last().find('button.add').removeClass('hidden');
	            },
	            complete: function(){
	                $('#loading').addClass('loading-off');
	            }
	        });
        });
	});
</script>
