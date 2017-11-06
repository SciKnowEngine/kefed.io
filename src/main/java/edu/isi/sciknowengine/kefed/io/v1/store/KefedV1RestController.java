package edu.isi.sciknowengine.kefed.io.v1.store;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import edu.isi.sciknowengine.kefed.io.v1.model.KefedExperiment;
import edu.isi.sciknowengine.kefed.io.v1.model.KefedModel;

@Controller
public class KefedV1RestController implements IModelStore, IDataStore {

	private ElasticsearchTemplate elasticsearchTemplate;

	
	@Autowired 
	private KefedModelRepository modelRepo;

	@Autowired 
	private KefedExperimentRepository exptRepo;

	@Override
	@RequestMapping(value="/listData",
			method=RequestMethod.GET,
			produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<KefedExperiment>> listData() {

		List<KefedExperiment> result = new ArrayList<KefedExperiment>();
		Iterator<KefedExperiment> exptIt =  exptRepo.findAll().iterator();
		while ( exptIt.hasNext() ) {
			KefedExperiment expt = exptIt.next();
			result.add(expt);
		}
			
		return ResponseEntity.ok(result);

	}

	@Override
	public List<KefedExperiment> listDataForModel(KefedModel model) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@GetMapping(value="/retrieveData")
	public ResponseEntity<KefedExperiment> retrieveData(@RequestParam("uid") String uid) {
		
		KefedExperiment output = exptRepo.findByUid(uid);
		
		ObjectMapper mapper = new ObjectMapper();
		JsonNode jsonObj;
		try {
			jsonObj = mapper.readTree(output.getExperimentDataInES());
		} catch (IOException e) {
			return ResponseEntity.ok(null);
		}
		output.setExperimentData(jsonObj);
		output.setExperimentDataInES(null);
		
		return ResponseEntity.ok(output);
		
	}

	@Override
	@PostMapping(value="/insertData")
	public ResponseEntity<KefedExperiment>  insertData(@RequestBody KefedExperiment experiment) {
		
		experiment.setExperimentDataInES(experiment.getExperimentData().toString());
		experiment.setExperimentData(null);
		KefedExperiment output = exptRepo.save(experiment);

		return  ResponseEntity.ok(output);
		
	}

	@Override
	@PostMapping(value="/saveData")
	public ResponseEntity<KefedExperiment>  saveData(@RequestBody KefedExperiment experiment) {

		experiment.setExperimentDataInES(experiment.getExperimentData().toString());
		experiment.setExperimentData(null);
		KefedExperiment output = exptRepo.save(experiment);
		return  ResponseEntity.ok(output);
		
	}

	@Override
	@GetMapping(value="/deleteData")
	public ResponseEntity<Boolean> deleteData(@RequestParam("uid") String uid) {
		
		KefedExperiment expt = exptRepo.findByUid(uid);
		exptRepo.delete(expt);

		KefedExperiment check = exptRepo.findByUid(uid);
		if(check == null) 
			return ResponseEntity.ok(true);
		else 
			return ResponseEntity.ok(false); 
		
	}

	@Override
	@GetMapping(value="/listModels")
	public ResponseEntity<List<KefedModel>> listModels() {

		List<KefedModel> result = new ArrayList<KefedModel>();
		Iterator<KefedModel> modelIt =  modelRepo.findAll().iterator();
		while ( modelIt.hasNext() ) {
			KefedModel model = modelIt.next();
			result.add(model);
		}
		
		ResponseEntity<List<KefedModel>> resp = ResponseEntity.ok(result);
	
		return resp;
	}

	@Override
	@GetMapping(value="/retrieveModel")
	public ResponseEntity<KefedModel> retrieveModel(@RequestParam("uid") String uid) {

		List<KefedModel> models = modelRepo.findByUid(uid);
		if( models.size() == 1 ) {
			return ResponseEntity.ok(models.get(0));			
		}
		else if( models.size() > 1 ) {
			return ResponseEntity.ok(models.get(0));			
		}
		return null;
		
	}

	@Override
	@PostMapping(value="/insertModel")
	public ResponseEntity<KefedModel> insertModel(@RequestBody KefedModel model) {
		
		KefedModel output = modelRepo.save(model);

		return  ResponseEntity.ok(output);

	}

	@Override
	@PostMapping(value="/insertModelList")
	public ResponseEntity<KefedModel> insertModelList(@RequestBody List<KefedModel> models) {
		
		KefedModel output = null;
		for (KefedModel model : models) {	
			output = modelRepo.save(model);
			if(output == null) 
				return ResponseEntity.ok(null); 		
		}

		return  ResponseEntity.ok(output);
		
	}
	
	
	@Override
	@PostMapping(value="/saveModel")
	public ResponseEntity<KefedModel> saveModel(@RequestBody KefedModel model) {
		
		String uid = model.getUid();
		List<KefedModel> previousModels = modelRepo.findByUid(uid);
		for( KefedModel prev : previousModels)
			modelRepo.delete(prev);
		
		KefedModel output = modelRepo.save(model);

		return  ResponseEntity.ok(output);
		
	}

	@Override
	@GetMapping(value="/deleteModel")
	public ResponseEntity<Boolean> deleteModel(@RequestParam("uid") String uid) {
		
		List<KefedModel> models = modelRepo.findByUid(uid);
		for( KefedModel model : models)
			modelRepo.delete(model);

		List<KefedModel> check = modelRepo.findByUid(uid);
		if(check == null) 
			return ResponseEntity.ok(true);
		else 
			return ResponseEntity.ok(false); 
		
	}

	@GetMapping(value="/deleteAllModels")
	public ResponseEntity<Boolean> deleteAllModels() {
		modelRepo.deleteAll();;
		return ResponseEntity.ok(true);
	}

	@GetMapping(value="/deleteAllData")
	public ResponseEntity<Boolean> deleteAllData() {
		exptRepo.deleteAll();;
		return ResponseEntity.ok(true);
	}

	@GetMapping(value="/listAll")
	public ResponseEntity<Boolean> listAllElasticSearchRepo() {
		exptRepo.deleteAll();;
		return ResponseEntity.ok(true);
	}

		
}