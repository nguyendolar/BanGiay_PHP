<?php 
	$sql="select *from slide";
	$rs=mysqli_query($conn,$sql);

 ?>
<div class="container-fluid">
	<div class=" alert alert-primary">
	  <h4 class="page-title">
	    <span class="page-title-icon bg-gradient-primary text-white mr-2">
	    </span> ADMIN - T-Shoes &#160;<i class="fas fa-chevron-right" style="font-size: 18px"></i>&#160; Slide </h4>
	</div><br>
	<div class="card">
		<div class="card-body">
			<table class="table table-hover m-auto text-center" style="font-size: 13px;">
				<thead class="badge-info">
					<tr>
						<th>STT </th>
						<th>Ảnh</th>
						
						<th colspan ="2" class="badge-danger"></th>
					</tr>
				</thead>
				<tbody>
			 <?php $so=0;
				 while ($row=mysqli_fetch_array($rs)) { ?>
					<tr>
						<td><?php echo $row['id']; ?></td>
						<td><img src="../webroot/img/sanpham/<?php echo $row['image']; ?>" style="width:200px"/></td>
						
						
						<td><a href="index.php?action=slide&view=sua&manv=<?php echo $row['id']; ?>" ><i class="far fa-edit"></i></a></td>
						<td><a href="slide/xuly.php?xoa&manv=<?php echo $row['id']; ?>" ><i class="fas fa-backspace"></i></a></td>	
					</tr>
			 <?php	} ?>		
				</tbody>
			</table><hr>
			<div class="m-auto">
			<a href="?action=slide&view=them"><button class="btn btn-info" type="button">Thêm</button></a>
			</div>
		</div>

	</div>
</div>

<style type="text/css" media="screen">
	.bt{
		width: 100px;
		font-size: 0.85em;
	}
</style>
