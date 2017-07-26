package edu.isi.ske.kefed.io.service;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import edu.isi.ske.kefed.io.model.RegisterUser;
import edu.isi.ske.kefed.io.model.User;
import edu.isi.ske.kefed.io.repository.UserRepository;

@Component
public class UserServiceImpl implements UserService{

	@Autowired private UserRepository repositoryImpl;

	@Override
	@Transactional
	public void saveNewUser(RegisterUser user) {
		if (!repositoryImpl.exists(user.getUsername())) {
			repositoryImpl.save(new User(user.getUsername(),user.getPassword(),Collections.emptyList()));
		}
		
	}
	
	
}
