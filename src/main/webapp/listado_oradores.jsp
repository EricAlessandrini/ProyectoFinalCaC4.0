<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.List"%>
<%@page import="models.Orador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style_listado_oradores.css">
    <title>Listado de Oradores Ignite</title>
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
        <section class="texto_listado">
            <h1>LISTADO DE ORADORES</h1>
            <p>La siguiente tabla muestra las distintas charlas ignite que se daran a lo largo de la conferencia. 
            <br>Tenga en cuenta que el orden y el horario de la misma no esta determinado todavia.</p>
        </section>

        <div class="oradoresIgnite">
        
        	<% 
        		List<Orador> oradoresInscriptos = (List) request.getSession().getAttribute("oradores");
        	
        		for(Orador orador: oradoresInscriptos) {
        			LocalDateTime fechaAlta = orador.getFechaAlta();
        	        DateTimeFormatter formateador = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        	        String fechaFormateada = fechaAlta.format(formateador);
        			
        	%>
        	
            <table>
              <tr class="row">
                <th>ID</th>
                <td><%= orador.getId()%></td>
              </tr>
              <tr class="row">
                <th>Nombre</th>
                <td><%= orador.getNombre()%></td>
              </tr>
              <tr class="row">
                <th>Apellido</th>
                <td><%= orador.getApellido()%></td>
              </tr>
              <tr class="row">
                <th>Email</th>
                <td><%= orador.getEmail()%></td>
              </tr>
              <tr class="row">
                <th>Tema</th>
                <td><%= orador.getTema()%></td>
              </tr>
              <tr class="row">
                <th>Fecha de Alta</th>
                <td><%= fechaFormateada %></td>
              </tr>
            </table>
            
            <%}%>
        </div>
        
    </main>

    <!-- Comienzo del Footer de la pÃ¡gina-->
    <!-- Tengo que cambiar por el template footer.jsp -->
    <%@ include file="footer.jsp" %>
    <script src="js/script_comprar_tickets.js"></script>
</body>
</html>