package org.angularstudy.spring.controller;

import java.util.HashMap;
import java.util.Map;

import org.angularstudy.spring.services.SportsStoreService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/angularjs/")
public class Chapter8Controller {
	private static final Logger logger = LoggerFactory.getLogger(Chapter8Controller.class);
	
	@Autowired
	private SportsStoreService sportsStoreService;
	
	@RequestMapping(value = "app8-1", method = RequestMethod.GET)
	public String getApp8dash1(Model model) {
		return "chapter7/app7-16";
	}
	
	@RequestMapping(value = "orders", method = RequestMethod.POST)
	public @ResponseBody String getOrders() {
		return null;
	}
	
	@RequestMapping(value = "admin")
	public String callLogin() {
		logger.debug("login..........");
		return "chapter8/admin";
	}
	
	@RequestMapping(value = "users/login", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> processingLogin(
			@RequestParam(value = "username", defaultValue = "") String username, 
			@RequestParam(value = "password", defaultValue = "") String password) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("userid", username);
		paramMap.put("passwd", password);
		return sportsStoreService.isThisUserService(paramMap); 
	}
}
