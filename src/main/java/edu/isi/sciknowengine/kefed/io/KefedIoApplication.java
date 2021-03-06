package edu.isi.sciknowengine.kefed.io;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;

// NOTE - SECURITY IS DISABLED HERE 
@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.SecurityAutoConfiguration.class)
//@SpringBootApplication
@ComponentScan(basePackages = {"edu.isi.sciknowengine.kefed"})
@EnableElasticsearchRepositories("edu.isi.sciknowengine.kefed")	
public class KefedIoApplication extends SpringBootServletInitializer {
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(KefedIoApplication.class);
	}

	public static void main(String[] args) throws Exception {
		SpringApplication.run(KefedIoApplication.class, args);
	}

}