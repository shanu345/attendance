package com.proj.service;

import org.springframework.data.repository.CrudRepository;

import com.proj.attendanceModelClass.AttendanceModelClass;

public interface AttendanceRepository extends CrudRepository<AttendanceModelClass, String> {

}
