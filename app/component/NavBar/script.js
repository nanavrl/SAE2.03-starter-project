let templateFile = await fetch("./component/NavBar/template.html");
let template = await templateFile.text();

let NavBar = {};

NavBar.format = function (hAbout, hShowMovies, profiles) {
  let html = template;
  html = html.replace("{{hAbout}}", hAbout);
  html = html.replace("{{hShowMovies}}", hShowMovies);

  let options = `<option value="">Choisir un profil</option>`; // Option par défaut
  for (let i = 0; i < profiles.length; i++) {
    let p = profiles[i];
    options += `<option value="${p.id}">${p.name}</option>`;
  }

  let image = profiles[0]?.avatar || "";

  html = html.replace("{{options}}", options);
  html = html.replace("{{image}}", image);
  html = html.replace("{{handler}}", "C.handlerProfile()");

  return html;
};

export { NavBar };
