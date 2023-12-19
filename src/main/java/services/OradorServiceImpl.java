package services;

import java.util.List;

import models.Orador;
import repositories.OradorRepository;
import repositories.OradorRepositoryImpl;

public class OradorServiceImpl implements OradorService{
	
	private OradorRepository oradorRepository;
	
	public OradorServiceImpl(OradorRepository oradorRepository) {
		this.oradorRepository = oradorRepository;
	}

	@Override
	public void guardarOrador(Orador orador) {
		oradorRepository.guardarOrador(orador);
	}

	@Override
	public List<Orador> listadoOradoresInscriptos() {
		List<Orador> listadoOradores = oradorRepository.obtenerOradoresInscriptos();
		return listadoOradores;
	}

}
