<?php


$file_name = $_FILES['fileTOUpload']['name'];
$file_tmp = $_FILES['fileTOUpload']['tmp_name'];
move_uploaded_file($file_tmp,"images/".$file_name);
echo "Success";
echo "<h1>".$file_tmp."</h1>";
?>
