package com.gbh.library.factory.implementation;

import com.gbh.library.factory.Format;
import com.gbh.library.factory.FormatType;

@FormatType("text")
public class TextFormat implements Format {
    @Override
    public Object create(String content) {
        return content;
    }
}
