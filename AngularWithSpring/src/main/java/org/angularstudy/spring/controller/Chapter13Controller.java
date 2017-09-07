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

	@RequestMapping(value="app13-8", method=RequestMethod.GET, name="chapter 13-8")
	public String getApp13Dash8(Model model) {
		logger.debug("getApp13Dash8");
		return "chapter13/app13-8";
	}

	@RequestMapping(value="app13-9", method=RequestMethod.GET, name="chapter 13-9")
	public String getApp13Dash9(Model model) {
		logger.debug("getApp13Dash9");
		return "chapter13/app13-9";
	}

	@RequestMapping(value="app13-13", method=RequestMethod.GET, name="chapter 13-13")
	public String getApp13Dash13(Model model) {
		logger.debug("getApp13Dash13");
		return "chapter13/app13-13";
	}

	@RequestMapping(value="app13-14", method=RequestMethod.GET, name="chapter 13-14")
	public String getApp13Dash14(Model model) {
		logger.debug("getApp13Dash14");
		return "chapter13/app13-14";
	}

	@RequestMapping(value="app13-15", method=RequestMethod.GET, name="chapter 13-15")
	public String getApp13Dash15(Model model) {
		logger.debug("getApp13Dash15");
		return "chapter13/app13-15";
	}

	@RequestMapping(value="app13-16", method=RequestMethod.GET, name="chapter 13-16")
	public String getApp13Dash16(Model model) {
		logger.debug("getApp13Dash16");
		return "chapter13/app13-16";
	}

	@RequestMapping(value="app13-17", method=RequestMethod.GET, name="chapter 13-17")
	public String getApp13Dash17(Model model) {
		logger.debug("getApp13Dash17");
		return "chapter13/app13-17";
	}

}
