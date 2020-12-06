package com.gbh.library.service;

import com.gbh.library.dto.PageDTO;

import java.util.Collection;

public interface PageService {

    /**
     *
     * @return
     */
    Collection<PageDTO> findAll();

    /**
     *
     * @return
     */
    PageDTO findBookPage(long idBook, long pageNumber) throws Exception;
}
