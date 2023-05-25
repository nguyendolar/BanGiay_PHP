<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>T-Shoes</title>
  <!-- Custom fonts for this template-->

  <link href="/shopgiay/webroot/font/Font Awesome/css/all.min.css" rel="stylesheet" type="text/css">
   <link href="template/mdi/css/materialdesignicons.min.css" rel="stylesheet">
  <link href="template/cssfont.css" rel="stylesheet">

  <link href="template/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="template/bootstrap/mdb.lite.min.css" rel="stylesheet">
  <script src="/shopgiay/webroot/jquery/jquery.js"></script>
<?php 
  if (isset($_SESSION['admin'])) {
      $nv=$_SESSION['admin'];
  }?>

</head>

<body id="page-top">
    <!-- Page Wrapper -->
  <div id="wrapper">
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
      <br>
      <!-- Sidebar - Brand -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="index.php">
          <i class="mdi mdi-home menu-icon"></i>
          <span>T-Shoes</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Interface
      </div>
      <!-- Nav Item - Charts -->
      <?php
        $sql="SELECT * FROM `hoadon` WHERE `TinhTrang` = 'chưa duyệt'";
        $rs=mysqli_query($conn,$sql);
        $dem=mysqli_num_rows($rs);
      ?>
      <li class="nav-item">
        <a class="nav-link" href="?action=xldathang">
          <i class="mdi mdi-format-list-bulleted menu-icon"></i>
          <span>Đơn Đặt Hàng <sup style="border-radius: 10px;" class="badge-danger "> &#160;<?php echo $dem ?> &#160;</sup></span></a>
      </li>
      <!-- Nav Item - Charts -->
      <?php
        $sql="SELECT * FROM `hoadon` WHERE NgayGiao is not null and TinhTrang='Đã duyệt' ORDER BY NgayGiao ASc";
        $rs=mysqli_query($conn,$sql); 
        $dem=mysqli_num_rows($rs);
      ?>
      <li class="nav-item">
        <a class="nav-link" href="?action=giaohang">
          <i class="mdi mdi-car"></i>
          <span>Giao Hàng <sup style="border-radius: 10px;" class="badge-danger "> &#160;<?php echo $dem ?> &#160;</sup></span></a>
          

      </li>
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages1" aria-expanded="true" aria-controls="collapsePages1">
         <i class="fas fa-fw fa-table"></i>
          <span>Sản Phẩm</span>
        </a>
        <div id="collapsePages1" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header"></h6>
            <a class="collapse-item" href="?action=sanpham">Danh Sách</a>
            <a class="collapse-item" href="?action=sanpham&view=themsp">Thêm</a>
          </div>
        </div>
      </li>
      
      <hr class="sidebar-divider d-none d-md-block">

    </ul>