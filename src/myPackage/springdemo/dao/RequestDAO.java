package myPackage.springdemo.dao;

import java.util.List;
import myPackage.springdemo.entity.BloodRequest;

public interface RequestDAO 
{
	public List<BloodRequest> getRequests();
	
	public void saveRequest(BloodRequest bloodRequest);
}
