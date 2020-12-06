package com.gbh.library.dao.implementation;

import com.gbh.library.dao.PageDAO;
import com.gbh.library.model.Page;

import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.inject.Produces;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Collection;
import java.util.Optional;

@ApplicationScoped
public class PageDaoImpl implements PageDAO {

    @Produces
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public Collection<Page> find() {
        return entityManager.createNamedQuery(Page.FIND_ALL, Page.class)
                .getResultList();
    }

    @Override
    public Optional<Page> findByPageAndBook(long bookId, long pageNumber) {
        return entityManager.
                createNamedQuery(Page.FIND_BY_NUMBER_AND_BOOK_ID, Page.class)
                .setParameter("pageNumber", pageNumber)
                .setParameter("bookId", bookId)
                .getResultList()
                .stream().findFirst();
    }
}
