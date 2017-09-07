package org.angularstudy.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/angularjs/")
public class Chapter14Controller {
	private static final Logger logger = LoggerFactory.getLogger(Chapter14Controller.class);

	@RequestMapping(value="app14-1", method=RequestMethod.GET, name="Chapter 14-1")
	public String getApp14Dash1(Model model) {
		logger.debug("getApp14Dash1");
		return "chapter14/app14-1";
	}

	@RequestMapping(value="app14-2", method=RequestMethod.GET, name="Chapter 14-2")
	public String getApp14Dash2(Model model) {
		logger.debug("getApp14Dash2");
		return "chapter14/app14-2";
	}

	@RequestMapping(value="app14-5", method=RequestMethod.GET, name="Chapter 14-5")
	public String getApp14Dash5(Model model) {
		logger.debug("getApp14Dash5");
		return "chapter14/app14-5";
	}

	@RequestMapping(value="app14-6", method=RequestMethod.GET, name="Chapter 14-6")
	public String getApp14Dash6(Model model) {
		logger.debug("getApp14Dash6");
		return "chapter14/app14-6";
	}

	@RequestMapping(value="app14-7", method=RequestMethod.GET, name="Chapter 14-7")
	public String getApp14Dash7(Model model) {
		logger.debug("getApp14Dash7");
		return "chapter14/app14-7";
	}

	@RequestMapping(value="app14-8", method=RequestMethod.GET, name="Chapter 14-8")
	public String getApp14Dash8(Model model) {
		logger.debug("getApp14Dash8");
		return "chapter14/app14-8";
	}

	@RequestMapping(value="app14-9", method=RequestMethod.GET, name="Chapter 14-9")
	public String getApp14Dash9(Model model) {
		logger.debug("getApp14Dash9");
		return "chapter14/app14-9";
	}

	@RequestMapping(value="app14-10", method=RequestMethod.GET, name="Chapter 14-10")
	public String getApp14Dash10(Model model) {
		logger.debug("getApp14Dash10");
		return "chapter14/app14-10";
	}

	@RequestMapping(value="app14-12", method=RequestMethod.GET, name="Chapter 14-12")
	public String getApp14Dash12(Model model) {
		logger.debug("getApp14Dash12");
		return "chapter14/app14-12";
	}

	@RequestMapping(value="app14-14", method=RequestMethod.GET, name="Chapter 14-14")
	public String getApp14Dash14(Model model) {
		logger.debug("getApp14Dash14");
		return "chapter14/app14-14";
	}
}
