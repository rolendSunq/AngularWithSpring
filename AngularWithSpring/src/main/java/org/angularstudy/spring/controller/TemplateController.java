package org.angularstudy.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/angularjs/")
public class TemplateController {
	private static final Logger logger = LoggerFactory.getLogger(TemplateController.class);

	@RequestMapping(value="template/{(a-z|A-Z|0-9)*}", method=RequestMethod.GET, name="template")
	public String getApp14(HttpServletRequest request) {
		logger.info("params::::" + request.getRequestURI());

		String[] strArr = request.getRequestURL().toString().split("/");

		logger.info("last str::::" + strArr[strArr.length - 1]);

		return "template/" + strArr[strArr.length - 1];
	}

	@RequestMapping(value="template/tableView2", method=RequestMethod.GET, name="template tableView")
	public String getApp15(HttpServletRequest request) {
		logger.info("params::::" + request.getRequestURI());

		String[] strArr = request.getRequestURL().toString().split("/");

		logger.info("last str::::" + strArr[strArr.length - 1]);

		return "template/" + strArr[strArr.length - 1];
	}

}
