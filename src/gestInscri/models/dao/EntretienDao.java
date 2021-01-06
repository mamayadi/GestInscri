package gestInscri.models.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import gestInscri.models.entity.Enseignant;
import gestInscri.models.entity.Entretien;
import gestInscri.models.entity.User;
import gestInscri.utils.HibernateUtil;

public class EntretienDao {
	Transaction transaction = null;

	public EntretienDao() {
	}

	public Entretien createEntretien(Entretien entretien) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			session.save(entretien);
			session.flush();
			transaction.commit();
			return entretien;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public List<Entretien> getEntretiens() {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			List<Entretien> entretiens = session.createQuery("from Entretien", Entretien.class).list();
			return entretiens;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public List<Entretien> getEntretiensByEnseignant(Enseignant enseignant) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			List<Entretien> entretiens = session
					.createQuery("from Entretien e where e.enseignant = :enseignant", Entretien.class)
					.setParameter("enseignant", enseignant).list();
			return entretiens;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public Entretien getEntretienById(int id) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Entretien entretien = (Entretien) session.get(Entretien.class, id);
			return entretien;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public Entretien updateEntretien(Entretien entretien) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			session.update(entretien);
			transaction.commit();
			return entretien;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public String deleteEntretien(Entretien entretien) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.delete(entretien);
			return "Entretien succefully deleted";
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}
}
