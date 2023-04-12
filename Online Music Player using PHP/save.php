<?php 
require_once("music_connectdb.php");
$title = $_REQUEST['title'];
$description = $_REQUEST['description'];
$filename = $_FILES['audio']['name'];
/*$allowed = array('.mp3');
$ext=pathinfo($filename,PATHINFO_EXTENSION);
if(!in_array($ext, $allowed)) {
echo("error");
}*/
 
$filename = str_replace(" ","_",$filename);
$file = $_FILES['audio']['tmp_name'];
$move = move_uploaded_file($file,'./audio/'.$filename); 
$audio_path = "./audio/{$filename}?v=".time(); 
echo "<br>".$audio_path;
$filename = $_FILES['image']['name'];
$filename = str_replace(" ","_",$filename);
$file = $_FILES['image']['tmp_name'];
$move = move_uploaded_file($file,'./images/'.$filename); 
$image_path = "./images/{$filename}?v=".time();
echo "<br>".$image_path;
$result = $conn->query("select max(id) as maximum from music_list");
$row = $result->fetch_assoc();
$id = $row['maximum']+1;

$date = date('m/d/Y h:i:s', time());
echo "<br>".$id."<br>".$date;
echo $id." ".$title." ".$description." ".$audio_path." ".$image_path." ".$date;

$result = $conn->query("insert into music_list VALUES('$id','$title','$description','$audio_path','$image_path')");
echo("<p>".$result."</p>");
if($result>0) {
header('Location:index.php');
}




?>

