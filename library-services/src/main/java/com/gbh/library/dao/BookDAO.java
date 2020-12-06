package com.gbh.library.dao;


import com.gbh.library.model.Book;

import java.util.Collection;
import java.util.Optional;

public interface BookDAO {

    /**
     *
     * @param id
     * @return
     */
    Optional<Book> find(long id);

    /**
     *
     * @return
     */
    Collection<Book> find();
}
