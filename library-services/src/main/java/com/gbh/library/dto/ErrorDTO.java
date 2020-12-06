package com.gbh.library.dto;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ErrorDTO {

    private int code;
    private String message;
    private LocalDateTime date;

    public ErrorDTO(int code, String message, LocalDateTime date) {
        this.code = code;
        this.message = message;
        this.date = date;
    }
}
