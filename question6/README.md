## QUESTION 4 ##

`path` --> permet de donner le nom complet du répertoire du script peu importe d'où il est appelé.  
 
 # Création du network #

`docker network create bridge` --> permet de créer un network et d'ensuite faire la liaison entre nos deux containers qui sont créer juste après.  

# Connection entre Ngninx et PHP #

Dans notre configuration, on lance un server proxy sur le port 80.  
le root permet de definir le chemin, qui ici est le même que tout les fichiers dans un container PHP.  
Enfin on y ajoute le FCGI Protocol, qui permet au proxy Ngninx créé par la configuration de faire des requête au PHP.
Cette configuration correspond a la config par default pour lier notre container Ngninx à notre container PHP.  


# Installions de l'extension PDO PHP et connection à la base de donnée #

`tag`permet de créer une balise TARGET_IMAGE qui fait référence à une SOURCE_IMAGE. On donne ensuite le chemin de notre dockerfile .

Dans notre dockerfile, nous installons l'extension PHP PDO via l'interface de PHP8.  
Nous faisons cela à travers la commande `RUN docker-php-ext-install pdo pdo_mysql`.  
L'extension PHP Data Objects (PDO) est une excellente interface pour accéder à une base de données depuis PHP.  

`Docker exec` va nous permettent d'executer une tache dans un container déjà lancé.  
Dans notre cas, nous demandons au container mariadb_question4 d'excuter une script `sql.sh` qui est nécessaire au lancement de notre base de donnée puisqu'il contient les variables d'environnements. il nous permet également d'importer directement notre fichier sql.sql dans la base de donnée.  

# Docker Compose File #

# Docker Compose File #

le champ `Version` va nous permettent de définir quelle version de docker compose va être appliqué sur notre fichier.  
le champ `Services` nous permet de définir les différents containers qui vont composer notre docker-compose file.  
Ensuite nous définissons les noms de nos containers, ici il s'agit de ngnix_question6, php_question6 et mariadb_question6.  
A l'intérieur de chaque `Services` nous passons les paramètres nécessaires au bon fonctionnement de nos containers.  Ici nous passons donc l'image a laquelle va se référer le container, le port sur lequel nous voulons que ce dernier ce lance, et enfin le volume, qui va nous servir a définir la data que va renvoyer notre container.  