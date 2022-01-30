
const html = document.querySelector("html")
const checkbox = document.querySelector("input[name=theme]")

const getStyle = (element, style) =>
  window
    .getComputedStyle(element)
    .getPropertyValue(style)

const initialColors = {
  background: getStyle(html, "--background"),
  bg: getStyle(html, "--bg"),
  bgBox: getStyle(html, "--bg-box"),
  colorHeadings: getStyle(html, "--color-headings"),
  colorP: getStyle (html, "--color-p"),
  colorText: getStyle(html, "--color-text"),
  white: getStyle(html, "--white"),
  black: getStyle(html, "--black"),
  brown: getStyle(html, "--brown"),
  icon: getStyle(html, "--icon"),
  box: getStyle(html, "--box"),
  //pegar este estilo do CSS
}

const darkMode = {
  background: "#000",
  bg:"#303030",
  bgBox: "#000",
  colorHeadings: "#fff",
  colorButton: "#777777",
  colorP: "#777777",
  colorText: "#fff",
  white: "#000",
  black: "#fff",
  brown: "#fff",
  icon: "#fff",
  box: "#777777",
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


$('#header').prepend('<div id="menu-icon"><span class="first"></span><span class="second"></span><span class="third"></span></div>');
	
	$("#menu-icon").on("click", function(){
    $("nav").slideToggle();
    $(this).toggleClass("active");
});

