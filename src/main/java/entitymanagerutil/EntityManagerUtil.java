package entitymanagerutil;

import jakarta.persistence.*;

public class EntityManagerUtil {

	public static final EntityManagerFactory entityManagerFactory =
			Persistence.createEntityManagerFactory("IF_ConfCaC");
	
	public static EntityManager getEntityManager() {
		return entityManagerFactory.createEntityManager();
	}
}
