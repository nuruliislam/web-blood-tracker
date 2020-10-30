package myPackage.springdemo.service;

import java.util.List;
import myPackage.springdemo.entity.BloodRequest;

public interface RequestService 
{
	public List<BloodRequest> getRequests();
	
	public void saveRequest(BloodRequest bloodRequest);
}
