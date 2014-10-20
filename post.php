<html>
<head>
<title>Yes</title>
</head>
<body>
<p>Yest</p>
<form action="" method="get">
<input type="text" name="name" />
<input type="submit" name="submit" value="ok">
</form>
<?php
if(isset($_GET['submit'])){
	echo $_GET['name'];
}
?>

</body>
</html>

