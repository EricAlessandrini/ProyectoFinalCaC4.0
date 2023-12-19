package services;

import java.util.List;

import models.Orador;

public interface OradorService {

	public void guardarOrador(Orador orador);
	public List<Orador> listadoOradoresInscriptos();
}
