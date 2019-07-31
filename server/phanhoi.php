<?php
	include "connect.php";
	$json=$_POST['json'];
	$data=json_decode($json,true);
	foreach ($data as $value) {
		# code...
		$maphanhoi=$value['maphanhoi'];
		$tieudephanhoi=$value['tieudephanhoi'];
		$noidungphanhoi=$value['noidungphanhoi'];
		$query="INSERT INTO phanhoi(maphanhoi,tieudephanhoi,noidungphanhoi) VALUES (null,'$tieudephanhoi','$noidungphanhoi')";
		$Dta=mysqli_query($conn,$query);
	}
	if($Dta)
		echo "1";
	else
		echo "0";
?>