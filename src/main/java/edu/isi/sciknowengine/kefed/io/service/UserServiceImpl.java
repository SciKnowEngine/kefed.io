package edu.isi.sciknowengine.kefed.io.service;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import edu.isi.sciknowengine.kefed.io.model.RegisterUser;
import edu.isi.sciknowengine.kefed.io.model.User;
import edu.isi.sciknowengine.kefed.io.repository.UserRepository;

@Component
public class UserServiceImpl implements UserService{

	@Autowired private UserRepository repositoryImpl;

	@Override
	@Transactional
	public void saveNewUser(RegisterUser user) {
		if (!repositoryImpl.existsById(user.getUsername())) {
			repositoryImpl.save(new User(user.getUsername(),user.getPassword(),Collections.emptyList()));
		}
		
	}
	
	
}
