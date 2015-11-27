package spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.model.User;
import spring.service.UserService;

@Controller
public class IndexController{
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = { "/", "index" }, method = RequestMethod.GET)
	public String homePage(ModelMap model) {
		
		List<User> allUsers = userService.findAll();
		
		model.put("user", allUsers.get(0));
		
		return "index";
	}

}
