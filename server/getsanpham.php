<?php
	include "connect.php";
	$page = $_GET['page'];
	$idlsp=$_POST['idsanpham'];
	$space=100;
	$limit=($page-1)*$space;
	$mangsanpham=array();
	$query="SELECT * FROM sanpham WHERE idloaisanpham=$idlsp LIMIT $limit,$space";
	$data=mysqli_query($conn,$query);
	while ($row=mysqli_fetch_assoc($data)) {
		array_push($mangsanpham, new Sanpham(
			$row['idsp'],
			$row['tensanpham'],
			$row['giasanpham'],
			$row['hinhanhsanpham'],
			$row['motasanpham'],
			$row['idloaisanpham']));
	}
	echo json_encode($mangsanpham);
	class Sanpham{
		function Sanpham($idsp,$tensanpham,$giasanpham,$hinhanhsanpham,$motasanpham,$idloaisanpham){
			$this->idsp=$idsp;
			$this->tensanpham=$tensanpham;
			$this->giasanpham=$giasanpham;
			$this->hinhanhsanpham=$hinhanhsanpham;
			$this->motasanpham=$motasanpham;
			$this->idloaisanpham=$idloaisanpham;
		}
	}
?>