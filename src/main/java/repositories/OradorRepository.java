package repositories;

import java.util.List;

import models.Orador;

public interface OradorRepository {

	public void guardarOrador(Orador orador);
	public List<Orador> obtenerOradoresInscriptos();
}
