<?php 
if(!isset($_SESSION['uno']))
{
header('Location:index.php?expire');
}
?>