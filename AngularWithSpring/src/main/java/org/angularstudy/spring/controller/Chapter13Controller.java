package org.angularstudy.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/angularjs/")
public class Chapter13Controller {
	private static final Logger logger = LoggerFactory.getLogger(Chapter13Controller.class);

	@RequestMapping(value="app13-1", method=RequestMethod.GET, name="chapter 13-1")
	public String getApp13Dash1(Model model) {
		logger.debug("getApp13Dash1");
		return "chapter13/app13-1";
	}

	@RequestMapping(value="app13-2", method=RequestMethod.GET, name="chapter 13-2")
	public String getApp13Dash2(Model model) {
		logger.debug("getApp13Dash2");
		return "chapter13/app13-2";
	}

	@RequestMapping(value="app13-3", method=RequestMethod.GET, name="chapter 13-3")
	public String getApp13Dash3(Model model) {
		logger.debug("getApp13Dash3");
		return "chapter13/app13-3";
	}

	@RequestMapping(value="app13-4", method=RequestMethod.GET, name="chapter 13-4")
	public String getApp13Dash4(Model model) {
		logger.debug("getApp13Dash4");
		return "chapter13/app13-4";
	}

	@RequestMapping(value="app13-5", method=RequestMethod.GET, name="chapter 13-5")
	public String getApp13Dash5(Model model) {
		logger.debug("getApp13Dash5");
		return "chapter13/app13-5";
	}

	@RequestMapping(value="app13-6", method=RequestMethod.GET, name="chapter 13-6")
	public String getApp13Dash6(Model model) {
		logger.debug("getApp13Dash6");
		return "chapter13/app13-6";
	}

}
