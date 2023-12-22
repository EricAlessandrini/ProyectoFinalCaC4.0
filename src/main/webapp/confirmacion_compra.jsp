<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="models.Ticket"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style_confirmacion_compra.css">
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
                <li><a href="index.jsp" class="tickets">Volver</a></li>
            </ul>

            <svg class="menu-toggle" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M4 7L7 7M20 7L11 7" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                <path d="M20 17H17M4 17L13 17" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                <path d="M4 12H7L20 12" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                </svg>
        </nav>
    </header>
    
    <main>
        <section class="mensaje_usuario">
            <h1>Gracias por ser parte de esta conferencia!</h1>

            <p>A continuacion, te mostraremos los detalles de tu compra. <br>Por favor, corrobora que los datos sean correctos. <br>Sea que modifiquen los datos o no, presiona el boton "Confirmar" para finalizar.</p>
        </section>
        <section class="formulario_confirmacion_datos">
        
        	<% 
        		Ticket ticketReciente = (Ticket) request.getSession().getAttribute("nuevoTicket"); 
        	
        		System.out.println(ticketReciente);
        		String selectedCategoria = ticketReciente != null ? ticketReciente.getCategoria() : "0"; 
        	%>
        	
            <form action="SvConfirmarCompra" method="POST" class="form_confirmacion">
                <input type="text" name="nombre" id="name" value="<%=ticketReciente.getNombre()%>">
                <input type="text" name="apellido" id="lastName" value="<%=ticketReciente.getApellido()%>">
                <input type="text" name="email" id="email" value="<%=ticketReciente.getEmail()%>">
                <input type="number" name="cantidad" id="cantidadTickets" value="<%=ticketReciente.getCantidad()%>">
                <select name="categoria_descuento" id="categoriaDesc">
                    <option value="0" <%= selectedCategoria.equals("0") ? "selected" : "" %>>Sin descuento</option>
                    <option value="1" <%= selectedCategoria.equals("Estudiante") ? "selected" : "" %>>Estudiante</option>
                    <option value="2" <%= selectedCategoria.equals("Trainee") ? "selected" : "" %>>Trainee</option>
                    <option value="3" <%= selectedCategoria.equals("Junior") ? "selected" : "" %>>Junior</option>
                </select>
                <button type="submit">Confirmar datos</button>
            </form>
        </section>
    </main>

    <!-- Comienzo del Footer de la página-->
    <%@ include file="footer.jsp"%>
    <script src="js/script_comprar_tickets.js"></script>
</body>
</html>