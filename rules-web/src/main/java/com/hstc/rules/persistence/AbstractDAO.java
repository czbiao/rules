package com.hstc.rules.persistence;

import org.hibernate.Session;
import org.hibernate.Transaction;

public abstract class AbstractDAO {
    public Transaction getTransation(Session session) {
//        if (session != null && session.getTransaction().isActive())
        if (session.getTransaction().isActive())
            return session.getTransaction();
        return session.beginTransaction();
    }
}