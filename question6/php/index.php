<?php 

const DB_SERVER = "mysql:host=mariadb_question6;dbname=question6";
const DB_USER = "root";
const DB_PWD = "root";

$options = array(
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, // gérer les erreurs en tant qu'exception
    PDO::ATTR_EMULATE_PREPARES => false // faire des vrais requêtes préparées et non une émulation
);

function getArticles(PDO $PDO){
    $sql = "SELECT * FROM articles";
    $result = $PDO->query($sql);

    $articles = $result->fetchAll(PDO::FETCH_ASSOC);

    $result->closeCursor();

    return $articles;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Docker - Question 6</title>
</head>
<body>

    <div>
        <h2 class="mt-5">Liste des articles</h2>
            <?php 
                try {
                    $PDO = new PDO(DB_SERVER, DB_USER, DB_PWD, $options);
                    $articles = getArticles($PDO);
                    foreach ($articles as $article) { 
                    ?>
                        <div class="card mt-5">
                        <div class="card-header">
                            <h2 class="h3"><?= $article["title"] ?>
                        </div>
                        <div class="card-body">
                            <p class="card-text"><?= $article["content"] ?></p>
                        </div>
                        </div>
            <?php   
                }} catch (PDOException $pe) {
                    echo 'ERREUR :', $pe->getMessage();
                }
            ?>
    </div>


    <div>
        <form method="POST">
            <label for="title">Titre :</label>
            <input type="text" name="title" />

            <label for="content">Description :</label>
            <textarea name="content" /></textarea>
            <input type="submit" name="submit" />
        </form>

        <?php

        if(isset($_POST['submit'])) {
            $query = $PDO->prepare("INSERT INTO articles(title, content) 
                                    VALUES('{$_POST['title']}', '{$_POST['content']}');");
            $query->execute();
        }
        ?>

    </div>
</body>
</html>

