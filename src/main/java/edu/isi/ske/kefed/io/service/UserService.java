package edu.isi.ske.kefed.io.service;

import org.springframework.stereotype.Repository;

import edu.isi.ske.kefed.io.model.RegisterUser;

@Repository
public interface UserService {

	void saveNewUser(RegisterUser user);

}
