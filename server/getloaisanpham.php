<?php
include "connect.php";
$query="SELECT * FROM loaisanpham";
$data=mysqli_query($conn,$query);
$mangloaisanpham=array();
while($row=mysqli_fetch_assoc($data))
{
	array_push($mangloaisanpham, new Loaisp($row['id'],$row['tenloaisanpham'],$row['hinhanhloaisanpham']));
}
echo json_encode($mangloaisanpham);
	class Loaisp{
		function Loaisp($id,$tenloaisanpham,$hinhanhloaisanpham)
		{
			$this->id=$id;
			$this->tenloaisanpham=$tenloaisanpham;
			$this->hinhanhloaisanpham=$hinhanhloaisanpham;
		}
	}
?>