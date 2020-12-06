package com.gbh.library.model;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Data
@Entity
@Table(name = "book")
@NamedQueries({
        @NamedQuery(
                name = Book.FIND_ALL,
                query = "select b from Book b"
        ),
        @NamedQuery(
                name = Book.FIND_ALL_BY_NAME,
                query = "select b from Book b where b.name = :name"
        ),
})
public class Book implements Serializable {

    public static final String FIND_ALL = "Book.findAll";
    public static final String FIND_ALL_BY_NAME = "Book.findByName";

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "book_generator")
    @SequenceGenerator(name="book_generator", sequenceName = "book_seq", allocationSize=1)
    private Long id;
    @Column(nullable = false, length = 35)
    private String name;
    @OneToMany(cascade=CascadeType.ALL, orphanRemoval = true, mappedBy = "book", fetch = FetchType.LAZY)
    private List<Page> pages;
}