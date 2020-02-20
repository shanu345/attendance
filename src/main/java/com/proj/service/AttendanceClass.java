package com.proj.service;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.mapping.Array;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.attendanceModelClass.AttendanceModelClass;

@Service
public class AttendanceClass {
	@Autowired
	private AttendanceRepository attenrepo;
	public AttendanceModelClass addAttendance(AttendanceModelClass attobj) {
		attobj=attenrepo.save(attobj);
		return attobj;
		
	}
	public List<AttendanceModelClass> showAllStudent() {
		List<AttendanceModelClass> stobj=new ArrayList<AttendanceModelClass>();
		for(AttendanceModelClass st_obj:attenrepo.findAll())
		{
			stobj.add(st_obj);
		}
		return stobj;
		
	}
	//public List<AttendanceModelClass> searchAllRecord(String stdYear) {
		//List<AttendanceModelClass> searObj= (LinkedList<AttendanceModelClass>) attenrepo.findById(stdYear).orElse(new LinkedList<AttendanceModelClass>());
		//return searObj;
		
	//}

}
