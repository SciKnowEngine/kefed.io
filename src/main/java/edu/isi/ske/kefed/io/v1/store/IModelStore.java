package edu.isi.ske.kefed.io.v1.store;

import java.util.List;

import org.springframework.http.ResponseEntity;

import edu.isi.ske.kefed.io.v1.model.KefedExperiment;
import edu.isi.ske.kefed.io.v1.model.KefedModel;

/**
 * Interface for Kefed model store implementations. 
 * 
 * @author University of Southern California
 * @date $Date: 2010-09-22 10:19:40 -0700 (Wed, 22 Sep 2010) $
 * @version $Revision: 1180 $
 * 
 */
public interface IModelStore {

	/**
	 * List the models that are present in the store. 
	 * @return 
	 */
	ResponseEntity<List<KefedModel>> listModels();

	/**
	 * Retrieve the model that matches the given UID. 
	 *  
	 * @param uid
	 *            The UID of the model to load
	 * @return 
	 * 
	 */
	ResponseEntity<KefedModel> retrieveModel(String uid);

	/**
	 * Insert the model. Assumes that this model does not already exist in the
	 * store. 
	 * 
	 * @param model
	 *            The model to save to the store
	 * @return 
	 * 
	 */
	ResponseEntity<Boolean> insertModel(KefedModel model);

	/**
	 * Save the model. Assumes that there is already a model present that will
	 * be replaced. 
	 * 
	 * @param model
	 *            The model to save to the store
	 * @return 
	 * 
	 */
	ResponseEntity<Boolean> saveModel(KefedModel model);

	/**
	 * Delete the model that matches the given UID. 
	 * 
	 * @param uid
	 *            The UID of the model to delete
	 * @return 
	 * 
	 */
	ResponseEntity<Boolean> deleteModel(String uid);

}
