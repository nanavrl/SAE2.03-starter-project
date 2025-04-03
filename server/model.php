<?php
/**
 * Ce fichier contient toutes les fonctions qui réalisent des opérations
 * sur la base de données, telles que les requêtes SQL pour insérer, 
 * mettre à jour, supprimer ou récupérer des données.
 */

/**
 * Définition des constantes de connexion à la base de données.
 *
 * HOST : Nom d'hôte du serveur de base de données, ici "localhost".
 * DBNAME : Nom de la base de données
 * DBLOGIN : Nom d'utilisateur pour se connecter à la base de données.
 * DBPWD : Mot de passe pour se connecter à la base de données.
 */
define("HOST", "localhost");
define("DBNAME", "viroulaud8");
define("DBLOGIN", "viroulaud8");
define("DBPWD", "viroulaud8");

// function getMovie(){
//     // Connexion à la base de données
//     $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
//     // Requête SQL pour récupérer le nom, l'image et l'id du film
//     $sql = "SELECT id, name, image FROM Movie";

//     // exécution de la requête SQL via la connexion à la bdd et récupération de la réponse sur serveur MySQL
//     $answer = $cnx->query($sql);
//     // conversion des lignes récupérées en tableau d'objets (chaque ligne devient un objet)
//     $res = $answer->fetchAll(PDO::FETCH_OBJ);
//     // et on renvoie le tout.
//     return $res; // Retourne les résultats
// }

function getAllMovies(){
    // Connexion à la base de données
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
    // Requête SQL pour récupérer le menu avec des paramètres
    $sql = "select id, name, image from Movie";
    // Prépare la requête SQL
    $stmt = $cnx->prepare($sql);
    // Exécute la requête SQL
    $stmt->execute();
    // Récupère les résultats de la requête sous forme d'objets
    $res = $stmt->fetchAll(PDO::FETCH_OBJ);
    return $res; // Retourne les résultats
}