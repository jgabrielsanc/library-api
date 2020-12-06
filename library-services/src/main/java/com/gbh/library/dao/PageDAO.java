package com.gbh.library.dao;

import com.gbh.library.model.Page;

import java.util.Collection;
import java.util.Optional;

public interface PageDAO {

    /**
     *
     * @return
     */
    Collection<Page> find();

    /**
     *
     * @param bookId
     * @param pageNumber
     * @return
     */
    Optional<Page> findByPageAndBook(long bookId, long pageNumber);
}
