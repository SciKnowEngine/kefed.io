package edu.isi.sciknowengine.kefed.io.service;

import org.springframework.stereotype.Repository;

import edu.isi.sciknowengine.kefed.io.model.RegisterUser;

@Repository
public interface UserService {

	void saveNewUser(RegisterUser user);

}
