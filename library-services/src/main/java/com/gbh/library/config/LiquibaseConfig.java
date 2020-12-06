package com.gbh.library.config;

import liquibase.integration.cdi.CDILiquibaseConfig;
import liquibase.integration.cdi.annotations.LiquibaseType;
import liquibase.resource.ClassLoaderResourceAccessor;
import liquibase.resource.ResourceAccessor;

import javax.annotation.Resource;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.inject.Produces;
import javax.sql.DataSource;

@ApplicationScoped
public class LiquibaseConfig {

    @Resource(lookup = "java:/PostgresDS")
    DataSource dataSource;

    @Produces
    @LiquibaseType
    public CDILiquibaseConfig cdiLiquibaseConfig() {
        CDILiquibaseConfig config = new CDILiquibaseConfig();
        config.setChangeLog("db/changelog.sql");
        return config;
    }

    @Produces
    @LiquibaseType
    public DataSource dataSource() {
        return dataSource;
    }

    @Produces
    @LiquibaseType
    public ResourceAccessor resourceAccessor() {
        return new ClassLoaderResourceAccessor(getClass().getClassLoader());
    }
}