package edu.isi.ske.kefed.io.serviceImpl;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import edu.isi.ske.kefed.io.model.CurrentUser;
import edu.isi.ske.kefed.io.model.User;
import edu.isi.ske.kefed.io.repository.UserRepository;

@Component
public class UserDetailsServiceImpl implements org.springframework.security.core.userdetails.UserDetailsService {

	@Autowired
	private UserRepository repositoryImpl;

	@Transactional
    public CurrentUser loadUserByUsername(String username) throws UsernameNotFoundException {
    	repositoryImpl.save(new User("user","user",Collections.emptyList()));
    	if (repositoryImpl.exists(username)) {
            return new CurrentUser(repositoryImpl.findOne(username));
        }
        throw new UsernameNotFoundException(username);
    }


	
}



