package com.xworkz.creativity.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xworkz.creativity.dto.CreativityDto;
import com.xworkz.creativity.service.CreativityService;

@Controller
public class CreativityController {
	@Autowired
	private CreativityService service;
	@RequestMapping(value = "/save",method = RequestMethod.POST)
	public String registerpage(CreativityDto dto ,Model madel) {
	boolean save = 	service.save(dto);
	if(save) {
		madel.addAttribute("save", "Saved sucessfully");
		
	}
		
		return "Index";
		
	}
	

}
