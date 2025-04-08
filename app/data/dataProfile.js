// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~viroulaud8/SAE2.03-starter-project";

let DataProfile = {};

DataProfile.requestProfiles = async function () {
  let answer = await fetch(HOST_URL + "/server/script.php?todo=getProfiles");
  let profiles = await answer.json();
  return profiles;
};

export { DataProfile };