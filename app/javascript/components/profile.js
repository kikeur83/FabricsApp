const profile = () => {
   const buttons = document.querySelectorAll('.btnlinks')

   buttons.forEach(button => {
    button.addEventListener('click', (e) => {
        e.preventDefault();
        const pages = document.querySelectorAll('.user-page-modal')
        pages.forEach(page => {
            page.classList.add('d-none');
        })
        const target = document.querySelector(`.${e.currentTarget.innerText.toLowerCase()}`)
        target.classList.remove('d-none');
        })

   })

}

export{profile}