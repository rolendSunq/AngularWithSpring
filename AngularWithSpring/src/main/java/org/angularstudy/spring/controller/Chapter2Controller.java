package org.angularstudy.spring.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class Chapter2Controller {
	private static final Logger logger = LoggerFactory.getLogger(Chapter2Controller.class);

	@RequestMapping(value = "/angular/todo")
	public String todo(Model model) throws Exception {
		return "chapter2/todo";
	}

	@RequestMapping(value = "/angular/todo2")
	public String todo2(Model model) throws Exception {
		return "chapter2/todo2";
	}

	@RequestMapping(value = "/angular/todo3")
	public String todo3(Model model) throws Exception {
		return "chapter2/todo3";
	}

	@RequestMapping(value = "/angular/todo4")
	public String todo4(Model model) throws Exception {
		return "chapter2/todo4";
	}

	@RequestMapping(value = "/angular/todo5")
	public String todo5(Model model) throws Exception {
		return "chapter2/todo5";
	}

	@RequestMapping(value = "/angular/todo.json")
	public @ResponseBody String todoJson(Model model) throws Exception {
		logger.info("get todo.json..........");
		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		Map<String, String> map = new HashMap<String, String>();
		map.put("action", "Buy Flowers");
		map.put("done", "false");
		list.add(map);
		//map.clear();
		map = new HashMap<String, String>();
		map.put("action", "Get Shoes");
		map.put("done", "false");
		list.add(map);
		//map.clear();
		map = new HashMap<String, String>();
		map.put("acton", "Collect Tickets");
		map.put("done", "true");
		list.add(map);
		//map.clear();
		map = new HashMap<String, String>();
		map.put("action", "Call Kim");
		map.put("done", "false");
		list.add(map);
		ObjectMapper mapper = new ObjectMapper();
		String data = mapper.writeValueAsString(list);
		logger.info(data);
		return data;
	}

}
