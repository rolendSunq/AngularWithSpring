package org.angularstudy.spring.controller;

import java.util.List;
import java.util.Map;

import org.angularstudy.spring.services.SportsStoreService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class Chapter7Controller {
	private static final Logger logger = LoggerFactory.getLogger(Chapter7Controller.class);
	
	@Autowired
	private SportsStoreService service;
	
	@RequestMapping(value = "/angularjs/products", produces = { "application/json; charset=UTF-8"})
	public @ResponseBody String getAjaxProduct() throws Exception {
		List<Map<String, String>> list = service.getSportsStoreService();
		logger.info(list.toString());
		return new ObjectMapper().writeValueAsString(list);
	}
	
	@RequestMapping(value = "/angularjs/app7-2", method = RequestMethod.GET)
	public String getApp7dash2(Model model) {
		return "chapter7/app7-2";
	}

	@RequestMapping(value = "/angularjs/app7-4", method = RequestMethod.GET)
	public String getApp7dash4(Model model) {
		return "chapter7/app7-4";
	}
	
	@RequestMapping(value = "/angularjs/app7-12", method = RequestMethod.GET)
	public String getApp7dash12(Model model) {
		return "chapter7/app7-12";
	}
	
	@RequestMapping(value = "/angularjs/app7-16", method = RequestMethod.GET)
	public String getApp7dash16(Model model) {
		return "chapter7/app7-16";
	}
}
