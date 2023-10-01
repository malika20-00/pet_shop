let profile = document.querySelector(".profile");
let profileLink = document.getElementById("profile_link");
profileLink.addEventListener("click", function () {
  profile.classList.toggle("show");
});