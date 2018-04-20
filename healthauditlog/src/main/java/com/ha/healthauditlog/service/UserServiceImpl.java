package com.ha.healthauditlog.service;

import java.security.Principal;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ha.healthauditlog.model.SignUp;
import com.ha.healthauditlog.model.User;
import com.ha.healthauditlog.repository.RoleRepository;
import com.ha.healthauditlog.repository.SignUpRepository;
import com.ha.healthauditlog.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService{
	
	
	@Autowired
	SignUpRepository signUpRepository;
	@Autowired
	 private UserRepository userRepository;
	 @Autowired
	 private RoleRepository roleRepository;

	 @SuppressWarnings("unchecked")
	 public void save(User user) {
	 user.setPassword(user.getPassword());
	 user.setRoles(new HashSet(roleRepository.findAll()));
	 userRepository.save(user);
	 }

	 public User findByUsername(String username) {
	 return userRepository.findByUsername(username);
	 }

	@Override
	public RedirectAttributes saveSignUp(SignUp signUp, RedirectAttributes attributes, Principal principal) {
		
		signUpRepository.save(signUp);
		return null;
	}
	@Override
	public List<SignUp> findAllUser() {
		
		return signUpRepository.findAll();
	}
}
