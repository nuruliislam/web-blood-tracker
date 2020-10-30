package myPackage.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import myPackage.springdemo.dao.RequestDAO;
import myPackage.springdemo.entity.BloodRequest;

@Controller
@RequestMapping("/request")
public class RequestController {
	
	@Autowired
	private RequestDAO requestDAO;
	
	@GetMapping("/list")
	public String listRequests(Model theModel) {
		
		// get customers from the service
		List<BloodRequest> theRequests = requestDAO.getRequests();
				
		// add the customers to the model
		theModel.addAttribute("requests", theRequests);
		
		return "request_view";
	}

}
