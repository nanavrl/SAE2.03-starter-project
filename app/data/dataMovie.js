// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~viroulaud8/SAE2.03-starter-project";

let DataMovie = {};

// DataMovie.requestMovies = async function () {
//   // Récupération des films
//   let answer = await fetch(HOST_URL + "server/script.php?todo=getMovie");
//   let movies = await answer.json();
//   return movies;
// };

DataMovie.requestMovies = async function (age = 0) {
  let answer = await fetch(HOST_URL + `/server/script.php?todo=readmovies&age=${age}`);
  let movies = await answer.json();
  return movies;
};

DataMovie.requestMovieDetails = async function (movieId) {
  
  let answer = await fetch(HOST_URL + `/server/script.php?todo=readMovieDetail&id=${movieId}` );
  let movieDetails = await answer.json();
  return movieDetails;
};

DataMovie.requestMoviesByCategory = async function () {
  let answer = await fetch(HOST_URL + "/server/script.php?todo=readMoviesCategory");
  let categories = await answer.json();
  return categories;
};


DataMovie.requestMoviesByOneCategory = async function () {
  let answer = await fetch(HOST_URL + "/server/script.php?todo=readMoviesCategory&age=${age}");
  let categories = await answer.json();
  return categories;
};
// On exporte la fonction DataMovie.requestMovies
export { DataMovie };