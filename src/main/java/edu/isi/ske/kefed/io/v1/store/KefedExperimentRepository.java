package edu.isi.ske.kefed.io.v1.store;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

import edu.isi.ske.kefed.io.v1.model.KefedExperiment;

@Repository
public interface KefedExperimentRepository extends ElasticsearchRepository<KefedExperiment, String>{

	KefedExperiment findByUid(String uid);

}
