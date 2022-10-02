package com.gbh.library.service.implementation;

import com.gbh.library.dao.BookDAO;
import com.gbh.library.dto.BookDTO;
import com.gbh.library.exception.LibraryException;
import com.gbh.library.mapper.BookMapper;
import com.gbh.library.model.Book;
import com.gbh.library.service.BookService;

import javax.ejb.Stateless;
import javax.inject.Inject;
import java.util.Collection;
import java.util.Optional;

@Stateless
public class BookServiceImpl implements BookService {

    @Inject
    private BookDAO bookDAO;

    @Inject
    private BookMapper bookMapper;

    @Override
    public Collection<BookDTO> findAll() {
        return bookMapper.booksToBooksDto(bookDAO.find());
    }

    @Override
    public BookDTO find(long id) throws Exception {

        Optional<Book> book = bookDAO.find(id);

        return book.map(value -> bookMapper.bookToBookDto(value))
                .orElseThrow(() ->
                        new LibraryException("404-Book not found with id: " + id)
                );
    }
}
