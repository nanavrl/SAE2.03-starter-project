// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "..";

let DataMovie = {};

DataMovie.requestMovies = async function (age = 100) {
  let answer = await fetch(
    HOST_URL + `/server/script.php?todo=readMoviesCategory&age=${age}`
  );
  let movies = await answer.json();
  return movies;
};

DataMovie.requestMovieDetails = async function (movieId) {
  let answer = await fetch(
    HOST_URL + `/server/script.php?todo=readMovieDetail&id=${movieId}`
  );
  let movieDetails = await answer.json();
  return movieDetails;
};

DataMovie.requestCategories = async function () {
  let answer = await fetch(
    HOST_URL + "/server/script.php?todo=readMoviesCategory"
  );
  let categories = await answer.json();
  return categories;
};

DataMovie.addFavoris = async function (id_profil, id_movie) {
  let answer = await fetch(
    HOST_URL +
      "/server/script.php?todo=addFavoris&id_profil=" +
      id_profil +
      "&id_movie=" +
      id_movie
  );

  let data = await answer.json();
  return data;
};

DataMovie.removeFavoris = async function (id_profil, id_movie) {
  let answer = await fetch(
    HOST_URL +
      "/server/script.php?todo=removeFavoris&id_profil=" +
      id_profil +
      "&id_movie=" +
      id_movie
  );

  let data = await answer.json();
  return data;
};

DataMovie.readMoviesRecommended = async function () {
  let response = await fetch(HOST_URL +
      "/server/script.php?todo=readMoviesRecommended"
  );

  // Conversion de la réponse en JSON
  let data = await response.json();
  return data;
};

DataMovie.requestsearch = async function (valeur) {
  try {
    const response = await fetch(
      HOST_URL + "/server/script.php?todo=searchMovie&title=" + valeur
    );

    if (!response.ok) {
      console.error("Erreur HTTP:", response.status);
      return [];
    }

    const movies = await response.json();
    console.log("Films reçus :", movies);
    return movies;
  } catch (e) {
    console.error("Erreur dans requestsearch:", e);
    return [];
  }
};



// On exporte la fonction DataMovie.requestMovies
export { DataMovie };

