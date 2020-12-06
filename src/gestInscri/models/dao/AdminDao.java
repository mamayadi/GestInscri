package gestInscri.models.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import gestInscri.models.entity.Admin;
import gestInscri.utils.HibernateUtil;

public class AdminDao {
    Transaction transaction = null;

    public AdminDao() {
    }

    public Admin createAdmin(Admin admin) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.save(admin);
            session.flush();
            transaction.commit();
            return admin;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

    public List<Admin> getAdmins() {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            List<Admin> admins = session.createQuery("from Admin", Admin.class).list();
            return admins;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

    public Admin getAdminById(int id) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            Admin admin = (Admin) session.get(Admin.class, id);
            return admin;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

    public Admin updateAdmin(Admin admin) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.update(admin);
            transaction.commit();
            return admin;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

    public String deleteAdmin(Admin admin) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.delete(admin);
            return "Admin succefully deleted";
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

}
