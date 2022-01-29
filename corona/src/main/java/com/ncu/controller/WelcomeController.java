package com.ncu.controller;


import java.util.List;
	import java.util.Map;

import javax.validation.Valid;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.HttpMediaTypeNotAcceptableException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.razorpay.*;


import com.ncu.dao.Blooddao;
import com.ncu.dao.UserDao;
import com.ncu.model.Resources;
import com.ncu.model.firstmodel;
import com.ncu.model.formmodel;




	@Controller
	public class WelcomeController {

		@Autowired
		private Blooddao blooddao;
		@Autowired
		private UserDao userdao;
		@RequestMapping("/hello")
	
		public String welcomemsg(Model model) {
			System.out.println("jiijijkii");
			model.addAttribute("msg", "vaishali");
			return "corona";
		}
		
	
		@RequestMapping(path="/home")
		public String logindone(@ModelAttribute("userModel") firstmodel user , Model model) {
			
//			 System.out.println(user.getPhn());
			if (user.getPhn()!=null) {
				 blooddao.add(user);
				 System.out.println(user.getPhn());
			}
		
			model.addAttribute("msg", "ishaan");
		return "home";
		}
		
		
		@RequestMapping(path="/success")
		public String logindone( Model model) {
		model.addAttribute("msg", "ishaan");
		return "success";
		}
		
//		@RequestMapping(path="/create" , method=RequestMethod.POST)
		
//		public String createOrder(@RequestBody String data[]) {
//		public @ResponseBody String createOrder (@RequestBody Map<>) {
		     
		 @PostMapping("/create")
			@ResponseBody
			@ExceptionHandler(HttpMediaTypeNotAcceptableException.class)
			public String createOrder(@RequestBody Map<String, Object> data) throws RazorpayException {
			System.out.println(data);
			int amt=Integer.parseInt(data.get("amount").toString());
			RazorpayClient client=new RazorpayClient("rzpkey","your key");
			  JSONObject orderRequest = new JSONObject();
			  orderRequest.put("amount", amt*100); // amount in the smallest currency unit
			  orderRequest.put("currency", "INR");
			  orderRequest.put("receipt", "order_rcptid_11");
			  Order order=  client.Orders.create(orderRequest);
			  System.out.println(order);
			  return order.toString();
		}
		 
		
		  @RequestMapping(value="/admin", method=RequestMethod.GET)
		    public String privateHome() {  
				 
		        return "adminp";  
		    }   

			  @RequestMapping(value="/done")
			  public String someAction(@ModelAttribute("userm") firstmodel user , Model model) {
			        List<firstmodel> first = blooddao.listalldonation();
//			        System.out.println(first);
			        model.addAttribute("donorList", first);
			        
		            	 return "done"; 
		             }
			  
			  @RequestMapping(value="/nav")
			  public String nav() {
			 
		            	 return "nav"; 
		             }
			  
//			  @RequestMapping(value = "/donation")
//			    public String dona(Model theModel)
//			    {
//				  theModel.addAttribute("resources", new secondmodel());
//			        return "blood";
//			    }
//			  @RequestMapping(value = "/blood", method=RequestMethod.POST)
//			    public String saveInfo(@ModelAttribute("bloodon") secondmodel secm, Model model)
//			    {
//			        blooddao.add(secm);
//			        return "hello";
//			    }
			  
			  @RequestMapping(value = "/delete/{phn}")
			    public String deletedonor(@PathVariable("phn") String phn, @ModelAttribute("userm") firstmodel user , Model model)
			    {
			        blooddao.delete(phn);
			        
			        return ("redirect:/done");
			    }
			  
			  
			  @RequestMapping(value = "/edit{phn}")
			  public String editdonor(@PathVariable("phn") String phn, @ModelAttribute("usere") firstmodel user , Model model)
			    {
			       
			      
			       System.out.println(blooddao.find(phn)); 
			        user=blooddao.find(phn);
//			        List<firstmodel> first = blooddao.listalldonation();
//			        System.out.println(first);
//			        model.addAttribute("donorList", first);
			        model.addAttribute("usere",user);  
			        return "editbl";
			    }
			  
			  @RequestMapping(value = "update")
			  public String updatedonor( @ModelAttribute("use") firstmodel user , Model model)
			    {
			       
			      System.out.println(user.getName());
			      System.out.println(user.getPhn());
		         blooddao.update(user);
		         return ("redirect:/done");
			    }
			  
			  
			  
			  
			  
			  
			  
			   @RequestMapping(value = "getresources")
			    public String listEmployees(@ModelAttribute("resources") Resources resources, Model model)
			    {

			        List<Resources> resourcelist =  userdao.list();
			        System.out.println(resourcelist);
			        model.addAttribute("resourcelist", resourcelist);
			        
			        return "ViewResources2";
			    }
		 @RequestMapping(value = "/approve{address}")
			    public String editEmployee(@PathVariable("address") String address,@ModelAttribute("resources") Resources resources, Model model)
			    {
			       
			        userdao.insertfromresource1(address);
					userdao.deleteresource(address);
					System.out.println(address);
			     
			        
			        return ("redirect:/getresources");
			    }
		 @RequestMapping(value = "/decline{address}")
		    public String deleteresource(@PathVariable("address") String address,@ModelAttribute("resources") Resources resources, Model model)
		    {
		       
				userdao.deleteresource(address);
				System.out.println(address);
		     
		        
		        return ("redirect:/getresources");
		    }
		 
		 
		 
		 
		 
		 @RequestMapping("/resource")
			public String Home(Model theModel) {
				theModel.addAttribute("resources", new Resources());
				
				return "donor";
			}
		 
		 
		 
		 
		 
		 @RequestMapping("/processForm")
			public String processForm(@Valid @ModelAttribute("resources") Resources theresource,BindingResult theBindingResult) {
				
			
				
				if (theBindingResult.hasErrors()) {
					return "donor";
				}
				else {
					
					userdao.insertresource(theresource);
					return "resourceinserted";
				}
			}
		 
		 @RequestMapping("/view")
			public String Homeid(Model theModel) {
				theModel.addAttribute("resources", new Resources());
				
				return "viewform";
			}
		 
		 
		 @RequestMapping("/showform")
			public String showForm(@ModelAttribute("resources") formmodel theresource,BindingResult theBindingResult, Model model) {
				
			 System.out.println(theresource.getResource());
				
			if (theresource.getResource().equals("Blood")) {
					return  ("redirect:/vblood");
			}
				//else if (theresource.getResource().equals("Oxygen")) {
					
			else {
					List<formmodel> resourcelist =  userdao.list5(theresource.getState(),theresource.getResource());
			        System.out.println(resourcelist);
			        model.addAttribute("resourcelist", resourcelist);
					//return  ("redirect:/voxy");
			        return "voxygen";
		
				
				
				}
//				else if (theresource.getResource().equals("Medicine")) {
//					 List<formmodel> resourcelist =  userdao.list5(theresource.getState(),theresource.getResource());
//			        System.out.println(resourcelist);
//			        model.addAttribute("resourcelist", resourcelist);
//			        
//			        return "voxygen";
//					//return  ("redirect:/vmed");
//		}
//				else if (theresource.getResource().equals("Ventilators")) {
//					 List<formmodel> resourcelist =  userdao.list5(theresource.getState(),theresource.getResource());
//			        System.out.println(resourcelist);
//			        model.addAttribute("resourcelist", resourcelist);
//			        
//			        return "voxygen";
//					//return  ("redirect:/vvent");
//		}
				
			}
		 
		 @RequestMapping(value = "approvedresources")
		    public String listAppresources(@ModelAttribute("resources") Resources resources, Model model)
		    {

		        List<Resources> resourcelist =  userdao.list2();
		        System.out.println(resourcelist);
		        model.addAttribute("resourcelist", resourcelist);
		        
		        return "ViewApproved";
		    }
		 
		 
		 @RequestMapping(value = "/decline2{address}")
		    public String deleteresource2(@PathVariable("address") String address,@ModelAttribute("resources") Resources resources, Model model)
		    {
		       
				userdao.deleteresource2(address);
				System.out.println(address);
		     
		        
		        return ("redirect:/approvedresources");
		    }
		 
		  @RequestMapping(value="/vblood")
		  public String someAction1(@ModelAttribute("userm") firstmodel user , Model model) {
		        List<firstmodel> first = blooddao.listalldonation();
//		        System.out.println(first);
		        model.addAttribute("donorList", first);
		        
	            	 return "vblood"; 
	             }
		 
		  @RequestMapping(value = "/edit2{address}")
		  public String editresource2(@PathVariable("address") String address,@ModelAttribute("resources") Resources resources, Model model)
		    {
		       
		      
			  System.out.println(userdao.findad(address));
//		        user=blooddao.find(phn);
			  resources=userdao.findad(address);
////		       
		        model.addAttribute("resources",resources);  
		        return "editres";
		    }
	
	
		  @RequestMapping(value = "update2")
		  public String updateres( @ModelAttribute("use") Resources user , Model model)
		    {
		       
		      System.out.println(user.getName());
		      System.out.println(user.getAddress());
	         userdao.update(user);
	         return ("redirect:/approvedresources");
		    }
	
	
//	 @RequestMapping(value = "/voxy")
//	    public String listoxgenresources(@ModelAttribute("resources") formmodel resources, Model model, String state)
//	    {
//             System.out.println(resources.getState());
//	        List<formmodel> resourcelist =  userdao.list3(state);
//	        System.out.println(resourcelist);
//	        model.addAttribute("resourcelist", resourcelist);
//	        
//	        return "voxygen";
//	    }
//	 @RequestMapping(value = "/vmed")
//	    public String medicines(@ModelAttribute("resources") formmodel resources, Model model, String state)
//	    {
//            
//	        List<formmodel> resourcelist =  userdao.list4(state);
//	        System.out.println(resourcelist);
//	        model.addAttribute("resourcelist", resourcelist);
//	        
//	        return "voxygen";
//	    }
//	 @RequestMapping(value = "/vvent")
//	    public String ventilators(@ModelAttribute("resources") formmodel resources, Model model, String state)
//	    {
//
//	        List<formmodel> resourcelist =  userdao.list5(state);
//	        System.out.println(resourcelist);
//	        model.addAttribute("resourcelist", resourcelist);
//	        
//	        return "voxygen";
//	    }
		  
		  
}
