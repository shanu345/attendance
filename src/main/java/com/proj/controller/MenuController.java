package com.proj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MenuController {
	@RequestMapping("/")
	public String opendIndexPage() {
		return "home.jsp";
	}
	@RequestMapping("/edit")
	public String opendEditPage() {
		return "EditAttendance.jsp";
	}

}
