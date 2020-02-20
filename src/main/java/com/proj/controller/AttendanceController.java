package com.proj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.proj.attendanceModelClass.AttendanceModelClass;
import com.proj.service.AttendanceClass;

@RestController
public class AttendanceController {
	@Autowired 
	private AttendanceClass serobj;
	@RequestMapping("/add")
	public ModelAndView addStudentRecord(AttendanceModelClass atobj) {
		atobj=serobj.addAttendance(atobj);
		ModelAndView modelObj=new ModelAndView();
		modelObj.addObject("regsuccessmsg", "THANKS FOR ATTENDANCE");
		modelObj.setViewName("EditAttendance.jsp");
		return modelObj;
	}
	@RequestMapping("/show")
	public ModelAndView addStudentList() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("student",serobj.showAllStudent());
		mv.setViewName("home.jsp");
		return mv;
		
	}

}
