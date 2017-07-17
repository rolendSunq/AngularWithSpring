package org.angularstudy.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/angularjs/")
public class Chapter9Controller {

	@RequestMapping(value = "app9-1")
	public String getApp9Dash1(Model model) {
		return "chapter9/app9-1";
	}

	@RequestMapping(value = "app9-8")
	public String getApp9Dash8(Model model) {
		return "chapter9/app9-8";
	}

	@RequestMapping(value = "app9-10")
	public String getApp9Dash10(Model model) {
		return "chapter9/app9-10";
	}

	@RequestMapping(value = "app9-11")
	public String getApp9Dash11(Model model) {
		return "chapter9/app9-11";
	}

	@RequestMapping(value = "app9-12")
	public String getApp9Dash12(Model model) {
		return "chapter9/app9-12";
	}

	@RequestMapping(value = "app9-13")
	public String getApp9Dash13(Model model) {
		return "chapter9/app9-13";
	}

	@RequestMapping(value = "app9-16")
	public String getApp9Dash16(Model model) {
		return "chapter9/app9-16";
	}

	@RequestMapping(value = "app9-17")
	public String getApp9Dash17(Model model) {
		return "chapter9/app9-17";
	}
}
