// Logo Container to Main Page

const logoButton = document.getElementById("logoToMainPage");
logoButton.addEventListener('click', () => {
    window.location.href = "index.jsp";
})

// Event Listener del link Comprar Tickets del Header

const linkComprarTickets = document.querySelector('.tickets');
linkComprarTickets.addEventListener('click', () => {
    let urlRedirect = "comprar_tickets.jsp";

    window.location.href = urlRedirect;
})

// Boton Toggle para la version Mobile del sitio

const menu = document.querySelector('.menu-toggle');
const headerList = document.querySelector('.header-list');
menu.addEventListener('click', () => {
    headerList.classList.toggle('open');
});

// EventListener del boton Comprar

const btnComprar = document.querySelector('.btn-comprar');
btnComprar.addEventListener('click', () => {
    let urlRedirect = "comprar_tickets.jsp";

    window.location.href = urlRedirect;
})

// EventListener del boton Orador

const btnOrador = document.querySelector('.btn-orador');
const formArea = document.getElementById('formularioAnchor');
btnOrador.addEventListener('click', () => {
    formArea.scrollIntoView({behavior : "smooth"});
})

// Scroll Effect on Header 

document.addEventListener('DOMContentLoaded', function () {
    const links = document.querySelectorAll('header a');

    links.forEach(link => {
        link.addEventListener('click', smoothScroll);
    });

    function smoothScroll(e) {
        e.preventDefault();

        const targetId = this.getAttribute('href').substring(1);
        const targetElement = document.getElementById(targetId);
        const headerHeight = document.querySelector('header').offsetHeight;

        window.scrollTo({
            top: targetElement.offsetTop - headerHeight,
            behavior: 'smooth'
        });
    }
});