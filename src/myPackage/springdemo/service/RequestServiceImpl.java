package myPackage.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import myPackage.springdemo.dao.RequestDAO;
import myPackage.springdemo.entity.BloodRequest;

@Service
public class RequestServiceImpl implements RequestService 
{
	// need to inject customer dao
	@Autowired
	private RequestDAO requestDAO;
	
	@Override
	@Transactional
	public List<BloodRequest> getRequests() {
		return requestDAO.getRequests();
	}

}
