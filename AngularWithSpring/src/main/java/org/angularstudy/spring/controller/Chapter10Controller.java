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

	@RequestMapping(value="app10-1", method=RequestMethod.GET, name="chapter 10-1")
	public String getApp10Dash1(Model model) {
		logger.debug("getApp10Dash1");
		return "chapter10/app10-1";
	}

	@RequestMapping(value="app10-2", method=RequestMethod.GET, name="chapter 10-2")
	public String getApp10Dash2(Model model) {
		logger.debug("getApp10Dash2");
		return "chapter10/app10-2";
	}
	
	@RequestMapping(value="app10-3", method=RequestMethod.GET, name="chapter 10-3")
	public String getApp10Dash3(Model model) {
		logger.debug("getApp10Dash3");
		return "chapter10/app10-3";
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
	
	@RequestMapping(value="app10-6", method=RequestMethod.GET, name="chapter 10-6")
	public String getApp10Dash6(Model model) {
		logger.debug("getApp10Dash6");
		return "chapter10/app10-6";
	}
	
	@RequestMapping(value="app10-7", method=RequestMethod.GET, name="chapter 10-7")
	public String getApp10Dash7(Model model) {
		logger.debug("getApp10Dash7");
		return "chapter10/app10-7";
	}
	
	@RequestMapping(value="app10-8", method=RequestMethod.GET, name="chapter 10-8")
	public String getApp10Dash8(Model model) {
		logger.debug("getApp10Dash8");
		return "chapter10/app10-8";
	}
	
	@RequestMapping(value="app10-9", method=RequestMethod.GET, name="chapter 10-9")
	public String getApp10Dash9(Model model) {
		logger.debug("getApp10Dash9");
		return "chapter10/app10-9";
	}
	
	@RequestMapping(value="app10-10", method=RequestMethod.GET, name="chapter 10-10")
	public String getApp10Dash10(Model model) {
		logger.debug("getApp10Dash10");
		return "chapter10/app10-10";
	}
	
	@RequestMapping(value="app10-12", method=RequestMethod.GET, name="chapter 10-12")
	public String getApp10Dash12(Model model) {
		logger.debug("getApp10Dash12");
		return "chapter10/app10-12";
	}
	
	@RequestMapping(value="app10-13", method=RequestMethod.GET, name="chapter 10-13")
	public String getApp10Dash13(Model model) {
		logger.debug("getApp10Dash13");
		return "chapter10/app10-13";
	}
	
	@RequestMapping(value="app10-15", method=RequestMethod.GET, name="chapter 10-15")
	public String getApp10Dash15(Model model) {
		logger.debug("getApp10Dash15");
		return "chapter10/app10-15";
	}
	
	@RequestMapping(value="app10-17", method=RequestMethod.GET, name="chapter 10-17")
	public String getApp10Dash17(Model model) {
		logger.debug("getApp10Dash17");
		return "chapter10/app10-17";
	}
	
	@RequestMapping(value="app10-18", method=RequestMethod.GET, name="chapter 10-18")
	public String getApp10Dash18(Model model) {
		logger.debug("getApp10Dash18");
		return "chapter10/app10-18";
	}

}
