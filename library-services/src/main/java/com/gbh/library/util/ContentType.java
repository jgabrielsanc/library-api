package com.gbh.library.util;

import com.gbh.library.exception.LibraryException;

import javax.ws.rs.core.MediaType;

import static com.gbh.library.util.Constant.HTML;
import static com.gbh.library.util.Constant.TEXT;

public class ContentType {

    public static String getContentType(String format) throws Exception {
        String mediaType;
        switch (format.toUpperCase()) {
            case TEXT:
                mediaType = MediaType.TEXT_PLAIN;
                break;
            case HTML:
                mediaType = MediaType.TEXT_HTML;
                break;
            default:
                throw new LibraryException("400-format type " + format + " not supported");
        }
        return mediaType;
    }
}
