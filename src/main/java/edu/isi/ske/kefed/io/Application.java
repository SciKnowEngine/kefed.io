package edu.isi.ske.kefed.io;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import edu.isi.ske.kefed.io.security.ApplicationSecurity;

@SpringBootApplication
@ComponentScan(basePackages = {"edu.isi.ske.kefed"})
public class Application {

    @Bean
    public WebSecurityConfigurerAdapter webSecurityConfigurerAdapter() {
        return new ApplicationSecurity();
    }
	
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}
