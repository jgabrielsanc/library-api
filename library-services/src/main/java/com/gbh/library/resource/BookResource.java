package com.gbh.library.resource;

import com.gbh.library.service.BookService;
import com.gbh.library.service.PageService;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

import static com.gbh.library.util.ContentType.getContentType;
import static javax.ws.rs.core.MediaType.APPLICATION_JSON;

@Path("book")
@ApplicationScoped
public class BookResource {

    @Inject
    private BookService bookService;

    @Inject
    private PageService pageService;

    @GET
    @Path("/")
    @Produces(APPLICATION_JSON)
    public Response getAllBooks() {
        return Response.status(200).entity(bookService.findAll()).build();
    }

    @GET
    @Path("/{id}")
    @Produces(APPLICATION_JSON)
    public Response getBook(@PathParam("id") long id) throws Exception {
        return Response.ok(bookService.find(id)).build();
    }

    @GET
    @Path("/{bookId}/page")
    @Produces(APPLICATION_JSON)
    public Response getAllBookPages() {
        return Response.status(200).entity(pageService.findAll()).build();
    }

    @GET
    @Path("/{bookId}/page/{pageNumber}")
    @Produces(APPLICATION_JSON)
    public Response getBookPage(@PathParam("bookId") long bookId,
                                @PathParam("pageNumber") long pageNumber) throws Exception {
        return Response.ok(pageService.findBookPage(bookId, pageNumber)).build();
    }

    @GET
    @Path("/{bookId}/page/{pageNumber}/{format}")
    public Response getBookPageFormat(@PathParam("bookId") long bookId,
                                      @PathParam("pageNumber") long pageNumber,
                                      @PathParam("format") String format) throws Exception {

        return Response.ok(pageService
                .findBookPage(bookId, pageNumber, format.toLowerCase()))
                .type(getContentType(format))
                .build();
    }
}
