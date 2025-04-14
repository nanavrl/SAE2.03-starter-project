// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~viroulaud8/SAE2.03-starter-project";

let DataMovie = {};

// DataMovie.requestMovies = async function () {
//   // Récupération des films
//   let answer = await fetch(HOST_URL + "server/script.php?todo=getMovie");
//   let movies = await answer.json();
//   return movies;
// };

DataMovie.requestMovies = async function (age = 100) {
  let answer = await fetch(HOST_URL + `/server/script.php?todo=readMoviesCategory&age=${age}`);
  let movies = await answer.json();
  return movies;
};

DataMovie.requestMovieDetails = async function (movieId) {
  
  let answer = await fetch(HOST_URL + `/server/script.php?todo=readMovieDetail&id=${movieId}` );
  let movieDetails = await answer.json();
  return movieDetails;
};

DataMovie.requestCategories = async function () {
  let answer = await fetch(HOST_URL + "/server/script.php?todo=readMoviesCategory");
  let categories = await answer.json();
  return categories;
};


DataMovie.addFavoris = async function (id, profileId) {
  console.log(`Requête envoyée : movieId=${id}, profileId=${profileId}`);
  let response = await fetch(
    `${HOST_URL}/server/script.php?todo=addFavoris&movieId=${id}&profileId=${profileId}`
  );
  let data = await response.json();
  console.log("Réponse du serveur :", data);
  return data;
};

DataMovie.getFavoris = async function (profileId) {
  let response = await fetch(
    `${HOST_URL}/server/script.php?todo=getFavoris&profileId=${profileId}`
  );
  let data = await response.json();
  return data;
};

// On exporte la fonction DataMovie.requestMovies
export { DataMovie };