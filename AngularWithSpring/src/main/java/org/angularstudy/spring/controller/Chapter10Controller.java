package org.angularstudy.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/angularjs/")
public class Chapter10Controller {
	private static final Logger logger = LoggerFactory.getLogger(Chapter10Controller.class);

	@RequestMapping(value = "app10-1", name = "chapter 10-1")
	public String getApp10Dash1(Model model) {
		logger.debug("getApp10Dash1");
		return "chapter10/app10-1";
	}

	@RequestMapping(value="app10-2", name="chapter 10-2")
	public String getApp10Dash2(Model model) {
		logger.debug("getApp10Dash2");
		return "chapter10/app10-2";
	}

	@RequestMapping(value="app10-4", method=RequestMethod.GET, name="chapter 10-4")
	public String getApp10Dash4(Model model) {
		logger.debug("getApp10Dash4");
		return "chapter10/app10-4";
	}

	@RequestMapping(value="app10-5", method=RequestMethod.GET, name="chapter 10-5")
	public String getApp10Dash5(Model model) {
		logger.debug("getApp10Dash5");
		return "chapter10/app10-5";
	}
}
