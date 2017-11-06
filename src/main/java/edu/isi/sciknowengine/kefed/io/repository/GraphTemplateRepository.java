package edu.isi.sciknowengine.kefed.io.repository;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

import edu.isi.sciknowengine.kefed.io.model.Study_Design;

@Repository
public interface GraphTemplateRepository extends ElasticsearchRepository<Study_Design, String>{

}
