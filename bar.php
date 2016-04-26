<?php 
include ("connect.php");
session_start();
if(isset($_SESSION['username'])){
}
else
	header('Location: login.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>HOME</title>
	<link rel="stylesheet" type="text/css" href="proo.css">
	<link rel="stylesheet" type="text/css" href="style1.css">
	<link href='http://fonts.googleapis.com/css?family=Arizonia' type="text/css" rel="stylesheet"  >
	<link href='http://fonts.googleapis.com/css?family=Just+Another+Hand' type="text/css" rel="stylesheet"  >
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/vendor/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="css/vendor/font-awesome.min.css" type="text/css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>
    <link href="css/jquery.bdt.css" type="text/css" rel="stylesheet">
    <link href="css/style.css" type="text/css" rel="stylesheet">
</head>
<body>
<img src="img/aa.jpg" class="backimg">
<div class="containerindex"><!--para pantay-->
		<div class="header1"> <!--nav background-->
			<p class="heading">H2T</p>
			<p class="heading2">"Head to Toe" Apparels for men and women</p>
				<div class="welcome_header"><?php echo "Welcome, ".$_SESSION['username']. "!"; ?></div>
				<form class="logout" action="logout.php" method="POST">
					<input  type="submit" name="Logout" value="Logout">
				</form>
			<div id="nav">
				<ul>
					<li class="word_inventory"><a href="index.php">Inventory System</a></li> |
					<li class="word_inventory"><a href="bar.php">Summary</a></li> 
				</ul>
			</div>
</div>
</div>	
<div class="h2t">
	<h3 style="text-align:center">H2T SUMMARY</h3>
</div>
<p style="text-align:center"><img src="mysql_graph_bar.php" /></p>
<div class="footer1"> 
				<p>Alva|Algo|Gonzales|Habana|Laguador|Llenas<br>
				&copy;Copyright 2016</p>
			</div>
</body>
</html>