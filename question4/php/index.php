<form method="POST">
    <label for="username">Username :</label>
    <input type="text" name="username" />
    <input type="submit" value="Add" />
</form>
<hr>

<?php
$server = "mariadb_question4";
$username = "root";
$password = "root";
$database = "question4";

$conn = new PDO("mysql:host=$server;dbname=$database", $username, $password);

if (array_key_exists("firstname", $_POST)) {
    $query = $conn->prepare("INSERT INTO users(username) VALUES('{$_POST['username']}');");
    $query->execute();
}

$query = $conn->prepare("SELECT id, username FROM users");
$query->execute();
$query->setFetchMode(PDO::FETCH_ASSOC);

foreach ($query->fetchAll() as $k => $v) {
    echo "$k {$v['username']}<br>";
}
