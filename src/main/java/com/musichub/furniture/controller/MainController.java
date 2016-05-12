package com.musichub.furniture.controller;

import java.util.Map;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;

import org.apache.taglibs.standard.lang.jstl.ModulusOperator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.musichub.furniture.dao.IProductDao;
import com.musichub.furniture.dao.ProductDao;
 
import com.musichub.furniture.model.Product;
import com.musichub.furniture.model.Register;
 
import com.musichub.furniture.service.IProductService;
import com.musichub.furniture.service.IRegisterService;
  

@Controller
public class MainController {

	@Autowired
	private IRegisterService registerService;
	
	@Autowired
	private IProductService productService;
	
	 @RequestMapping(value={"/","/index"})  
		public ModelAndView index() {	
		return  new ModelAndView("index");
	}
	
	@RequestMapping("allcatagories")
	public ModelAndView allcatagories() {
		return  new ModelAndView( "allcatagories") ;
	}
	
	@RequestMapping("productinfo")
	public ModelAndView productinfo(){
		IProductDao dao = new ProductDao();
		Gson gson = new Gson();
		String temp = gson.toJson(dao.getAllProduct());
		return new ModelAndView("productinfo", "data", temp );
	}
	
	@RequestMapping("register") 
	public ModelAndView register(){
		
		return new ModelAndView("register","command", new Register());
	}
	
	@RequestMapping("saveregistration")
	public ModelAndView saveregistration(@ModelAttribute("furniture") Register registerbean, BindingResult result){
		registerService.addRegistration(registerbean);
		 return new ModelAndView("redirect:/addregistration");
	}
	
	@RequestMapping("addregistration")
	public ModelAndView addregistration(@ModelAttribute("furniture") Register registerbean, BindingResult result){
		Map<String, Object> model = new java.util.HashMap<String, Object>();
		model.put("register", registerService.getRegisteration());
		return new ModelAndView("index");
	} 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("product")
	public ModelAndView product(){
		return new ModelAndView("product", "command", new Product());
	}
	
	@RequestMapping("saveproduct")
	public ModelAndView saveproduct(@ModelAttribute("furniture") Product productbean, BindingResult result){
	    productService.addProduct(productbean);
		return new ModelAndView("index");
	}
	
	
	
	@RequestMapping("productupdate")
	public ModelAndView productupdate(@ModelAttribute("furniture") Product productbean, BindingResult result){
		Map<String, Object> model = new HashMap<String, Object>();
		  model.put("product_list",  productService.getAllProduct()); 
	 	  return new ModelAndView("productupdate",model);  
		
	}
	
	
	@RequestMapping(value = "/deleteproduct", method = RequestMethod.GET)  
	 public ModelAndView deleteproduct(@ModelAttribute("furniture")  Product  product,  
	   BindingResult result) {  
	  productService.deleteProduct(product.getPid());
	  
	/*  Map<String, Object> model = new HashMap<String, Object>();  
	  model.put("product_list",  productService.getAllProduct());  
	  return new ModelAndView("productupdate", model); */
	  return new ModelAndView("productupdate");
	 }  
	   
	 @RequestMapping(value = "/editproduct", method = RequestMethod.GET)  
	 public ModelAndView editproduct(@ModelAttribute("furniture")  Product product,  
	   BindingResult result) {  
	  Map<String, Object> model = new HashMap<String, Object>();  
	  model.put("products", productService.getProduct(product.getPid()));   
	  model.put("product_list",  productService.getAllProduct());    
	  return new ModelAndView("productupdate", model);  
	 }  
	 
	 @RequestMapping(value="/products", method = RequestMethod.GET)
		public List<Product> getAllProduct() {
			return productService.getAllProduct();
		}
	 
	 
	 
	 
	 
	 
	 @RequestMapping(value = "/login", method = RequestMethod.GET)
	    public String login(ModelMap model) {
	        return "login";
	    }
	 
	    @RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
	    public String loginerror(ModelMap model, Principal principal) {
	    	String username = principal.getName();  
	    	 model.addAttribute("message", "Sorry "+username+" You don't have privileges to view this page!!!");  
	        return "accessdenied";
	    }
	 
	    @RequestMapping(value = "/logout", method = RequestMethod.GET)
	    public String logout(ModelMap model) {
	        return "logout";
	    }
	
	    
	    @RequestMapping("viewproducts")
		public ModelAndView viewproducts(@ModelAttribute("furniture") Product productbean, BindingResult result){
			/*Map<String, Object> model = new HashMap<String, Object>();
			  model.put("product_list",  productService.getAllProduct()); 
		 	  return new ModelAndView("productupdate",model);  
			*/
	    	Gson gson = new Gson();
	    	String temp= gson.toJson(productService.getAllProduct());
	    	return new ModelAndView("viewproducts","data", temp);
		}
	 

		 @RequestMapping(value="homeadmin")  
			public ModelAndView homeadmin() {	
			return  new ModelAndView("homeadmin");
		}
			    
}
