<?php 
include ("connect.php");
session_start();
if(isset($_SESSION['username'])){
}
else
die("You must be logged in!");
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
						if(isset($_POST['updatesub'])){
							$color = $_POST['txt_color'];
							$size = $_POST['txt_size'];
							$category = $_POST['txt_category'];
							$description = $_POST['txt_description'];
							$status = $_POST['txt_status'];
							$barcode = $_POST['txt_barcode'];
							$sql="UPDATE main_table set 
														COLOR = '$color',
														SIZE = '$size',
														CATEGORY='$category',
														DESCRIPTION='$description',
														STATUS='$status' where BARCODE='$barcode'";
														if(mysqli_query($connect, $sql)){
															header("Location: index.php");
														}
														else{
															echo "Error: ". mysqli_error($connect);
														}		
						}
							$BARCODE = '';
							$COLOR = '';
							$SIZE= '';
							$CATEGORY= '';
							$DESCRIPTION= '';
							$STATUS = '';
							if(isset($_GET['BARCODE']))
							{
								$query=mysqli_query($connect,"SELECT BARCODE, COLOR, SIZE, CATEGORY, DESCRIPTION, STATUS from main_table where BARCODE='".$_GET['BARCODE']."' ");
								$numrows=mysqli_num_rows($query);
								if($numrows!=0){
									while($row=mysqli_fetch_assoc($query)){
											$BARCODE=$row['BARCODE'];
											$COLOR=$row['COLOR'];
											$SIZE=$row['SIZE'];
											$CATEGORY=$row['CATEGORY'];
											$DESCRIPTION=$row['DESCRIPTION'];
											$STATUS=$row['STATUS'];
									}

								}
							}	
						?>
						<div class="update">
						<form action="update.php" method="POST">
						<table>
								<tr>
									<td class="head">COLOR:
									<input class="option1"name="txt_color" value="<?=$COLOR?>"></td>
								
									<td class="head">SIZE:
									<td><input class="option1" name="txt_size" value="<?=$SIZE?>"></td>
								
									<td class="head">CATEGORY:
									<td><input class="option1" name="txt_category" value="<?=$CATEGORY?>"></td>

									<td class="head">DESCRIPTION:
									<td><input class="option1" name="txt_description" value="<?=$DESCRIPTION?>"></td>
								
									<td class="head">STATUS:
									<td><input class="option1" name="txt_status" value="<?=$STATUS?>"></td>
							
									<td><input type="hidden" name="txt_barcode" value="<?=$BARCODE?>"></td>
									<td><input class="update_button" type="submit" name="updatesub" value="Update"></td>
								</tr>
						</table>
						</form>
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