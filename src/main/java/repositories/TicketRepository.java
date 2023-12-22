package repositories;

import models.Ticket;

public interface TicketRepository {

	void guardarNuevoTicket(Ticket ticket);
	void editarTicketExistente(Ticket ticket);
}
