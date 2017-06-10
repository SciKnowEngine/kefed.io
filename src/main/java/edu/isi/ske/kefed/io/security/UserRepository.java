package edu.isi.ske.kefed.io.security;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

import edu.isi.ske.kefed.io.model.User;

@Repository
public interface UserRepository extends ElasticsearchRepository<User, String>{
    User findByUsername(String username);
}