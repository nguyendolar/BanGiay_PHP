
<?php
include_once('../../config/database.php');	
	// Thêm màu
	if(isset($_POST['suaa'])){
		$manv=$_POST['manv'];
		$anhnen=$_FILES['anhnen']['name'];
		$AnhSP_tmp=$_FILES['anhnen']['tmp_name'];
		move_uploaded_file($AnhSP_tmp,'../../webroot/img/sanpham/'.$anhnen);
		$sql=" UPDATE `slide` SET `image`='$anhnen' WHERE `id`= $manv";
		$rs=mysqli_query($conn,$sql);
		if(isset($rs)){
			header('location:../index.php?action=slide&thongbao=sua');
		}else{
			header('location:../index.php?action=slide&thongbao=loi');
		}
	}
	//----------------------------------------
	//Cập nhập
	if(isset($_POST['them'])){
		
		$anhnen=$_FILES['anhnen']['name'];
		$AnhSP_tmp=$_FILES['anhnen']['tmp_name'];
		move_uploaded_file($AnhSP_tmp,'../../webroot/img/sanpham/'.$anhnen);
		$sql="INSERT INTO `slide`( `image` ) VALUES ('$anhnen')";
		$rs=mysqli_query($conn,$sql);
		if(isset($rs)){
			header('location:../index.php?action=slide&thongbao=them');
		}else{
			header('location:../index.php?action=slide&thongbao=loi');
		}
	}

	//----------------------------------------
// xóa 
if(isset($_GET['xoa'])){
		$manv=$_GET['manv'];
		$sql="delete  from slide where id='$manv'";
		$rs=mysqli_query($conn,$sql);
		if(isset($rs)){
			header('location:../index.php?action=slide&thongbao=xoa');
		}else{
			header('location:../index.php?action=slide&thongbao=loi');
		}
	}