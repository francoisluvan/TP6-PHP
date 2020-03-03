Notepad+<!DOCTYPE html>

<html lang="fr" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Multimedia</title>
</head>
<body>

<p> ceci est un test </p>

<?PHP
header ("Content-type: image/jpeg");
$image= imagecreatefromjpeg("profile.jpg;charset=utf-8");
imagejpeg($image);

?>


</body>
</html>