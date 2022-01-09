CREATE DATABASE IF NOT EXISTS question4 CHARACTER SET utf8;
CREATE QUESTION4 'root'@'localhost' IDENTIFIED BY 'root';


USE question4;

CREATE TABLE IF NOT EXISTS articles (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    content TEXT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO articles (title, content) VALUES
("Qu'est-ce que le Lorem Ipsum ?", "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.")
