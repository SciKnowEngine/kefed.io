package edu.isi.ske.kefed.io.v1.store;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

import edu.isi.ske.kefed.io.v1.model.KefedModel;

@Repository
public interface KefedModelRepository extends ElasticsearchRepository<KefedModel, String>{

	KefedModel findByUid(String uid);
	
}
