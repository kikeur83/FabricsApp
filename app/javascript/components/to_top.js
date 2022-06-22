

// window.onscroll = function() {scrollFunction()};

// const scrollFunction = () => {
//   if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
//     mybutton.style.display = "block";
//   } else {
//     mybutton.style.display = "none";
//   }
// }

// const topFunction = () => {
//   console.log(mybutton);
//   document.body.scrollTop = 0;
//   document.documentElement.scrollTop = 0;
// }

const toTop = () => {
  const myButton = document.querySelector(".to-top");
  if (myButton) {
    const contDiv = document.querySelector(".bouton-top");
    const height = contDiv.offsetTop;
    window.addEventListener("scroll", () => {
      if (document.body.scrollTop > height || document.documentElement.scrollTop > height) {
        myButton.style.display = "block";
      } else {
        myButton.style.display = "none";
      }
    })
    myButton.addEventListener("click", () => {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    })
  }
}

export{toTop}
