package gestInscri.models.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import gestInscri.models.entity.DocumentsPedagogiques;
import gestInscri.utils.HibernateUtil;

public class DocumentsPedagogiquesDao {
	Transaction transaction = null;

	public DocumentsPedagogiquesDao() {
	}

	public DocumentsPedagogiques createDocumentsPedagogiques(DocumentsPedagogiques documentsPedagogiques) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			session.save(documentsPedagogiques);
			session.flush();
			transaction.commit();
			return documentsPedagogiques;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public List<DocumentsPedagogiques> getDocumentsPedagogiques() {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			List<DocumentsPedagogiques> documentsPedagogiques = session
					.createQuery("from Documents", DocumentsPedagogiques.class).list();
			return documentsPedagogiques;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public DocumentsPedagogiques getDocumentsPedagogiquesById(int id) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			DocumentsPedagogiques documentsPedagogiques = (DocumentsPedagogiques) session
					.get(DocumentsPedagogiques.class, id);
			return documentsPedagogiques;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public DocumentsPedagogiques updateDocumentsPedagogiques(DocumentsPedagogiques documentsPedagogiques) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			session.update(documentsPedagogiques);
			transaction.commit();
			return documentsPedagogiques;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public String deleteDocumentsPedagogiques(DocumentsPedagogiques documentsPedagogiques) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.delete(documentsPedagogiques);
			return "Documents Pedagogiques succefully deleted";
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

}
