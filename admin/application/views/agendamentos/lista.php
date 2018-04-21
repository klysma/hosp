<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-10">
		<!-- <h2>Banners</h2> -->
		<ol class="breadcrumb">
			<li class="active">
				<strong>Agendamentos</strong>
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
						<!-- <a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a> -->
						<!-- <a class="btn btn-primary" href="<?php echo base_url(array('agenda', 'nova')) ?>">
							Nova agenda
						</a> -->
					</div>
				</div>
				<div class="ibox-content">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover dataTables-view" >
							<thead>
								<tr>
									<th class="on-print">ID</th>
									<th class="on-print">Nome</th>
									<th class="on-print">E-mail</th>
									<th class="on-print">Telefone</th>
									<th class="on-print">Dia</th>
									<th class="on-print">Horário</th>
									<!-- <th class="no-orderable">Ações</th> -->
								</tr>
							</thead>
							<tbody>
							<?php
								if(!empty($agendamentos)){
									foreach($agendamentos as $agendamento){
							?>
										<tr class="gradeC" id="item-<?php echo $agendamento->id ?>">
											<td><?php echo $agendamento->id; ?></td>
											<td><?php echo $agendamento->nome; ?></td>
											<td><?php echo $agendamento->email; ?></td>
											<td><?php echo $agendamento->telefone; ?></td>
											<td><?php switch ($agendamento->dia) {
												case 1:
													echo "Segunda";
													break;
												case 2:
													echo "Terça";
													break;
												case 3:
													echo "Quarta";
													break;
												case 4:
													echo "Quinta";
													break;
												case 5:
													echo "Sexta";
													break;
												default:
													echo "Indefinido";
													break;
											}  ?></td>
											<td><?php
													switch ($agendamento->parte_dia) {
														case 1:
															echo "Manhã";
															break;
														case 2:
															echo "Tarde";
															break;
														default:
															echo "Indefinido";
															break;
													}

											?></td>
											<!-- <td class="text-center">
												<a href="<?php echo base_url(['agenda', 'editar']) ?>?id=<?php echo $agendamento->id ?>" class="btn btn-default btn-icon-action" data-toggle="tooltip" data-placement="bottom" title="Editar"><i class="fa fa-pencil-square-o"></i></a>
												<a href="<?php echo base_url(['agenda', 'excluir']) ?>" class="btn btn-default btn-icon-action delete-item" data-item="<?php echo $agendamento->id ?>" data-toggle="tooltip" data-placement="bottom" title="Excluir"><i class="fa fa-trash"></i></a>
											</td> -->
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
