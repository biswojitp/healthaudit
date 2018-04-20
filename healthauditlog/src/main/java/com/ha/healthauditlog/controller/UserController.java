package com.ha.healthauditlog.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;
import com.ha.healthauditlog.model.SignUp;
import com.ha.healthauditlog.service.UserService;

public class UserController {
	 @Autowired
	 private UserService userService;
	 
	 @RequestMapping("/")
		public String welcome() {
		  return "app.welcome";
		}
		@RequestMapping("/welcome")
		public String welcome1() {
		  return "app.welcome";
		}
		@RequestMapping("/signup.htm")
		public String signup() {
		  return "app.signup";
		}
		/*@RequestMapping(value = "/login", method = RequestMethod.GET)
		 public String login(Model model, String error, String logout) {
		if (error != null)
		 model.addAttribute("error", "Your username and password is invalid.");

		 if (logout != null)
		 model.addAttribute("message", "You have been logged out successfully.");

		 return "login1";
		 }*/
		@RequestMapping("/login")
		public String login() {
			System.out.println("I am inside login");
		  return "login1";
		}
		@RequestMapping(value = "/saveSignUp.htm", method = RequestMethod.POST)
		public RedirectView saveDetails(@ModelAttribute("signUp") SignUp signUp,
				RedirectAttributes attributes,HttpSession session ,Principal principal) {
			//System.out.println("item name "+signUp.getItemName());
			attributes = userService.saveSignUp(signUp, attributes, principal);
			return new RedirectView("signup.htm", true);
		}

	 /*@RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
	 public String welcome(Model model) {
	 return "home";
	 }*/
}
