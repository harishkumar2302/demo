package com.example.demo;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.DAO.UsersDAO;
import com.example.demo.model.Users;
import com.example.demo.service.UsersBO;

@Controller
public class AppController {

	@Autowired
	UsersBO usersBO;

	@RequestMapping("/cassure.com")
	public String welcomepage() {
		return "homepage";
	}

	@GetMapping("/loginpage")
	public String login(@ModelAttribute Users users) {
		return "loginpage";
	}

	@PostMapping("/userLogin")
	public String validateUser(@ModelAttribute Users users, @RequestParam int id, @RequestParam String password,Model model)
	{
		//System.out.println(id+password);
		String name = usersBO.loginValidator(id, password);
		System.out.println(name);
		if (name.equalsIgnoreCase("admin")) {
			return "Adminpage";
		}
		model.addAttribute("error", "Invalid User Id or Password");
		return "loginpage";
	}

	@ModelAttribute("qualificationList")
	public Map<String, String> qualificationdetails() {
		Map<String, String> qlist = new HashMap<>();
		qlist.put("Employed", "Employed");
		qlist.put("Selfemployed", "Selfemployed");
		qlist.put("Unemployed", "Unemployed");
		qlist.put("Graduate", "Graduate");
		qlist.put("NonGraduate", "NonGraduate");
		return qlist;
	}

	@RequestMapping("/register")
	public String registerpage(@ModelAttribute Users users) {
		return "register";
	}

	@PostMapping("/registerresult")
	public String register(@ModelAttribute("users") Users users, Model model, BindingResult result) {
		if (result.hasErrors()) {
			return "register";
		}
		boolean flag = usersBO.addUser(users);
		if (flag)
			return "registerresult";
		else
			return "register";
	}

}
