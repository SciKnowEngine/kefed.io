package edu.isi.sciknowengine.kefed.io.v1.store;

import java.util.List;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

import edu.isi.sciknowengine.kefed.io.v1.model.KefedModel;

@Repository
public interface KefedModelRepository extends ElasticsearchRepository<KefedModel, String>{

	List<KefedModel> findByUid(String uid);
	
}
