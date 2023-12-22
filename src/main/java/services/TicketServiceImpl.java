package services;

import models.Ticket;
import repositories.TicketRepository;

public class TicketServiceImpl implements TicketService{

	private TicketRepository ticketRepository;

	public TicketServiceImpl(TicketRepository ticketRepository) {
		this.ticketRepository = ticketRepository;
	}

	@Override
	public void guardarNuevoTicket(Ticket ticket) {
		ticketRepository.guardarNuevoTicket(ticket);
	}

	@Override
	public void editarTicketExistente(Ticket ticket) {
		ticketRepository.editarTicketExistente(ticket);
	}

}
