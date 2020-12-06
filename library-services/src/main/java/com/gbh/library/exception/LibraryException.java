package com.gbh.library.exception;

import java.io.Serializable;

public class LibraryException extends Exception implements Serializable {

    private static final long serialVersionUID = 1L;

    public LibraryException(String msg)   {
        super(msg);
    }
}
