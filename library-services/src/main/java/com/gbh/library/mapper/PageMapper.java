package com.gbh.library.mapper;

import com.gbh.library.dto.PageDTO;
import com.gbh.library.model.Page;
import org.mapstruct.Mapper;

import java.util.Collection;

@Mapper(componentModel = "cdi")
public interface PageMapper {

    PageDTO pageToPageDto(Page page);

    Collection<PageDTO> pagesToPagesDto(Collection<Page> pages);
}
