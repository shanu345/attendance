package com.proj.attendanceModelClass;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class AttendanceModelClass implements Serializable {
	@Id
	private String date;
	private String stdYear;
	private String subject;
	private String stdsem;
	private String stdname;
	private String attendance;
	public AttendanceModelClass() {
		
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getStdYear() {
		return stdYear;
	}
	public void setStdYear(String stdYear) {
		this.stdYear = stdYear;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	public String getStdsem() {
		return stdsem;
	}
	public void setStdsem(String stdsem) {
		this.stdsem = stdsem;
	}
	public String getStdname() {
		return stdname;
	}
	public void setStdname(String stdname) {
		this.stdname = stdname;
	}
	public String getAttendance() {
		return attendance;
	}
	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}
	

}
