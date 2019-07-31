<?php
	include "connect.php";
	$mangspmoinhat=array();
	$query="SELECT * FROM sanpham ORDER BY idsp DESC LIMIT 6";
	$data=mysqli_query($conn,$query);
	while($row=mysqli_fetch_assoc($data)) {
		array_push($mangspmoinhat, new Sanphammoinhat($row['idsp'],$row['tensanpham'],$row['giasanpham'],$row['hinhanhsanpham'],$row['motasanpham'],$row['idloaisanpham']));
	}
	echo json_encode($mangspmoinhat);
	class Sanphammoinhat{
		function Sanphammoinhat($idsp,$tensanpham,$giasanpham,$hinhanhsanpham,$motasanpham,$idloaisanpham)
		{
			$this->idsp=$idsp;
			$this->tensanpham=$tensanpham;
			$this->giasanpham=$giasanpham;
			$this->hinhanhsanpham=$hinhanhsanpham;
			$this->motasanpham=$motasanpham;
			$this->idloaisanpham=$idloaisanpham;
		}
	}
?>