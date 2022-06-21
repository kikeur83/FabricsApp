const rectangle = () => {
  const rectangleDiv = document.querySelector(".rectangle");
  if (rectangleDiv) {
    const longInput = document.querySelector("#long");
    const largInput = document.querySelector("#larg");
    if (longInput.value != "" && largInput.value != "") {
      const width = rectangleDiv.offsetWidth;
      const height = width * (largInput.value / longInput.value);
      rectangleDiv.style.height = `${height}px`;
    }
  }
}

export{rectangle}
