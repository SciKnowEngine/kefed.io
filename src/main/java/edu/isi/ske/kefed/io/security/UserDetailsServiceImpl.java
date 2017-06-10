package edu.isi.ske.kefed.io.security;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;



@Component
public class UserDetailsServiceImpl implements UserDetailsService {

	 @Autowired
	    private UserRepository userRepository;

	 @Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		 return new User("user", "user", Collections.emptyList());
	}

}



