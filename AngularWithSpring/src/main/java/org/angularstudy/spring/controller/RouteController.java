package org.angularstudy.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/angularjs/")
public class RouteController {
	private Logger logger = LoggerFactory.getLogger(RouteController.class);
	
	@RequestMapping(value="route/list", method=RequestMethod.GET, name="Route List Controller")
	public @ResponseBody String getRouteListCtrl(Model model) throws Exception{
		logger.info("getRouteListCtrl");
		return null;
	}
	@RequestMapping(value="route/edit", method=RequestMethod.POST, name="Route Edit Controller")
	public @ResponseBody String getRouteEditCtrl(Model model) throws Exception{
		logger.info("getRouteEditCtrl");
		return null;
	}
	@RequestMapping(value="route/create", method=RequestMethod.PUT, name="Route Create Controller")
	public @ResponseBody String getRouteCreateCtrl(Model model) throws Exception{
		logger.info("getRouteCreateCtrl");
		return null;
	}
	@RequestMapping(value="route/etc", method=RequestMethod.GET, name="Route ETC Controller")
	public @ResponseBody String getRouteETCCtrl(Model model) throws Exception{
		logger.info("getRouteETCCtrl");
		return null;
	}
}
