## QUESTION 3 ##

`path` --> permet de donner le nom complet du répertoire du script peu importe d'où il est appelé.  

 # Création du network #

`docker network create bridge` --> permet de créer un network et d'ensuite faire la liaison entre nos deux containers qui sont créer juste après.  

# Connection entre Ngninx et PHP #

Dans notre configuration, on lance un server proxy sur le port 80.  
le root permet de definir le chemin, qui ici est le même que tout les fichiers dans un container PHP.  
Enfin on y ajoute le FCGI Protocol, qui permet au proxy Ngninx créé par la configuration de faire des requête au PHP.
Cette configuration correspond a la config par default pour lier notre container Ngninx à notre container PHP.  

# Docker Compose File #

le champ `Version` va nous permettent de définir quelle version de docker compose va être appliqué sur notre fichier.  
le champ `Services` nous permet de définir les différents containers qui vont composer notre docker-compose file.  
Ensuite nous définissons les noms de nos containers, ici il s'agit de ngnix_question5 et php_question5.  
A l'intérieur de chaque `Services` nous passons les paramètres nécessaires au bon fonctionnement de nos containers.  Ici nous passons donc l'image a laquelle va se référer le container, le port sur lequel nous voulons que ce dernier ce lance, et enfin le volume, qui va nous servir a définir la data que va renvoyer notre container.  