
let templateFile = await fetch("./component/Footer/template.html");
let template = await templateFile.text();

let Footer = {};

Footer.format = function () {
 let footerHtml = template;

 // Remplacer les placeholders dans le template par le contenu réel
 footerHtml = footerHtml.replace("{{faq}}", "FAQ / Assistance");
 footerHtml = footerHtml.replace("{{contact}}", "Nous contacter");
 footerHtml = footerHtml.replace("{{cookies}}", "Gestion des cookies");
 footerHtml = footerHtml.replace("{{legal}}", "CGU / Mentions légales / Politique de confidentialité");
 footerHtml = footerHtml.replace("{{partners}}", "Partenaires");
 footerHtml = footerHtml.replace("{{followUs}}", "Nous suivre");
 footerHtml = footerHtml.replace("{{newsletter}}", "S'inscrire à la newsletter");
 footerHtml = footerHtml.replace("{{founders}}", "Membres fondateurs");
 footerHtml = footerHtml.replace("{{organizations}}", "Les organismes membres de l'association La Cinémathèque des Cinéastes");
 footerHtml = footerHtml.replace("{{support}}", "LaCinetek est soutenue par");
 footerHtml = footerHtml.replace("{{credits}}", "Remerciements - Crédits");

 return footerHtml;
};

document.addEventListener("DOMContentLoaded", function() {
 const footer = document.getElementById('footer-container');
 footer.innerHTML = Footer.format();
});

export { Footer };
