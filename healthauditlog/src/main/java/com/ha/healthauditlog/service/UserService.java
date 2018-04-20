package com.ha.healthauditlog.service;

import java.security.Principal;
import java.util.List;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ha.healthauditlog.model.SignUp;
import com.ha.healthauditlog.model.User;

public interface UserService {
	void save(User user);

	 User findByUsername(String username);

	RedirectAttributes saveSignUp(SignUp signUp, RedirectAttributes attributes, Principal principal);

	List<SignUp> findAllUser();
}
