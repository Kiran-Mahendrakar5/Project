package com.xworkz.landrecords.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xworkz.landrecords.dto.LandRecordsDto;
import com.xworkz.landrecords.dto.LandRecordsDtoOne;
import com.xworkz.landrecords.service.LandRecordsService;

@Controller
public class LandRecordsController {

	@Autowired
	private LandRecordsService service;

	@RequestMapping(value = "/send", method = RequestMethod.POST)
	public String getMyMethod(LandRecordsDto dto, Model model) {
		System.out.println(dto);
		boolean status = service.save(dto, model);
		if (status) {
			model.addAttribute("save", dto);
			return "Home";
		} else {
			return "Home";
		}

	}

	@RequestMapping(value = "/getOtp", method = RequestMethod.GET)
	public String generateOtp(@RequestParam String email, Model model) {
		System.out.println(email);
		boolean result = service.signIn(email, model);
		if (result) {
			System.out.println("account verified");
			return "Home";

		}
		System.out.println("email is not found");
		model.addAttribute("emailNotExist", "email is not valid");
		return "Home";

	}

	@RequestMapping(value = "/checkOtp", method = RequestMethod.POST)
	public String otpValidator(@RequestParam String otp, Model model) {
		LandRecordsDto dto = service.otpValidator(otp, model);
		if (dto != null) {
			System.out.println("Otp is verified");
			model.addAttribute("dto", dto);
			return "Details";
		}
		return "Home";

	}

	@RequestMapping(value = "/savingrec", method = RequestMethod.POST)
	public String saveRecord(LandRecordsDtoOne dto, Model model) {
		boolean save = service.saveRecords(dto, model);
		if (save) {
			model.addAttribute("savee", dto);
			return "Success";
		} else {
			return "Add";
		}

	}
	@RequestMapping(value = "/readd", method = RequestMethod.GET)
	public String readSongs(LandRecordsDtoOne dto,Model model) {
		List<LandRecordsDtoOne>  list = service.readAll();
		model.addAttribute("read", list);
		System.out.println(list);
		return "Read";
	}

}
