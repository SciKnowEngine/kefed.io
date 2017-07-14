package edu.isi.ske.kefed.io.repository;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

import edu.isi.ske.kefed.io.model.User;

@Repository(value="userRepository")
public interface UserRepository extends ElasticsearchRepository<User, String>{
   
}
