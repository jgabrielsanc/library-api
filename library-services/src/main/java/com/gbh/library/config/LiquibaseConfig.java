package com.gbh.library.config;

import liquibase.integration.cdi.CDILiquibaseConfig;
import liquibase.integration.cdi.annotations.LiquibaseType;
import liquibase.resource.ClassLoaderResourceAccessor;
import liquibase.resource.ResourceAccessor;
import lombok.extern.slf4j.Slf4j;

import javax.annotation.Resource;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.inject.Produces;
import javax.sql.DataSource;

@Slf4j
@ApplicationScoped
public class LiquibaseConfig {

    @Resource(lookup = "java:/PostgresDS")
    DataSource dataSource;

    @Produces
    @LiquibaseType
    public CDILiquibaseConfig cdiLiquibaseConfig() {
        log.info("creating liquibase CDI config.");
        CDILiquibaseConfig config = new CDILiquibaseConfig();
        config.setChangeLog("db/changelog.sql");
        return config;
    }

    @Produces
    @LiquibaseType
    public DataSource dataSource() {
        log.info("getting liquibase datasource.");
        return dataSource;
    }

    @Produces
    @LiquibaseType
    public ResourceAccessor resourceAccessor() {
        log.info("getting liquibase resource accessor.");
        return new ClassLoaderResourceAccessor(getClass().getClassLoader());
    }
}