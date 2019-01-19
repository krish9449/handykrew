package com.handykrew.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowire;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
//@PropertySource("classpath:jndi.properties")
@PropertySource("classpath:db.properties")
@ComponentScan(basePackages= {"com.handykrew.dao.system" , "com.handykrew.dao.useraccount"})
public class HKPersistenceConfig {
	
	@Autowired
	Environment env;
	
	@Bean
	public DataSource dataSource() {
		/*DataSource dataSource = null;
		JndiDataSourceLookup dataSourceLookup = null;
		
		dataSourceLookup = new JndiDataSourceLookup();
		dataSource = dataSourceLookup.getDataSource(environment.getProperty("jndi.name"));*/
	
		DriverManagerDataSource dataSource = null;

		dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(env.getProperty("db.driverClassname"));
		dataSource.setUrl(env.getProperty("db.url"));
		dataSource.setUsername(env.getProperty("db.username"));
		dataSource.setPassword(env.getProperty("db.password"));
		return dataSource;
	}
	
	/*
	@Bean(autowire=Autowire.BY_TYPE)
	public LocalSessionFactoryBean sessionFactory() {
		LocalSessionFactoryBean localSessionFactoryBean = null;
		Properties hibernateProperties = null;
		
		hibernateProperties = new Properties();
		hibernateProperties.put("show_sql", "true");
		hibernateProperties.put("hibernate.dialect", "org.hibernate.dialect.MySQL5InnoDBDialect");
		hibernateProperties.put("format_sql", "true");
		hibernateProperties.put("hibernate.hbm2ddl.auto", "update");
		
		localSessionFactoryBean = new LocalSessionFactoryBean();
		localSessionFactoryBean.setHibernateProperties(hibernateProperties);
		//localSessionFactoryBean.setAnnotatedPackages("com.ems.entities");
		//localSessionFactoryBean.setPackagesToScan("com.ems.entities");
		//localSessionFactoryBean.setAnnotatedClasses(Employee.class);
		
		return localSessionFactoryBean;
	}
	
	@Bean(autowire=Autowire.BY_TYPE)
	public HibernateTemplate hibernateTemplate() {
		HibernateTemplate hibernateTemplate = null;

		hibernateTemplate = new HibernateTemplate();
		return hibernateTemplate;
	}
	
	@Bean(autowire=Autowire.BY_TYPE)
	public PlatformTransactionManager transactionManager() {
		HibernateTransactionManager transactionManager = null;
		transactionManager = new HibernateTransactionManager();
		
		return transactionManager;
	}*/
	
	
	/*@Bean
	public JtaTransactionManagerFactoryBean jtaTransactionManagerFactoryBean() {
		JtaTransactionManagerFactoryBean factoryBean = null;
		
		factoryBean = new JtaTransactionManagerFactoryBean();
		return factoryBean;
	}
	@Bean(autowire = Autowire.BY_TYPE)
	public JdbcTemplate jdbcTemplate() {
		JdbcTemplate jdbcTemplate = null;

		jdbcTemplate = new JdbcTemplate();
		return jdbcTemplate;
	}
	
	

	@Bean(autowire = Autowire.BY_TYPE)
	public PlatformTransactionManager transactionManager() {
		DataSourceTransactionManager transactionManager = null;

		transactionManager = new DataSourceTransactionManager();
		return transactionManager;
	}*/

}
