package com.gbh.library.factory;

import javax.enterprise.util.AnnotationLiteral;

public class FormatTypeNameLiteral extends AnnotationLiteral<FormatType> implements FormatType {
    private static final long serialVersionUID = -4678199166362200239L;

    private final String name;

    public FormatTypeNameLiteral(String name) {
        this.name = name;
    }

    @Override
    public String value() {
        return this.name;
    }
}
