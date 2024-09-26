<?php
session_start();

// Sprawdź, czy użytkownik jest zalogowany
if (!isset($_SESSION['user'])) {
    $_SESSION['user'] = 'anonimowy'; // Domyślnie ustawiamy użytkownika jako "anonimowy" jeśli nie jest zalogowany
}

// Sprawdź, czy koszyk nie jest pusty
if (!isset($_SESSION['koszyk']) || count($_SESSION['koszyk']) == 0) {
    echo "<p>Twój koszyk jest pusty! Nie możesz złożyć zamówienia.</p>";
    exit;
}

// Połączenie z bazą danych
$connect = mysqli_connect("localhost", "root", "", "snekstore");
if (!$connect) {
    die("Błąd połączenia z bazą danych: " . mysqli_connect_error());
}

// Iteracja przez koszyk i zapisywanie zamówienia w bazie danych
$user = $_SESSION['user'];
foreach ($_SESSION['koszyk'] as $produkt) {
    $model = $produkt['model'];
    $ilosc = $produkt['ilosc'];
    
    // Dodanie zamówienia do tabeli "zamowienia"
    $query = "INSERT INTO zamowienia (user, model, ilosc, status) VALUES ('$user', '$model', $ilosc, 'oczekujące')";
    
    if (mysqli_query($connect, $query)) {
        echo "<p>Zamówienie na $ilosc sztuk $model zostało złożone pomyślnie!</p>";
    } else {
        echo "<p>Błąd podczas składania zamówienia: " . mysqli_error($connect) . "</p>";
    }
}

// Po złożeniu zamówienia, usuwamy koszyk z sesji
unset($_SESSION['koszyk']);

?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style2.css">
    <title>Zamówienie - SnekStore</title>
</head>
<body>
    <h1>Zamówienie</h1>
    <p>Dziękujemy za złożenie zamówienia!</p>
    <a href="index.php">Powrót na stronę główną</a>

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

<?php
// Zamykanie połączenia z bazą danych
mysqli_close($connect);
?>
