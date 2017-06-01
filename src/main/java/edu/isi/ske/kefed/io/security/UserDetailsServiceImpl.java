package edu.isi.ske.kefed.io.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import edu.isi.ske.kefed.io.model.User;

@Component
public class UserDetailsServiceImpl implements UserDetailsService {

	 @Autowired
	    private UserRepository userRepository;

	 @Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		 User user = userRepository.findByUsername(username);
		 return null;
	}

}



