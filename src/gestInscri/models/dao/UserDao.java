package gestInscri.models.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import gestInscri.models.entity.User;
import gestInscri.utils.HibernateUtil;

public class UserDao {
    Transaction transaction = null;

    public UserDao() {
    }
    
    public User userLogin(String email, String password) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Query query = session.createQuery("from User u where u.mail =:mail AND u.password =:password");
			query.setParameter("mail", email);
			query.setParameter("password", password);
			List<User> users = query.list();
			if (users.size() != 0) {
				return users.get(0);
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

    public User createUser(User user) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.save(user);
            session.flush();
            transaction.commit();
            return user;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

    public List<User> getUsers() {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            List<User> users = session.createQuery("from User", User.class).list();
            return users;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

    public User getUserById(int id) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            User user = (User) session.get(User.class, id);
            return user;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

    public User updateUser(User user) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.update(user);
            transaction.commit();
            return user;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }

    public String deleteUser(User user) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.delete(user);
            return "User succefully deleted";
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }
}
