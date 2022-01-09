## QUESTION 4 ##

`path` --> permet de donner le nom complet du répertoire du script peu importe d'où il est appelé.  
 
 # Création du network #

`docker network create bridge` --> permet de créer un network et d'ensuite faire la liaison entre nos deux containers qui sont créer juste après.  

# Installions de l'extension PDO PHP et connection à la base de donnée #

`tag`permet de créer une balise TARGET_IMAGE qui fait référence à une SOURCE_IMAGE. On donne ensuite le chemin de notre dockerfile .

Dans notre dockerfile, nous installons l'extension PHP PDO via l'interface de PHP8.  
Nous faisons cela à travers la commande `RUN docker-php-ext-install pdo pdo_mysql`.  
L'extension PHP Data Objects (PDO) est une excellente interface pour accéder à une base de données depuis PHP.  

`Docker exec` va nous permettent d'executer une tache dans un container déjà lancé.  
Dans notre cas, nous demandons au container mariadb_question4 d'excuter une script `sql.sh` qui est nécessaire au lancement de notre base de donnée puisqu'il contient les variables d'environnements. il nous permet également d'importer directement notre fichier sql.sql dans la base de donnée.  

# Lancement des containers #

`docker run` --> Permet de lancer un container Docker.  

`-d` --> Permet d'exécuter le container en arrière-plan.  
`--name` --> Permet de déclarer le nom de notre container Nginx. Dans cet exemple notre container s'appel 'nginx_question1'.  
`-p` --> Permet de définir le port sur lequel lancer notre container.  
`-network` --> permet de lier le container au réseaux que nous avons créé juste au dessus
`-e` --> permet de définir une variable d'environnement. Dans notre cas on défini le mot de passe de MariaDB comme étant Root.  