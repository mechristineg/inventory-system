<?php
	error_reporting(E_ALL & ~E_NOTICE);
	include ("connect.php");
	session_start();

	if(@$_POST['submit']) //clicking the button
	{
	$username = @$_POST['username']; 
	$password = @$_POST['password'];

	if($username&&$password)
	{
	 	$query=mysqli_query($connect,"SELECT * FROM user_details WHERE username='$username'"); //selecting the username and the inout username
		$numrows=mysqli_num_rows($query); //find how many rows kung may katulad ba
		if($numrows!=0)
		{
			while($row = mysqli_fetch_assoc($query))
			{
				$dbusername = $row['username'];
				$dbpassword = $row['password'];
			}

			if($username==$dbusername&&$password==$dbpassword) //check if they match
			{
				header('Location: index.php');
				$_SESSION['username']=$username;
			}
			else 
			{
				$a = "Incorrect password!";
			}
		}
		else
		{
			
			$b = "That user doesn't exist!";
		}

	}
		else {
		
			$c = "Please fill all field";
		}
	}
?>
<!DOCTYPE html>
<html>
	<head>
		<title>PROJECT</title>
		<link rel="stylesheet" type="text/css" href="proo.css">
		<link href='http://fonts.googleapis.com/css?family=Oleo+Script' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href='http://fonts.googleapis.com/css?family=Oleo+Script'>
	</head>
	<body style="background-image: url(img/img1.jpg); background-size: 100%">
		<div class="contact-leftbar">
			<h1>Admin Area</h1>
			<form action="login.php" method="POST"> 
				<input type="text" class="input" placeholder="Enter Your Username" name="username"/>
				<input type="password" class="input" placeholder="******" name="password"/>
				<div class="button">
					<input type="Submit" class="login" value="Login" name="submit"/>
				</div>
			</form>
			<p class="paste"><?php echo $a ?></p> 
			<p class="paste"><?php echo $b ?></p>
			<p class="paste"><?php echo $c ?></p>
		</div>
	</body>
</html>
