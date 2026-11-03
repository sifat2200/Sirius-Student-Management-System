<?php
// Configure these environment variables for your local or hosted database.
// XAMPP defaults are provided for local development only.
$svName = getenv("DB_HOST") ?: "localhost";
$userName = getenv("DB_USER") ?: "root";
$password = getenv("DB_PASSWORD") !== false ? getenv("DB_PASSWORD") : "";
$database = getenv("DB_NAME") ?: "student_management_system";

try {
    $conct = new PDO(
        "mysql:host=$svName;dbname=$database;charset=utf8mb4",
        $userName,
        $password
    );
    $conct->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    error_log("Connection failed: " . $e->getMessage());
    exit("A database error occurred. Please try again later.");
}
?>
