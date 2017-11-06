package edu.isi.sciknowengine.kefed.io.v1.store;

import java.util.List;

import org.springframework.http.ResponseEntity;

import edu.isi.sciknowengine.kefed.io.v1.model.KefedExperiment;
import edu.isi.sciknowengine.kefed.io.v1.model.KefedModel;

/** Interface for Kefed data store implementations.  These
 *  will use asynchronous transactions, which means that users
 *  will need to register appropriate event listeners to get
 *  the results of any operations.  The events signalled will be
 *  of type DataStoreEvent.
 * 
 * @author University of Southern California
 * @date $Date: 2010-09-22 10:19:40 -0700 (Wed, 22 Sep 2010) $
 * @version $Revision: 1180 $
 * 
 */
public interface IDataStore {

	/** List the experiments that are present in the store.
	 * 
	 */
	ResponseEntity<List<KefedExperiment>> listData();
	
	/** List the experiments that are present in the store and
	 *  which are realizations of the given model.  
	 * 
	 *  @param model The model whose corresponding data items are returned
	 */
	List<KefedExperiment> listDataForModel(KefedModel model);
	
	/** Retrieve the experiment that matches the given UID.  
	 * 
	 * @param uid The UID of the experiment to load
	 * 
	 */
	ResponseEntity<KefedExperiment> retrieveData(String uid);
	
	/** Insert the experiment.  Assumes that the experiment doesn't
	 *  exist in the store.  
	 *  
	 * @param experiment The experiment to save to the store
	 * 
	 */
	ResponseEntity<KefedExperiment> insertData(KefedExperiment experiment);
	
	/** Save the experiment. Assumes that the experiment already
	 *  exists in the store.  
	 *  
	 * @param experiment The experiment to save to the store
	 * 
	 */
	ResponseEntity<KefedExperiment> saveData(KefedExperiment experiment);
	
	/** Delete the experiment that matches the given UID.  
	 * 
	 * @param uid The UID of the experiment to delete
	 * @return 
	 * 
	 */
	ResponseEntity<Boolean> deleteData(String uid);
	
}
