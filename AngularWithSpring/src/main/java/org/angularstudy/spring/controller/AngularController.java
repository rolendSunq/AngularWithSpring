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

	@RequestMapping(value="app{[1-9]+}-{[1-9]+}", method=RequestMethod.GET, name="app15")
	public String getApp15(Model model, HttpServletRequest request) {
		logger.info("params::::" + request.getRequestURI());
		return getTargetUrl(request.getRequestURI().toString());
	}


	private String getTargetUrl(String urls) {
		String[] tempArrString = urls.split("\\D+");
		StringBuffer sb = new StringBuffer();
		sb.append("chapter").append(tempArrString[1]).append("/app").append(tempArrString[1]).append("-").append(tempArrString[2]);
		return sb.toString();
	}
}
