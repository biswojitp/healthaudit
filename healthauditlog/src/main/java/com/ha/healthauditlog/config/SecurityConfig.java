package com.ha.healthauditlog.config;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;


@Configuration
@EnableWebMvcSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	   @Override
	   protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	       auth.inMemoryAuthentication()
	           .withUser("user1").password("password1").roles("USER, ADMIN")
	           .and()
	           .withUser("user2").password("password2").roles("USER");
	   }

	   @Override
	   protected void configure(HttpSecurity http) throws Exception {
	       http.authorizeRequests()
	           .antMatchers("/service/test").access("hasRole('USER') or hasRole('ADMIN')")
	           .antMatchers("/service/admin").access("hasRole('ADMIN')");
	   }
	}


