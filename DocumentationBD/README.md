Itération 56 : ajouter une table utilisateur

- nom
- age ()
- image avatar



## Choix des ajouts dans la base de donnée

Itération 5 : Ajout de la table 'Profil'. 
Pour permettre l'ajout de profils utilisateurs, j'ai créé une table 'Profil' avec les colonnes suivantes : id en INT avec auto-incrémentation, name en VARCHAR(255), avatar en VARCHAR(255) et min_age en INT(11). Pour les valeurs, j'ai décidé de conserver les mêmes que celles utilisées dans les tables 'Movie' et 'Category'. Concernant les noms, j'ai choisi de les garder en anglais et tout en minuscule.

Itération 9 : Ajout de la table 'Favorites'. 
Pour permettre l'ajout d'un film aux favoris pour l'utilisateur sélectionné, j'ai créé une table 'Favorites' avec les colonnes suivantes : id en INT avec auto-incrémentation, id_profil, qui est une clé étrangère pointant vers l'id de la table 'Profil', et id_movie, qui est une clé étrangère pointant vers l'id de la table 'Movie'. Concernant les noms, j'ai choisi de les garder en anglais et tout en minuscule.

Itération 11 : Ajout de la colonne 'featured'. 
Pour permettre la mise en avant de certains films, j'ai ajouté une colonne is_featured à la table 'Movie'. Cette colonne est de type TINYINT(1), afin de simuler un booléen, avec une valeur par défaut définie à 0.