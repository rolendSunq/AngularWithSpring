package org.angularstudy.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Chapter6Controller {
	private static final Logger logger = LoggerFactory.getLogger(Chapter6Controller.class);
	
	@RequestMapping(value = "/angularjs/app6-5", method = RequestMethod.GET)
	public String getApp6dash5(Model model) {
		logger.info("getApp6dash5..........");
		return "chapter6/app6-5";
	}
}
