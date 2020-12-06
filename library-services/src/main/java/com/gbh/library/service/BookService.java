package com.gbh.library.service;

import com.gbh.library.dto.BookDTO;

import java.util.Collection;

public interface BookService {

    /**
     *
     * @return
     */
    Collection<BookDTO> findAll();

    /**
     *
     * @return
     */
    BookDTO find(long id) throws Exception;
}
