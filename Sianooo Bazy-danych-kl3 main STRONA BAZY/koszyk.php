<?php
session_start();

// Sprawdź, czy użytkownik jest zalogowany
// if (!isset($_SESSION['user'])) {
//     header('Location: login.php');
//     exit;
// }

// Sprawdzenie, czy formularz został wysłany
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $model = $_POST['model'];
    
    // Inicjalizacja koszyka w sesji, jeśli jeszcze nie istnieje
    if (!isset($_SESSION['koszyk'])) {
        $_SESSION['koszyk'] = [];
    }

    // Sprawdzenie, czy produkt już jest w koszyku
    if (isset($_SESSION['koszyk'][$model])) {
        // Jeśli produkt już jest w koszyku, zwiększamy ilość
        $_SESSION['koszyk'][$model]['ilosc']++;
    } else {
        // Jeśli produktu nie ma w koszyku, dodajemy nowy wpis
        $_SESSION['koszyk'][$model] = [
            'model' => $model,
            'ilosc' => 1
        ];
    }

    echo "<p>Produkt został dodany do koszyka!</p>";
}

// Wyświetlanie zawartości koszyka
$koszyk = isset($_SESSION['koszyk']) ? $_SESSION['koszyk'] : [];
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style2.css">
    <title>Koszyk - SnekStore</title>
</head>
<body>
    <h1>Koszyk</h1>

    <?php if (count($koszyk) > 0) : ?>
        <table>
            <tr>
                <th>Model</th>
                <th>Ilość</th>
            </tr>
            <?php foreach ($koszyk as $produkt) : ?>
                <tr>
                    <td><?php echo $produkt['model']; ?></td>
                    <td><?php echo $produkt['ilosc']; ?></td>
                </tr>
            <?php endforeach; ?>
        </table>
        <form method="POST" action="zamowienie.php">
            <input type="submit" value="Złóż zamówienie">
        </form>
    <?php else : ?>
        <p>Twój koszyk jest pusty!</p>
    <?php endif; ?>

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
