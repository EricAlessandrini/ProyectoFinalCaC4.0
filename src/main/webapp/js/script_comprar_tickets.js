// Logo to Main Page

const logoButton = document.getElementById("logoToMainPage");
logoButton.addEventListener('click', () => {
    window.location.href = "index.jsp";
})

// Funcion para el control del menu desplegable de la barra de navegacion en la parte mobile.

const menu = document.querySelector('.menu-toggle');
const headerList = document.querySelector('.header-list');
menu.addEventListener('click', () => {
    headerList.classList.toggle('open');
});

// Cálculo del total del formulario

const valorTicket = 200;
const valorTotal = document.getElementById("valorTotalCompra");
const cantidadTickets = document.getElementById("ticketAmount");
const descuentoAplicable = document.getElementById("discountCat");

const valorTotalInput = document.getElementById("valorCompra");
const btnResumen = document.getElementById("resumen");

var valor = 0;

function calcularTotalCompra(){
    
    switch(descuentoAplicable.value) {
        case "1":
            valor =  (valorTicket * cantidadTickets.value) * 0.2;
            break;
        case "2":
            valor = (valorTicket * cantidadTickets.value) * 0.5;
            break;
        case "3":
            valor = (valorTicket * cantidadTickets.value) * 0.85;
            break;
        default:
            valor = (valorTicket * cantidadTickets.value);
    }

    return valor;
}

// Validacion y Evento del boton "Resumen"

// Validacion usando expresiones regulares

function validacionCampos() {
    const nombresRegex = /^[A-Za-zÀ-ÖØ-öø-ÿ-' ]+$/;
    const emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;

    if (!nameUser.value || !nombresRegex.test(nameUser.value)){
        nameUser.style.border = "2px solid red";
        nameUser.placeholder = "Introduzca un nombre valido"
        return false;
    } else {
        nameUser.style.border = "";
        nameUser.placeholder = "Nombre";
    }

    if (!lastnameUser.value || !nombresRegex.test(lastnameUser.value)){
        lastnameUser.style.border = "2px solid red";
        lastnameUser.placeholder = "Introduzca un apellido valido";
        return false;
    } else {
        lastnameUser.style.border = "";
        lastnameUser.placeholder = "Apellido";
    }

    if (!emailUser.value || !emailRegex.test(emailUser.value)){
        emailUser.style.border = "2px solid red";
        emailUser.placeholder = "Introduzca un correo electronico valido";
        return false;
    } else {
        emailUser.style.border = "";
        emailUser.placeholder = "Correo Electronico";
    }

    return true;
}

btnResumen.addEventListener('click', () => {
    var camposValidados = validacionCampos();
    console.log(validacionCampos());
    if (camposValidados == false || !ticketAmount.value || !discountCat.value){
        alert("Por favor, complete todos los campos requeridos...");
    } else {
        valorTotal.textContent = calcularTotalCompra();
        valorCompra.value = calcularTotalCompra();
    }
})

const btnComprar = document.getElementById("comprar");

btnComprar.addEventListener('click', () => {
    var camposValidados = validacionCampos();
    console.log(validacionCampos());
    if (camposValidados == false || !ticketAmount.value || !discountCat.value){
        alert("Por favor, complete todos los campos requeridos...");
    } else {
        valorCompra.value = calcularTotalCompra();
    }
})

        

