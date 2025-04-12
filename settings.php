<?php
session_start();
require 'config.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$user_id = $_SESSION['user_id'];
$stmt = $pdo->prepare("SELECT * FROM users WHERE id = ?");
$stmt->execute([$user_id]);
$user = $stmt->fetch();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Proses pembaruan password
    $current_password = $_POST['current_password'];
    $new_password = $_POST['new_password'];
    $confirm_password = $_POST['confirm_password'];

    // Verifikasi password saat ini
    $stmt = $pdo->prepare("SELECT password FROM users WHERE id = ?");
    $stmt->execute([$user_id]);
    $hashed_password = $stmt->fetchColumn();

    if (password_verify($current_password, $hashed_password)) {
        if ($new_password === $confirm_password) {
            $new_hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
            $stmt = $pdo->prepare("UPDATE users SET password = ? WHERE id = ?");
            if ($stmt->execute([$new_hashed_password, $user_id])) {
                echo "<p style='color: green;'>Password berhasil diperbarui!</p>";
            } else {
                echo "<p style='color: red;'>Terjadi kesalahan saat memperbarui password!</p>";
            }
        } else {
            echo "<p style='color: red;'>Password baru dan konfirmasi tidak cocok!</p>";
        }
    } else {
        echo "<p style='color: red;'>Password saat ini salah!</p>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <header>
        <nav>
            <ul class="navbar">
                <li><a href="dashboard.php">Home</a></li>
                <li><a href="profile.php">Profile</a></li>
                <li><a href="settings.php">Settings</a></li>
                <li><a href="logout.php">Logout</a></li>
            </ul>
        </nav>
    </header>
    <div class="container">
        <div class="settings-message">
            <h2>Change Password</h2>
            <form action="settings.php" method="POST">
                <div class="field">
                    <label for="current_password">Current Password:</label>
                    <input type="password" name="current_password" id="current_password" required>
                </div>
                <div class="field">
                    <label for="new_password">New Password:</label>
                    <input type="password" name="new_password" id="new_password" required>
                </div>
                <div class="field">
                    <label for="confirm_password">Confirm New Password:</label>
                    <input type="password" name="confirm_password" id="confirm_password" required>
                </div>
                <div class="field btn">
                    <input type="submit" value="Update Password">
                </div>
            </form>
        </div>
    </div>
    <footer>
        <p>&copy; <?php echo date("Y"); ?> nightmooncake</p>
    </footer>
</body>

</html>