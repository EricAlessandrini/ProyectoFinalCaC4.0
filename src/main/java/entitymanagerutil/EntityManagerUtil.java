package entitymanagerutil;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class EntityManagerUtil {

	public static final EntityManagerFactory entityManagerFactory =
			Persistence.createEntityManagerFactory("IF_ConfCaC");

	public static EntityManager getEntityManager() {
		return entityManagerFactory.createEntityManager();
	}
}
