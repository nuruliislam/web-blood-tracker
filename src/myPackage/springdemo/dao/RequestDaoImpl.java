package myPackage.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import myPackage.springdemo.entity.BloodRequest;

@Repository
public class RequestDaoImpl implements RequestDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<BloodRequest> getRequests() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
						
		// create a query  ... sort by last name
		Query<BloodRequest> theQuery = currentSession.createQuery("from BloodRequest order by patientName",
				BloodRequest.class);
				
		// execute query and get result list
		List<BloodRequest> requests = theQuery.getResultList();
						
		// return the results		
		return requests;
	}

	@Override
	public void saveRequest(BloodRequest bloodRequest) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// save/upate the request
		currentSession.saveOrUpdate(bloodRequest);
		
	}

}
