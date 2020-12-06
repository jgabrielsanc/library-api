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
     * @param idBook
     * @param pageNumber
     * @return
     * @throws Exception
     */
    Object findBookPage(long idBook, long pageNumber) throws Exception;

    /**
     *
     * @param idBook
     * @param pageNumber
     * @param format
     * @return
     * @throws Exception
     */
    Object findBookPage(long idBook, long pageNumber, String format) throws Exception;
}
