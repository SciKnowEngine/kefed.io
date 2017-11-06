package edu.isi.sciknowengine.kefed.io.repository;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

import edu.isi.sciknowengine.kefed.io.model.KefedModel;

@Repository
public interface GraphXMLRepository extends ElasticsearchRepository<KefedModel, String>{

}
