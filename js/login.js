

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