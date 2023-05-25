<?php 
    $manv=$_GET['manv'];
?>
 
 <form class="form-row " method="POST" action="slide/xuly.php" enctype="multipart/form-data">
 <input type="hidden" name="manv" value="<?php echo $manv?>">
  <div class="form-group col-4" style="margin-left:50px"><label >Ảnh Slide</label> <input type="file" class="form-control" name="anhnen" ></div>
	    <div class="form-group col-sm-3"><label for="masv">&emsp;</label><input type="submit" class="form-control badge-info" name="suaa" value="Cập nhập"></div>
	    <hr>	
 </form>
