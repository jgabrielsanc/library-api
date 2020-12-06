package com.gbh.library.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@Table(name = "page")
@NamedQueries({
        @NamedQuery(
                name = Page.FIND_ALL,
                query = "select p from Page p"
        ),
        @NamedQuery(
                name = Page.FIND_BY_NUMBER_AND_BOOK_ID,
                query = "select p from Page p where p.number = :pageNumber " +
                        "and p.book.id = :bookId"
        ),
})
public class Page implements Serializable {

    public static final String FIND_ALL = "Page.findAll";
    public static final String FIND_BY_NUMBER_AND_BOOK_ID = "Book.findByNumberAndBookId";

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "page_generator")
    @SequenceGenerator(name="page_generator", sequenceName = "page_seq", allocationSize=1)
    private Long id;

    @Column(nullable = false)
    private Long number;

    @Column(nullable = false, columnDefinition="TEXT")
    private String content;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_book", nullable = false)
    private Book book;
}
