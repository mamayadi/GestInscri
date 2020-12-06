package gestInscri.models.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import gestInscri.models.entity.Candidat;
import gestInscri.utils.HibernateUtil;

public class CandidatDao {
    Transaction transaction = null;

    public CandidatDao() {
    }

    public Candidat createCandidat(Candidat candidat) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.save(candidat);
            session.flush();
            transaction.commit();
            return candidat;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

    public List<Candidat> getCandidats() {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            List<Candidat> candidats = session.createQuery("from Candidat", Candidat.class).list();
            return candidats;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

    public Candidat getCandidatById(int id) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            Candidat candidat = (Candidat) session.get(Candidat.class, id);
            return candidat;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

    public Candidat updateCandidat(Candidat candidat) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.update(candidat);
            transaction.commit();
            return candidat;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

    public String deleteCandidat(Candidat candidat) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.delete(candidat);
            return "Candidat succefully deleted";
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

}
