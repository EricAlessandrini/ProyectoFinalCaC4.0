package servlets;

import java.io.IOException;

import entitymanagerutil.EntityManagerUtil;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Ticket;
import repositories.TicketRepositoryImpl;
import services.TicketService;
import services.TicketServiceImpl;

@WebServlet(name = "SvTicket", urlPatterns = {"/SvTicket"})
public class SvTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private TicketService ticketService;

	private EntityManager entityManager;
	

    public SvTicket() {
        this.entityManager = EntityManagerUtil.getEntityManager();
        this.ticketService = new TicketServiceImpl(new TicketRepositoryImpl(entityManager));
    }


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession sesion = request.getSession();

		Ticket nuevoTicket = new Ticket();
		nuevoTicket.setNombre(request.getParameter("nombre"));
		nuevoTicket.setApellido(request.getParameter("apellido"));
		nuevoTicket.setEmail(request.getParameter("email"));
		nuevoTicket.setCantidad(Integer.parseInt(request.getParameter("cantidad")));

		Integer categoriaTickets = Integer.parseInt(request.getParameter("categoria_descuento"));
		switch(categoriaTickets) {
			case 1:
				nuevoTicket.setCategoria("Estudiante");
				break;
			case 2:
				nuevoTicket.setCategoria("Trainee");
				break;
			case 3:
				nuevoTicket.setCategoria("Junior");
				break;
			default:
				nuevoTicket.setCategoria("Sin descuento");
		}

		nuevoTicket.setValorTotal(Double.parseDouble(request.getParameter("valorCompra")));

		sesion.setAttribute("nuevoTicket", nuevoTicket);

		ticketService.guardarNuevoTicket(nuevoTicket);

		response.sendRedirect("confirmacion_compra.jsp");

	}

}
