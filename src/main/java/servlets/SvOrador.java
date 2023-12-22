package servlets;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

import entitymanagerutil.EntityManagerUtil;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Orador;
import repositories.OradorRepositoryImpl;
import services.OradorService;
import services.OradorServiceImpl;

@WebServlet(name = "SvOrador", urlPatterns = {"/SvOrador"})
public class SvOrador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private EntityManager entityManager;

	private OradorService oradorService;

    public SvOrador() {
        entityManager = EntityManagerUtil.getEntityManager();
        this.oradorService = new OradorServiceImpl(new OradorRepositoryImpl(entityManager));
    }

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();

		List<Orador> oradores = oradorService.listadoOradoresInscriptos();
		oradores.forEach(o -> entityManager.refresh(o));

		sesion.setAttribute("oradores", oradores);

		response.sendRedirect("listado_oradores.jsp");

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LocalDateTime fechaActual = LocalDateTime.now();
		Orador nuevoOrador = new Orador(request.getParameter("nombre"),
				request.getParameter("apellido"),
				request.getParameter("email"),
				request.getParameter("temario"));
		nuevoOrador.setFechaAlta(fechaActual);

		oradorService.guardarOrador(nuevoOrador);

		response.sendRedirect("index.jsp");
	}

}
