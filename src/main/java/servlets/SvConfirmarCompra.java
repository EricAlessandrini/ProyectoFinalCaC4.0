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

@WebServlet(name = "SvConfirmarCompra", urlPatterns = {"/SvConfirmarCompra"})
public class SvConfirmarCompra extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private EntityManager entityManager;

	private TicketService ticketService;


    public SvConfirmarCompra() {
    	this.entityManager = EntityManagerUtil.getEntityManager();
    	this.ticketService = new TicketServiceImpl(new TicketRepositoryImpl(entityManager));
    }

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession sesion = request.getSession();

		Ticket ticketModificado = (Ticket) sesion.getAttribute("nuevoTicket");
		ticketModificado.setNombre(request.getParameter("nombre"));
		ticketModificado.setApellido(request.getParameter("apellido"));
		ticketModificado.setEmail(request.getParameter("email"));
		ticketModificado.setCantidad(Integer.parseInt(request.getParameter("cantidad")));

		Integer categoriaDescuento = Integer.parseInt(request.getParameter("categoria_descuento"));
		switch(categoriaDescuento) {
			case 1:
				ticketModificado.setCategoria("Estudiante");
				ticketModificado.setValorTotal((200.0 * ticketModificado.getCantidad()) * 0.2);
				break;
			case 2:
				ticketModificado.setCategoria("Trainee");
				ticketModificado.setValorTotal((200.0 * ticketModificado.getCantidad()) * 0.5);
				break;
			case 3:
				ticketModificado.setCategoria("Junior");
				ticketModificado.setValorTotal((200.0 * ticketModificado.getCantidad()) * 0.85);
				break;
			default:
				ticketModificado.setCategoria("Sin descuento");
				ticketModificado.setValorTotal(200.0 * ticketModificado.getCantidad());
		}

		ticketService.editarTicketExistente(ticketModificado);

		response.sendRedirect("comprar_tickets.jsp");

	}

}
