
const html = document.querySelector("html")
const checkbox = document.querySelector("input[name=theme]")

const getStyle = (element, style) =>
  window
    .getComputedStyle(element)
    .getPropertyValue(style)

const initialColors = {
  title: getStyle(html, "--title"),
  background: getStyle(html, "--background"),
  bg: getStyle(html, "--bg"),
  bgBox: getStyle(html, "--bg-box"),
  colorHeadings: getStyle(html, "--color-headings"),
  colorText: getStyle(html, "--color-text"),
  white: getStyle(html, "--white"),
  black: getStyle(html, "--black"),
  brown: getStyle(html, "--brown"),
  icon: getStyle(html, "--icon"),
  box: getStyle(html, "--box"),
  input: getStyle (html, "--input"),
  //pegar este estilo do CSS
}

const darkMode = {
  input: "#777777",
  title: "#fff",
  background: "#000",
  bg:"#000",
  bgBox: "#000",
  colorHeadings: "#fff",
  colorButton: "#777777",
  colorText: "#fff",
  white: "#525252",
  black: "#fff",
  brown: "#fff",
  icon: "#fff",
  box: "#303030",
}

const transformKey = key => "--" + key.replace(/([A-Z])/, "-$1").toLowerCase()

const changeColors = (colors) => {
 Object.keys(colors).map(key =>
  html.style.setProperty(transformKey(key), colors[key])
  )
}

checkbox.addEventListener("change", ({target}) => {
  target.checked ? changeColors(darkMode) : changeColors(initialColors)
})


const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");

sign_up_btn.addEventListener("click", () => {
  container.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener("click", () => {
  container.classList.remove("sign-up-mode");
});


function getInputValue(){
	var user_name = document.getElementById("user_name").value;
	var user_email = document.getElementById("user_email").value;
	var user_pass = document.getElementById("user_pass").value;
	alert(inpuVal);
};

function acessUser (){
	var data_user = getInputValue.value

}