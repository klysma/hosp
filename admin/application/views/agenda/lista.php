<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-10">
		<!-- <h2>Banners</h2> -->
		<ol class="breadcrumb">
			<li class="active">
				<strong>Agendas</strong>
			</li>
		</ol>
	</div>
	<div class="col-lg-2">

	</div>
</div>

<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<!-- <h5>FooTable with row toggler, sorting and pagination</h5> -->

					<div class="ibox-tools">
					</div>
				</div>
				<div class="ibox-content">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover dataTables-view" >
							<thead>
								<tr>
									<th class="on-print">ID</th>
									<th class="on-print">Dia</th>
									<th class="no-orderable">Ações</th>
								</tr>
							</thead>
							<tbody>
							<?php
								if(!empty($agendas)){
									foreach($agendas as $agenda){
							?>
										<tr class="gradeC" id="item-<?php echo $agenda->id ?>">
											<td><?php echo $agenda->id; ?></td>
											<td><?php echo $agenda->dia; ?></td>
											<td class="text-center">
												<!-- <a href="#" class="btn btn-default btn-icon-action" data-toggle="tooltip" title=""><i class="fa fa-check"></i></a> -->
												<!-- <a href="#" class="btn btn-default btn-icon-action" data-toggle="tooltip" title="Visualizar"><i class="fa fa-file-text-o"></i></a> -->
												<a href="<?php echo base_url(['agenda', 'editar']) ?>?id=<?php echo $agenda->id ?>" class="btn btn-default btn-icon-action" data-toggle="tooltip" data-placement="bottom" title="Adicionar horários"><i class="fa fa-calendar"></i></a>
												<!-- <a href="<?php echo base_url(['agenda', 'excluir']) ?>" class="btn btn-default btn-icon-action delete-item" data-item="<?php echo $agenda->id ?>" data-toggle="tooltip" data-placement="bottom" title="Excluir"><i class="fa fa-trash"></i></a> -->
											</td>
										</tr>
							<?php
									}
								}
							 ?>
							</tbody>
						<!-- <tfoot>
						<tr>
							<th>Rendering engine</th>
							<th>Browser</th>
							<th>Platform(s)</th>
							<th>Engine version</th>
							<th>CSS grade</th>
						</tr>
						</tfoot> -->
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(function () {
		$('[data-toggle="tooltip"]').tooltip();

		//showNotification
		<?php if (isset($notification)): ?>
			showNotification(<?php echo '"'. $notification->type .'","'. $notification->title .'","'. $notification->message .'"' ?>)
		<?php endif ?>
	})
</script>
