package org.angularstudy.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/angularjs/")
public class AngularController {
	private static final Logger logger = LoggerFactory.getLogger(AngularController.class);

	@RequestMapping(value="app15-{[1-9]+}", method=RequestMethod.GET, name="app15")
	public String getApp15(Model model, HttpServletRequest request) {
		logger.info("params::::" + request.getRequestURI());

		return "chapter15/app15-" + getTargetUrl(request.getRequestURL().toString());
	}

	@RequestMapping(value="app16-{[1-9]+}", method=RequestMethod.GET, name="app16")
	public String getApp16(Model model, HttpServletRequest request) {
		logger.info("params::::" + request.getRequestURI());

		return "chapter16/app16-" + getTargetUrl(request.getRequestURL().toString());
	}

	private String getTargetUrl(String urls) {
		String[] tempArrString = urls.split("-");
		return tempArrString[1];
	}
}
