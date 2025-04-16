let templateFile = await fetch('./component/ProfileForm/template.html');
let template = await templateFile.text();


let ProfileForm = {};

ProfileForm.format = function(profiles, handler) {
  let html = template;
  let options = "";
  for (let i = 0; i < profiles.length; i++) {
    const p = profiles[i];
    options += `<option value="${p.id}" data-name="${p.name}" data-avatar="${p.avatar}" data-age="${p.min_age}">${p.name}</option>`;
  }
  
  html = html.replace("{{options}}", options);
  html = html.replace("{{handler}}", handler || "");
  return html;
};

export {ProfileForm};