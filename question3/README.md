## QUESTION 3 ##

`path` --> permet de donner le nom complet du répertoire du script peu importe d'où il est appelé.  

`docker network create bridge` --> permet de créer un network et d'ensuite faire la liaison entre nos deux containers qui sont créer juste après.  

`docker run` --> Permet de lancer un container Docker.  
`-d` --> Permet d'exécuter le container en arrière-plan.  
`--name` --> Permet de déclarer le nom de notre container Nginx. Dans cet exemple notre container s'appel 'nginx_question1'  
`-p` --> Permet de définir le port sur lequel lancer notre container.