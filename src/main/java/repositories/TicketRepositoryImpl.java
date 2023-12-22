package repositories;

import jakarta.persistence.EntityManager;
import models.Ticket;

public class TicketRepositoryImpl implements TicketRepository{

	private EntityManager entityManager;

	public TicketRepositoryImpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	@Override
	public void guardarNuevoTicket(Ticket ticket) {
		try {
			entityManager.getTransaction().begin();

			if(ticket != null) {
				entityManager.persist(ticket);
				entityManager.getTransaction().commit();
			} else {
				entityManager.getTransaction().rollback();
				throw new RuntimeException("No se han podido guardar los datos...");
			}
		} catch (Exception e) {
			if(entityManager.getTransaction().isActive()) {
				entityManager.getTransaction().rollback();
			}
			e.printStackTrace();
		}
	}

	@Override
	public void editarTicketExistente(Ticket ticket) {
		Ticket ticketGuardado = entityManager.find(Ticket.class, ticket.getId());
		ticketGuardado.setNombre(ticket.getNombre());
		ticketGuardado.setApellido(ticket.getApellido());
		ticketGuardado.setEmail(ticket.getEmail());
		ticketGuardado.setCantidad(ticket.getCantidad());
		ticketGuardado.setCategoria(ticket.getCategoria());
		ticketGuardado.setValorTotal(ticket.getValorTotal());

		try {
			entityManager.getTransaction().begin();
			entityManager.persist(ticketGuardado);
			entityManager.getTransaction().commit();
		} catch (Exception e) {
			if(entityManager.getTransaction().isActive()) {
				entityManager.getTransaction().rollback();
			}
			e.printStackTrace();
		}
	}

}
