package com.gbh.library.dto;

import lombok.Data;

import java.util.List;

@Data
public class BookDTO {

    private Long id;
    private String name;
    private List<PageDTO> pages;
}
