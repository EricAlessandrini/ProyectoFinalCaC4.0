<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style_comprar_tickets.css">
    <title>Comprar Tickets</title>
</head>
<body>
    <header class="toggle-list">
        <nav>
            <div class="logo-container" id="logoToMainPage">
                <img src="img/codoacodo.png" alt="Logo del programa Codo a Codo 4.0" class="logo">
                <p>Conf Bs As</p>
            </div>

            <ul class="header-list">
                <li><a href="#" class="tickets">Volver</a></li>
            </ul>

            <svg class="menu-toggle" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M4 7L7 7M20 7L11 7" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                <path d="M20 17H17M4 17L13 17" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                <path d="M4 12H7L20 12" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                </svg>
        </nav>
    </header>
    <main>
        <!-- Comienzo de las cartes que muestran los descuentos-->
        <section class="tarjetas_descuentos">
            <div class="tarjeta_estudiante">
                <h4>Estudiante</h4>
                <p>Tienen un descuento</p>
                <p class="valor_descuento">80%</p>
                <p class="requisito">* presentar documentacion</p>
            </div>
            <div class="tarjeta_trainee">
                <h4>Trainee</h4>
                <p>Tienen un descuento</p>
                <p class="valor_descuento">50%</p>
                <p class="requisito">* presentar documentacion</p>
            </div>
            <div class="tarjeta_junior">
                <h4>Junior</h4>
                <p>Tienen un descuento</p>
                <p class="valor_descuento">15%</p>
                <p class="requisito">* presentar documentacion</p>
            </div>
        </section>
        <!-- Formulario de compra de los tickets -->
        <section class="formulario_compra">
            <p>VENTA</p>
            <h1>VALOR DEL TICKET $200</h1>
            <form action="SvTicket" method="POST" class="form_tickets" id="form_tickets">
                <input type="text" name="nombre" id="nameUser" placeholder="Nombre" required>
                <input type="text" name="apellido" id="lastnameUser" placeholder="Apellido" required>
                <input type="email" name="email" id="emailUser" placeholder="Correo Electrónico" required>
                <input type="number" name="cantidad" id="ticketAmount" placeholder="Cantidad de entradas" min="1" required>
                <select name="categoria_descuento" id="discountCat" required>
                    <option value="0">--Seleccionar un descuento--</option>
                    <option value="1">Estudiante</option>
                    <option value="2">Trainee</option>
                    <option value="3">Junior</option>
                </select>
                <div class="total_compra">
                    <p>Total a pagar: $</p>
                    <p class="valor_de_la_compra" id="valorTotalCompra"></p>
                    <input type="hidden" name="valorCompra" id="valorCompra" value="">
                </div>
                <div class="botones_form">
                    <button type="reset" class="boton_formulario_reset">Borrar</button>
                    <button type="button" class="boton_formulario_resumen" id="resumen">Resumen</button>
                    <button type="submit" class="boton_formulario_envio" id="comprar">Comprar</button>
                </div>
            </form>
        </section>
    </main>
    
    
    <%@ include file="footer.jsp" %>
    <script src="js/script_comprar_tickets.js"></script>
</body>
</html>