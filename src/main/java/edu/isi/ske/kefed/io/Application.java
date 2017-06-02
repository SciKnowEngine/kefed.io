package edu.isi.ske.kefed.io;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import edu.isi.ske.kefed.io.security.ApplicationSecurity;


@ComponentScan(basePackages = {"edu.isi.ske.kefed"})
public class Application {

    @Bean
    public WebSecurityConfigurerAdapter webSecurityConfigurerAdapter() {
        return new ApplicationSecurity();
    }
	
}
