package com.gbh.library.exception;

import com.gbh.library.dto.ErrorDTO;

import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.ext.ExceptionMapper;
import javax.ws.rs.ext.Provider;
import java.time.LocalDateTime;

@Provider
public class GlobalExceptionHandler implements ExceptionMapper<LibraryException> {

    @Override
    public Response toResponse(LibraryException exception) {

        String[] error = exception.getMessage().split("-");
        int errorCode = 500;
        String errorMessage;

        if (error.length > 1) {
            errorCode = Integer.parseInt(error[0]);
            errorMessage = error[1];
        } else {
            errorMessage = error[0];
        }

        return Response.status(errorCode)
                .entity(new ErrorDTO(errorCode,
                        errorMessage,
                        LocalDateTime.now()))
                .type(MediaType.APPLICATION_JSON)
                .build();
    }
}
