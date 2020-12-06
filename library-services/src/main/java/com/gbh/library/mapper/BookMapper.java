package com.gbh.library.mapper;

import com.gbh.library.dto.BookDTO;
import com.gbh.library.model.Book;
import org.mapstruct.Mapper;

import java.util.Collection;

@Mapper(componentModel = "cdi")
public interface BookMapper {
    BookDTO bookToBookDto(Book book);

    Collection<BookDTO> booksToBooksDto(Collection<Book> books);
}
