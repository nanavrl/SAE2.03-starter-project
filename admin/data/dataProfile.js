// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~viroulaud8/SAE2.03-starter-project";



let DataProfile = {};


DataProfile.addProfile = async function (fdata) {
  let config = {method: "POST", body: fdata};
  let answer = await fetch(HOST_URL + "/server/script.php?todo=addProfile", config);
  let data = await answer.json();
  return data;
};

DataProfile.getProfiles = async function () {
  let answer = await fetch(HOST_URL + "/server/script.php?todo=readProfile");
  let data = await answer.json();
  return data;
};

DataProfile.modify = async function (fdata) {
  let config = {
    method: "POST", // Méthode HTTP
    body: fdata, // Données envoyées sous forme de FormData
  };

  let answer = await fetch(
    HOST_URL + "/server/script.php?todo=modifyProfile",
    config
  );

  let data = await answer.json();
  return data;
};


DataProfile.read = async function () {
  let answer = await fetch(HOST_URL + "/server/script.php?todo=readProfile");
  
  let Profiles = await answer.json();
  return Profiles;
};


export { DataProfile };