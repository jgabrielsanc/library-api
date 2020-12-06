package com.gbh.library.factory;

import com.gbh.library.exception.LibraryException;

import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.inject.Any;
import javax.enterprise.inject.Instance;
import javax.inject.Inject;

@ApplicationScoped
public class FormatFactory {

    @Inject
    @Any
    private Instance<Format> formatInstance;

    public Format createFormat(String formatType) throws Exception {
        Instance<Format> instance = this.formatInstance.select(new FormatTypeNameLiteral(formatType));

        if (!instance.isResolvable()) {
            throw new LibraryException("400-format type " + formatType + " not supported");
        }

        return instance.get();
    }
}
