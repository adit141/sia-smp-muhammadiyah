<script>
	$(function(){
		 $("select[name='thn_ajaran']").change(function()
		 {
			 $('#filter-form').submit();
		 });
		 $("select[name='kelas']").change(function()
		 {
			 $('#filter-form').submit();
		 });
		 $("select[name='semester']").change(function()
		 {
			 $('#filter-form').submit();
		 });
	});
</script>
<div id="body-container">
	<div class="container">
		<div class="page-header form-header">
			<h3><?php echo $title?></h3>
		</div>
		<?php
			 $msg_err = $this->session->flashdata('admin_save_error');
			 $msg_succes = $this->session->flashdata('admin_save_success');
		?>
		<?php if(!empty($msg_err)): ?>
		<div class="alert alert-danger">
			<a href="#" class="close" data-dismiss="alert">&times;</a>
			<strong>Error!</strong> <?php echo $msg_err;?>
		</div>
		<?php endif; ?>
		<?php if(!empty($msg_succes)): ?>
		<div class="alert alert-success">
			<a href="#" class="close" data-dismiss="alert">&times;</a>
			<strong>Succes!</strong> <?php echo $msg_succes;?>
		</div>
		<?php endif; ?>
		<div class="panel panel-default form-master">
			<form class="form-horizontal" method="get" action="<?php echo site_url("jadwal/rekap/guru")?>" target="_blank" id="filter-form">
			<div class="panel-heading">
				<div class="row">
					<div class="col-md-5  pull-right">
						<div class="form-action pull-right">
							<button type="submit" class="btn btn-success" name="action" value="pdf">Export to PDF</button>  
							<!-- <button type="submit" class="btn btn-success" name="action" value="excel">Export to Excel</button> -->
						</div>
					</div>
				</div>
				
			</div>
			<div class="panel-body">
				<div class="form-group ">
					<label for="tahun_ajaran" class="col-sm-2">Tahun Ajaran</label>
					<div class="col-sm-2">
						<select class="form-control input-sm" name="thn_ajaran">
							<?php foreach ($tahun_ajaran as $thn):?>
							<option value="<?php echo $thn['id_thn_ajaran'];?>" <?php echo $this->input->get("thn_ajaran") == $thn['id_thn_ajaran'] ? 'selected' : '';?> ><?php echo $thn['thn_ajaran']?></option>
							<?php endforeach;?>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="semester" class="col-sm-2">Semester</label>
					<div class="col-sm-2">
						<select class="form-control input-sm" name="semester">
							<option value="1" <?php echo $this->input->get("semester") == '1' ? ' selected' : '';?> >1</option>
							<option value="2" <?php echo $this->input->get("semester") == '2' ? ' selected' : '';?> >2</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="kelas" class="col-sm-2">Kelas</label>
					<div class="col-sm-2">
						<select class="form-control input-sm" name="kelas">
						  <?php foreach ($kelas as $kls):?>
						  <option value="<?php echo $kls['id_kelas'];?>" <?php echo $this->input->get("kelas") == $kls['id_kelas'] ? ' selected' : '';?> ><?php echo $kls['nm_kelas']?></option>
						  <?php endforeach;?>
						</select>
					</div>
				</div>
			</form>
			
			<table class="table table-striped table-small">
			<thead>
			  <tr>
				<th>Kelas</th>
				<th>Mata Pelajaran</th>
				<th>Nama Guru</th>
				<th>Hari dan Jam</th>
<!--				<th>Agama</th>  -->
			  </tr>
			</thead>
			<tbody>
			<?php foreach($data as $dt): ?>
			  <tr>
				<td><?php echo $dt['nm_kelas'];?></td>
				<td><?php echo $dt['deskripsi'];?></td>
				<td><?php echo $dt['nama'];?></td>
				<td><?php
					$waktu =  explode(',',$dt['waktu']);
				    foreach($waktu as $wk)
					{
						echo "<div style='margin:5px;'><span class='btn btn-default btn-xs'>".ucwords($wk)."<span></div>";
					}
				?>
			    </td>
<!--				<td><?php echo $dt['agama'];?></td>  -->
			  </tr>
			<?php endforeach ?>
			</tbody>
		</table>
		</div>
	</div>
	</div>
</div>
