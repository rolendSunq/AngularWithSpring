package org.angularstudy.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/angularjs/")
public class Chapter15Controller {
	private static final Logger logger = LoggerFactory.getLogger(Chapter15Controller.class);

	@RequestMapping(value="app15-1", method=RequestMethod.GET, name="app15-1")
	public String getApp15Dash1(Model model) {
		logger.debug("getApp15Dash1");
		return "chapter15/app15-1";
	}

	@RequestMapping(value="app15-2", method=RequestMethod.GET, name="app15-2")
	public String getApp15Dash2(Model model) {
		logger.debug("getApp15Dash2");
		return "chapter15/app15-2";
	}

	@RequestMapping(value="app15-6", method=RequestMethod.GET, name="app15-6")
	public String getApp15Dash6(Model model) {
		logger.debug("getApp15Dash6");
		return "chapter15/app15-6";
	}

	@RequestMapping(value="app15-7", method=RequestMethod.GET, name="app15-7")
	public String getApp15Dash7(Model model) {
		logger.debug("getApp15Dash7");
		return "chapter15/app15-7";
	}

	@RequestMapping(value="app15-8", method=RequestMethod.GET, name="app15-8")
	public String getApp15Dash8(Model model) {
		logger.debug("getApp15Dash8");
		return "chapter15/app15-8";
	}

	@RequestMapping(value="app15-9", method=RequestMethod.GET, name="app15-9")
	public String getApp15Dash9(Model model) {
		logger.debug("getApp15Dash9");
		return "chapter15/app15-9";
	}

	@RequestMapping(value="app15-10", method=RequestMethod.GET, name="app15-10")
	public String getApp15Dash10(Model model) {
		logger.debug("getApp15Dash10");
		return "chapter15/app15-10";
	}

	@RequestMapping(value="app15-11", method=RequestMethod.GET, name="app15-11")
	public String getApp15Dash11(Model model) {
		logger.debug("getApp15Dash11");
		return "chapter15/app15-11";
	}

	@RequestMapping(value="app15-12", method=RequestMethod.GET, name="app15-12")
	public String getApp15Dash12(Model model) {
		logger.debug("getApp15Dash12");
		return "chapter15/app15-12";
	}

	@RequestMapping(value="app15-13", method=RequestMethod.GET, name="app15-13")
	public String getApp15Dash13(Model model) {
		logger.debug("getApp15Dash13");
		return "chapter15/app15-13";
	}
}
