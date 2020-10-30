package myPackage.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import myPackage.springdemo.entity.BloodRequest;
import myPackage.springdemo.service.RequestService;

@Controller
@RequestMapping("/request")
public class RequestController {
	
	@Autowired
	private RequestService requestService;
	
	@GetMapping("/list")
	public String listRequests(Model theModel) {
		
		// get customers from the service
		List<BloodRequest> theRequests = requestService.getRequests();
				
		// add the customers to the model
		theModel.addAttribute("requests", theRequests);
		
		return "request_view";
	}
	
	@PostMapping("/saveRequest")
	public String saveCustomer(@ModelAttribute("request") BloodRequest bloodRequest) {
		
		// save the customer using our service
		requestService.saveRequest(bloodRequest);
		System.out.println(bloodRequest.getHospitalName());
		
		return "redirect:/request/list";
	}
	
	
}