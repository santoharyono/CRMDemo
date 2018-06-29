package com.mitrais.dao;

import com.mitrais.entity.User;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class UserDetailsDaoImpl implements UserDetailsDao {

    private SessionFactory sessionFactory;

    public UserDetailsDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public User findUserByUsername(String username) {
        return sessionFactory.getCurrentSession().get(User.class, username);
    }
}
