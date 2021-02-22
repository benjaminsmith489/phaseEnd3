package com.example.todolist.controllers;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.todolist.configurations.UserDetailsImpl;
import com.example.todolist.entities.Task;
import com.example.todolist.services.TaskService;

@Controller
public class TaskController {
	@Autowired
	TaskService service;
	
	public ModelMap showTasks(ModelMap model) {
		UserDetailsImpl user = (UserDetailsImpl) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("user", user.getUsername());
		model.put("tasks",  service.getAllTasksByUsername(user.getUsername()));
		return model;
	}
	
	@RequestMapping(value="/")
	public String displayTasks(ModelMap model) {
		model = showTasks(model);
		return "display-task";
	}
	@RequestMapping(value="/setTask")
	public String setTask(ModelMap model, @RequestParam("name") String name, @RequestParam("startdate") String startDate, @RequestParam("enddate") String endDate,
						  @RequestParam("description") String description, @RequestParam("email") String email, 
						  @RequestParam("severity") String severity) throws ParseException {
		service.setTask(name,startDate,endDate,description,email,severity);
		model = showTasks(model);
		return "display-task";
	}
	@RequestMapping(value="/direct-to-edit-task")
	public String directToEditTask(ModelMap model, @RequestParam("id") Integer id) {
		Task task = service.getTaskById(id);
		model = showTasks(model);
		model.addAttribute("task", task);
		return "edit-task";
	}
	@RequestMapping(value="/delete-task")
	public String deleteTask(ModelMap model, @RequestParam("id") Integer id) {
		service.deleteById(id);
		model = showTasks(model);
		return "confirm-delete-task";
	}
	@RequestMapping(value="/edit-task")
	public String editTask(ModelMap model) {
		model = showTasks(model);
		return "edit-task";
	}
	@RequestMapping(value="/update-task")
	public String updateTask(ModelMap model, @RequestParam("id") Integer id, @RequestParam("name") String name,
			  @RequestParam("startdate") String startDate, @RequestParam("enddate") String endDate,
			  @RequestParam("description") String description, @RequestParam("email") String email, 
			  @RequestParam("severity") String severity) throws ParseException  {
		
		Task task = service.getTaskById(id);
		service.updateTask(task,name,startDate,endDate,description,email,severity);
		model = showTasks(model);
		return "display-task";
	}
}
