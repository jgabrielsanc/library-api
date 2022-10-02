package com.gbh.library.service.implementation;

import com.gbh.library.dao.PageDAO;
import com.gbh.library.dto.PageDTO;
import com.gbh.library.exception.LibraryException;
import com.gbh.library.factory.Format;
import com.gbh.library.factory.FormatFactory;
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
    private PageDAO pageDAO;

    @Inject
    private PageMapper pageMapper;

    @Inject
    private FormatFactory formatFactory;

    @Override
    public Collection<PageDTO> findAll() {
        return pageMapper.pagesToPagesDto(pageDAO.find());
    }

    @Override
    public PageDTO findBookPage(long idBook, long pageNumber) throws Exception {

        return getPageDto(idBook, pageNumber);
    }

    @Override
    public Object findBookPage(long idBook, long pageNumber, String format) throws Exception {

        PageDTO page = getPageDto(idBook, pageNumber);

        Format formatFound = this.formatFactory.createFormat(format);
                return formatFound.create(page.getContent());
    }

    private PageDTO getPageDto(long idBook, long pageNumber) throws Exception {
        Optional<Page> page = pageDAO.findByPageAndBook(idBook, pageNumber);

        return page.map(value -> pageMapper.pageToPageDto(value))
                .orElseThrow(() ->
                        new LibraryException("404-Page not found with number: " + pageNumber)
                );
    }
}
