package edu.isi.ske.kefed.io.v1.store;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.isi.ske.kefed.io.v1.model.KefedExperiment;
import edu.isi.ske.kefed.io.v1.model.KefedModel;

@Controller
public class KefedV1RestController implements IModelStore, IDataStore {

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
		
		ResponseEntity<List<KefedExperiment>> resp = ResponseEntity.ok(result);
	
		return resp;

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
		
		return ResponseEntity.ok(output);
		
	}

	@Override
	@PostMapping(value="/insertData")
	public ResponseEntity<Boolean>  insertData(@RequestBody KefedExperiment experiment) {
		
		KefedExperiment output = exptRepo.save(experiment);

		if(output != null) 
			return  ResponseEntity.ok(true);
		else 
			return ResponseEntity.ok(false); 
	}

	@Override
	@PostMapping(value="/saveData")
	public ResponseEntity<Boolean>  saveData(@RequestBody KefedExperiment experiment) {
		KefedExperiment output = exptRepo.save(experiment);

		if(output != null) 
			return  ResponseEntity.ok(true);
		else 
			return ResponseEntity.ok(false); 
	}

	@Override
	@GetMapping(value="/deleteData")
	public ResponseEntity<Boolean> deleteData(@RequestParam("uid") String uid) {
		
		KefedModel model = modelRepo.findByUid(uid);
		modelRepo.delete(model);

		KefedModel check = modelRepo.findByUid(uid);
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

		KefedModel output = modelRepo.findByUid(uid);
		
		return ResponseEntity.ok(output);
	}

	@Override
	@PostMapping(value="/insertModel")
	public ResponseEntity<Boolean> insertModel(@RequestBody KefedModel model) {
		
		KefedModel output = modelRepo.save(model);

		if(output != null) 
			return  ResponseEntity.ok(true);
		else 
			return ResponseEntity.ok(false); 

	}

	@Override
	@PostMapping(value="/saveModel")
	public ResponseEntity<Boolean> saveModel(@RequestBody KefedModel model) {
		KefedModel output = modelRepo.save(model);

		if(output != null) 
			return  ResponseEntity.ok(true);
		else 
			return ResponseEntity.ok(false); 
		
	}

	@Override
	@GetMapping(value="/deleteModel")
	public ResponseEntity<Boolean> deleteModel(@RequestParam("uid") String uid) {
		
		KefedModel model = modelRepo.findByUid(uid);
		modelRepo.delete(model);

		KefedModel check = modelRepo.findByUid(uid);
		if(check == null) 
			return ResponseEntity.ok(true);
		else 
			return ResponseEntity.ok(false); 
		
	}
	
}