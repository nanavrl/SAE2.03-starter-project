let templateFile = await fetch("./component/SearchBar/template.html");
let template = await templateFile.text();

let SearchBar = {};

SearchBar.format = async function () {
  return template;
};


export { SearchBar };