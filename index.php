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
	<link rel="stylesheet" type="text/css" href='http://fonts.googleapis.com/css?family=Oleo+Script'>
	<link href='http://fonts.googleapis.com/css?family=Arizonia' type="text/css" rel="stylesheet"  >
	<link href='http://fonts.googleapis.com/css?family=Just+Another+Hand' type="text/css" rel="stylesheet"  >
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
			<?php
						if(isset($_REQUEST['btn_submit'])!=''){
								$sql= "INSERT INTO main_table (COLOR,SIZE,CATEGORY,DESCRIPTION,STATUS) VALUES('".$_REQUEST['txt_color']."','".$_REQUEST['txt_size']."','".$_REQUEST['txt_category']."','".$_REQUEST['txt_description']."','".$_REQUEST['txt_status']."')";
									$res =  mysqli_query($connect,$sql);
									}
				?>
				<div class="add">
				<table class="add_table">
				<form action="index.php" method="POST">
					<tr>
					<td class="head">COLOR:
						<select class="option" name="txt_color">
							<option value=""> </option>
							<option value="RED">Red</option>
							<option value="YELLOW">Yellow</option>
							<option value="BLUE">Blue</option>
						</select></td>
					<td class="head">SIZE:
						<select class="option" name="txt_size">
							<option value=""> </option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="S">S</option>
							<option value="M">M</option>
							<option value="L">L</option>
							<option value="XL">XL</option>
						</select></td>
					<td class="head">CATEGORY:
						<select class="option" name="txt_category">
							<option value=""> </option>
							<option value="BRIEF">Brief</option>
							<option value="CAP">Cap</option>
							<option value="DRESS">Dress</option>
							<option value="JACKET">Jacket</option>
							<option value="PANTS">Pants</option>
							<option value="PANTY">Panty</option>
							<option value="SHOAL">Shoal</option>
							<option value="SHOES">Shoes</option>
							<option value="SHORTS">Shorts</option>
							<option value="SLEEVELESS">Sleeveless</option>
							<option value="SLIPPERS">Slippers</option>
							<option value="T-SHIRT">T-shirt</option>
						</select> </td>
					<td class="head">DESCRIPTION:
						<select class="option" name="txt_description">
							<option value=""> </option>
							<option value="BASEBALL CAP">Baseball Cap</option>
							<option value="BEACH SHORTS">Beach Shorts</option>
							<option value="BOOTS">Boots</option>
							<option value="CARDIGAN">Cardigan</option>
							<option value="COTTON">Cotton</option>
							<option value="KHAKI">Khaki</option>
							<option value="COTTON">Cotton</option>
							<option value="FLOWERY SHORTS">Flowery Shorts</option>
							<option value="LEATHER">Leather</option>
							<option value="LEGGINGS">Leggings</option>
							<option value="MAONG">Maong</option>
							<option value="ROUND NECK T-SHIRT">Round Neck T-Shirt</option>
							<option value="RUBBER">Rubber</option>
							<option value="RUFFLED DRESS">Ruffled Dress</option>
							<option value="SHEATH DRESS">Sheath Dress</option>
							<option value="SILK">Silk</option>
							<option value="SILK NECK T-SHIRT">Silk Neck T-Shirt</option>
							<option value="SLACKS">Slacks</option>
							<option value="TURTLENECK">Turtleneck</option>
							<option value="V NECK T-SHIRT">V Neck</option>
						</select></td>
					<td class="head">STATUS:
						<select class="option" name="txt_status">
							<option value=""> </option>
							<option value="AVAILABLE">AVAILABLE</option>
							<option value="NOT AVAILABLE">NOT AVAILABLE</option>
						</select>
						<input class="add_button" type="submit" name="btn_submit" value="ADD"></td>
						</tr>
					</form>
					</table>
					</div>
<div class="container">
    <div class="row">
            <table class="table table-hover" id="bootstrap-table">
                <thead>
                <tr>
                    <th>BARCODE</th>
					<th>COLOR</th>
					<th>SIZE</th>
					<th>CATEGORY</th>
					<th>DESCRIPTION</th>
					<th>STATUS</th>
					<th>ACTION</th>
                </tr>
                </thead>
        		<tbody>
        			<?php
							if($query=mysqli_query($connect,"SELECT BARCODE,COLOR,SIZE,CATEGORY,DESCRIPTION,STATUS from main_table LIMIT 600"))
								{
									while($rows=mysqli_fetch_assoc($query))
										{
					?>	
					<tr>
					<td><?php echo $rows['BARCODE']; ?></td>
					<td><?php echo $rows['COLOR']; ?></td>
					<td><?php echo $rows['SIZE']; ?></td>
					<td><?php echo $rows['CATEGORY']; ?></td>
					<td><?php echo $rows['DESCRIPTION']; ?></td>
					<td><?php echo $rows['STATUS']; ?></td>
					<td>
						<a href="update.php?BARCODE=<?=$rows['BARCODE']?>">Update</a> |
						<a href="delete.php?BARCODE=<?=$rows['BARCODE']?>">Delete</a> 
					</td>
					</tr>
				<?php
									}	
							}	
				?>
				</tbody>
            </table>
            </div>
        </div>
    </div>
</div>
<script src="http://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="js/vendor/bootstrap.min.js" type="text/javascript"></script>
<script src="js/vendor/jquery.sortelements.js" type="text/javascript"></script>
<script src="js/jquery.bdt.js" type="text/javascript"></script>
<script>
    $(document).ready( function () {
        $('#bootstrap-table').bdt();
    });
</script>

<div class="footer"> 
				<p>Alva|Algo|Gonzales|Habana|Laguador|Llenas<br>
				&copy;Copyright 2016</p>
			</div>
</body>
</html>