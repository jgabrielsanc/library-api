package com.gbh.library.factory.implementation;

import com.gbh.library.factory.Format;
import com.gbh.library.factory.FormatType;

@FormatType("html")
public class HtmlFormat implements Format {
    @Override
    public Object create(String content) {
        return "<html><body><p>"+ content +"</p></body></html>";
    }
}
