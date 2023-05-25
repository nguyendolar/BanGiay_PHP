<?php 
	include_once('../config/database.php');
	if(isset($_GET['view'])){
		$view=$_GET['view'];
		switch ($view) {
			case 'them':
					include_once('slide/them.php');
				break;
			case 'sua':
					include_once('slide/sua.php');
				break;
			case 'xoa':
					include_once('slide/xoa.php?view='.$view);
				break;		
			default:
					
				break;
		}
	}
	else{
		include_once('slide/danhsach.php');
	}
	

?>