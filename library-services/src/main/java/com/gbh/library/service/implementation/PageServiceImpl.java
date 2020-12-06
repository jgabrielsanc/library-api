package com.gbh.library.service.implementation;

import com.gbh.library.dao.implementation.PageDaoImpl;
import com.gbh.library.dto.PageDTO;
import com.gbh.library.exception.LibraryException;
import com.gbh.library.mapper.PageMapper;
import com.gbh.library.model.Page;
import com.gbh.library.service.PageService;

import javax.ejb.Stateless;
import javax.inject.Inject;
import java.util.Collection;
import java.util.Optional;

@Stateless
public class PageServiceImpl implements PageService {

    @Inject
    private PageDaoImpl pageDao;

    @Inject
    private PageMapper pageMapper;

    @Override
    public Collection<PageDTO> findAll() {
        return pageMapper.pagesToPagesDto(pageDao.find());
    }

    @Override
    public PageDTO findBookPage(long idBook, long pageNumber) throws Exception {
        Optional<Page> page = pageDao.findByPageAndBook(idBook, pageNumber);

        return page.map(value -> pageMapper.pageToPageDto(value))
                .orElseThrow(() ->
                        new LibraryException("404-Page not found with number: " + pageNumber)
                );
    }
}
