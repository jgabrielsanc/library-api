package com.gbh.library.dao.implementation;

import com.gbh.library.dao.BookDAO;
import com.gbh.library.model.Book;

import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.inject.Produces;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Collection;
import java.util.Optional;

@ApplicationScoped
public class BookDaoImpl implements BookDAO {

    @Produces
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public Optional<Book> find(long id) {
        return Optional.ofNullable(entityManager.find(Book.class, id));
    }

    @Override
    public Collection<Book> find() {
        return entityManager.createNamedQuery(Book.FIND_ALL, Book.class)
                .getResultList();
    }
}
