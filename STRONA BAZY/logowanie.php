<?php
session_start();
$connect = mysqli_connect("localhost","root","","snekstore");
if($connect->connect_error){
    die("Polaczenie nieudane");
}
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user = $_POST['username'];
    $password = $_POST['password'];
    $zapytanie1 = "SELECT * FROM user WHERE login = '$user' AND password = '$password'";
    $result = $connect->query($zapytanie1);

    if ($result->num_rows == 1) {
        $_SESSION['login'] = true;
        $_SESSION['username'] = $user;
        header("Location: index.php");
        
    } else {
        $error = "Nieprawidłowy login lub hasło.";
        echo $error;
    }
}

$connect->close();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>SnekStore</title>
</head>
<body>
    <h1>SnekStore</h1>
    <h3>Zaloguj sie w Snekstore!</h3>
    <div class="container">
    <form action="" method="post">
        <label for="">Login</label>
        <input class="inp" type="text" name="username" id="username">
        <br>
        <label for="">Password</label>
        <input  class="inp"type="password" name="password" id="password">
        <br>
        <button class="button" type="submit">Zaloguj</button>
    </div>
    <footer>

    </footer>
</body>
</html>