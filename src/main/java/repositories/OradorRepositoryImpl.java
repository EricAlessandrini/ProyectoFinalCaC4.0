package repositories;

import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import models.Orador;

public class OradorRepositoryImpl implements OradorRepository {

	private EntityManager entityManager;

	public OradorRepositoryImpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	@Override
	public void guardarOrador(Orador orador) {
		try {
			entityManager.getTransaction().begin();
			entityManager.persist(orador);
			entityManager.getTransaction().commit();
		} catch (Exception e) {
			if (entityManager.getTransaction().isActive()) {
				entityManager.getTransaction().rollback();
			}
			e.printStackTrace();
		}
	}

	@Override
	public List<Orador> obtenerOradoresInscriptos() {
		String jpql = "SELECT o FROM Orador o";
		TypedQuery<Orador> listadoOradores = entityManager.createQuery(jpql, Orador.class);
		return listadoOradores.getResultList();
	}

}
