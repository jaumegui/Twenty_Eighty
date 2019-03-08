const navBarHidden = () => {
  const nav = document.querySelector(".nav-side-menu");
  nav.addEventListener("click", (event) => {
    console.log(event.currentTarget.classList);
    event.currentTarget.classList.toggle(".folded");
  });
}

export { navBarHidden };
