package edu.isi.ske.kefed.io.repository;

import org.elasticsearch.index.query.QueryBuilder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.elasticsearch.core.query.SearchQuery;
import org.springframework.stereotype.Component;

import edu.isi.ske.kefed.io.model.User;

@Component
public class UserRepositoryImpl {

	public <S extends User> S index(S entity) {
		// Generate Index Externally
		return null;
	}

	public Iterable<User> search(QueryBuilder query) {
		//Search on Query Specified
		return null;
	}

	public Page<User> search(QueryBuilder query, Pageable pageable) {
		//Search with Pagination
		return null;
	}

	public Page<User> search(SearchQuery searchQuery) {
		//Simple Search Query
		return null;
	}

	public Page<User> searchSimilar(User entity, String[] fields, Pageable pageable) {
		//Find out Similar Items
		return null;
	}

	public void refresh() {
		//Suto Refresh Indexes
		
	}

	public Iterable<User> findAll(Sort sort) {
		//Find All by sorting
		return null;
	}

	public Page<User> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	public <S extends User> S save(S entity) {
		//Save
		return null;
	}

	public <S extends User> Iterable<S> save(Iterable<S> entities) {
		//Save multiple Elements
		return null;
	}

	public User findOne(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean exists(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	public Iterable<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Iterable<User> findAll(Iterable<String> ids) {
		// TODO Auto-generated method stub
		return null;
	}

	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

	public void delete(User entity) {
		// TODO Auto-generated method stub
		
	}

	public void delete(Iterable<? extends User> entities) {
		// TODO Auto-generated method stub
		
	}

	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}
	
	    
	    
}
