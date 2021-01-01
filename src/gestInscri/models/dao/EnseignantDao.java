package gestInscri.models.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import gestInscri.models.entity.Enseignant;
import gestInscri.models.entity.User;
import gestInscri.utils.HibernateUtil;

public class EnseignantDao {
	Transaction transaction = null;

	public EnseignantDao() {
	}

	public Enseignant createEnseignants(Enseignant enseignant) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			session.save(enseignant);
			session.flush();
			transaction.commit();
			return enseignant;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public Enseignant getEnseignantByUser(User user){
    	try {
    		Session session = HibernateUtil.getSessionFactory().openSession();
    		transaction = session.beginTransaction();
			Query query = session.createQuery("from Enseignant e where e.user = :user", Enseignant.class);
			query.setParameter("user", user);
			List<Enseignant> enseignants = query.list();
			transaction.commit();
			if (enseignants.size() != 0) {
				return enseignants.get(0);
			} else {
				return null;
			}
		} catch (Exception e) {
			if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
		}
    	return null;
    }

	public List<Enseignant> getEnseignants() {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			List<Enseignant> enseignants = session.createQuery("from Enseignant", Enseignant.class).list();
			return enseignants;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public Enseignant getEnseignantById(int id) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Enseignant enseignant = (Enseignant) session.get(Enseignant.class, id);
			return enseignant;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public Enseignant updateEnseignant(Enseignant enseignant) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			session.update(enseignant);
			transaction.commit();
			return enseignant;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public String deleteEnseignant(Enseignant enseignant) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.delete(enseignant);
			return "Enseignant succefully deleted";
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}
}
