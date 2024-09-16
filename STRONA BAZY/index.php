<?php
session_start();
if(isset($_SESSION['user']))
{
    header('polaczenie.php');
}

?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style2.css">
    <title>SnekStore</title>
</head>
<body>
    <h1>SnekStore</h1>
    <div class="container">
        <div class="up">
        <h3> Oferty sezonu</h3>
        </div>
        <div class="middle">
        <?php
        $connect = mysqli_connect("localhost","root","","snekstore");
        $query=("SELECT  Model Cena Opis Zdjecie FROM produkty");
        $result=mysqli_query($connect,$query);
        echo "<table> <th><tr>Model</tr><tr>Cena</tr><tr>Opis</tr><tr>Zdjecie</tr> </th>";
        while($row=mysql_fetch_array(result));
        {
           echo" <tr>";
            echo "<td>.$row[0]</td>";
            echo "<td>.$row[1]</td>";
            echo "<td>.$row[2]</td>";
            echo "<td>.$row[3]</td>";
           echo" </tr>";
        }
        echo "</table>";
        ?>
        </div>
        <div class="down">

        </div>
    </div>
    <footer>

    </footer>
</body>
</html>