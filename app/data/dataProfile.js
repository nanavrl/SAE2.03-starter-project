// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~viroulaud8/SAE2.03-starter-project";


let DataProfile = {};


DataProfile.read = async function () {
  let answer = await fetch(HOST_URL + "/server/script.php?todo=readProfile");
  
  let Profiles = await answer.json();
  return Profiles;
};


DataProfile.readOne = async function (id) {
  const response = await fetch(`${HOST_URL}/server/script.php?todo=readProfile&id=${id}`);
  if (!response.ok) {
    console.error("Erreur lors de la récupération du profil :", response.statusText);
    return null;
  }
  const profile = await response.json();
  return profile;
};


DataProfile.getFavoris = async function () {
  let response = await fetch(
    `${HOST_URL}/server/script.php?todo=getFavoris&id=${id}`
  );
  let data = await response.json();
  return data;
};


// On exporte la fonction DataProfile.read
export { DataProfile };

