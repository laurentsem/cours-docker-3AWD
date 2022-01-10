## QUESTION 3 ##

`path` --> permet de donner le nom complet du répertoire du script peu importe d'où il est appelé.  

 # Création du network #

`docker network create bridge` --> permet de créer un network et d'ensuite faire la liaison entre nos deux containers qui sont créer juste après.  

# Connection entre Ngninx et PHP #

Dans notre configuration, on lance un server proxy sur le port 80.  
le root permet de definir le chemin, qui ici est le même que tout les fichiers dans un container PHP.  
Enfin on y ajoute le FCGI Protocol, qui permet au proxy Ngninx créé par la configuration de faire des requête au PHP.
Cette configuration correspond a la config par default pour lier notre container Ngninx à notre container PHP.  


# Lancement et configuration des containers #

`docker run` --> Permet de lancer un container Docker.  
`-d` --> Permet d'exécuter le container en arrière-plan.  
`--name` --> Permet de déclarer le nom de notre container Nginx. Dans cet exemple notre container s'appel 'nginx_question1'  
`-p` --> Permet de définir le port sur lequel lancer notre container.