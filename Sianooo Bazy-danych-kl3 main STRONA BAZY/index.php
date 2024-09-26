<?php
session_start();
// if (!isset($_SESSION['user'])) {
//     header('Location: koszyk.php');
//     exit;
// }
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
            <h3>Oferty sezonu</h3>
        </div>
        <div class="middle">
        <?php
        // Połączenie z bazą danych
        $connect = mysqli_connect("localhost", "root", "", "snekstore");
        if (!$connect) {
            die("Błąd połączenia z bazą danych: " . mysqli_connect_error());
        }

        // Pobranie danych z bazy
        $query = "SELECT Model, Cena, Opis, Zdjecie FROM item";
        $result = mysqli_query($connect, $query);
        if (!$result) {
            die("Błąd wykonywania zapytania: " . mysqli_error($connect));
        }

        if (mysqli_num_rows($result) == 0) {
            echo "Brak przedmiotów w bazie danych.";
        } else {
            // Wyświetlenie tabeli z przedmiotami
            echo "<table> 
                  <tr>
                    <th>Model</th>
                    <th>Cena</th>
                    <th>Opis</th>
                    <th>Zdjęcie</th>
                    <th>Kup</th>
                  </tr>";
            while ($row = mysqli_fetch_array($result)) {
                $zdjecieUrl = $row['Zdjecie'];
                echo "<tr>
                        <td>{$row['Model']}</td>
                        <td>{$row['Cena']} zł</td>
                        <td>{$row['Opis']}</td>
                        <td><img src='{$zdjecieUrl}' alt='Zdjęcie produktu' style='width:100px; height:auto;'></td>
                        <td>
                            <form method='POST' action='koszyk.php'>
                                <input type='hidden' name='model' value='{$row['Model']}'>
                                <input type='submit'class='button button-buy' value='Kup'>
                            </form>
                        </td>
                      </tr>";
            }
            echo "</table>";
        }

        // Zamknięcie połączenia z bazą danych
        mysqli_close($connect);
        ?>
        </div>
        <div class="down"></div>
    </div>
    <footer>
        <div class="footer-container">
            <div class="footer-section">
                <h4>O nas</h4>
                <p>Oferujemy szeroki wybór sneakersów i akcesoriów. Naszym celem jest zaspokojenie potrzeb każdego miłośnika mody.</p>
            </div>
            <div class="footer-section">
                <h4>Linki</h4>
                <ul>
                    <li><a href="index.php">Strona główna</a></li>
                    <li><a href="kontakt.php">Kontakt</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>Kontakt</h4>
                <p>Email: <a href="mailto:kontakt@snekstore.pl">kontakt@snekstore.pl</a></p>
                <p>Telefon: +48 000 000 000</p>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2024 SnekStore. Wszystkie prawa zastrzeżone.</p>
        </div>
    </footer>
</body>
</html>
