package services;

import models.Ticket;

public interface TicketService {

	void guardarNuevoTicket(Ticket ticket);
	void editarTicketExistente(Ticket ticket);
}
