package com.xworkz.landrecords.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
			return "Index";
		}

	}

	@RequestMapping(value = "/getOtp", method = RequestMethod.GET)
	public String generateOtp(@RequestParam String email, Model model) {
		System.out.println(email);
		boolean result = service.signIn(email, model);
		model.addAttribute("EmailV", email);
		if (result) {

			System.out.println("account verified");
			return "Home";

		}
		System.out.println("email is not found");
		model.addAttribute("emailNotExist", "Email Is Not Valid");
		return "Home";

	}

	@RequestMapping(value = "/checkOtp", method = RequestMethod.POST)
	public String otpValidator(@RequestParam String otp, Model model) {
		LandRecordsDto dto = service.otpValidator(otp, model);
		System.out.println(dto);
		if (dto != null) {
			System.out.println("Otp is verified");
			model.addAttribute("otp", otp);

			return "AddResolver";
		} else {
			return "Home";
		}

	}

	@RequestMapping(value = "/savingrec", method = RequestMethod.POST)
	public String saveRecord(LandRecordsDtoOne dto, Model model) {
		System.out.println(dto);
		boolean save = service.saveRecords(dto, model);

		if (save) {
			model.addAttribute("savee", dto);
			System.out.println("Entering to save");
			return "Success";
		} else {
			System.out.println("Entering to else");
			return "Add";
		}

	}

	@RequestMapping(value = "/readd", method = RequestMethod.GET)
	public String readSongs(LandRecordsDtoOne dto, Model model) {
		List<LandRecordsDtoOne> list = service.readAll();
		model.addAttribute("read", list);
		System.out.println(list);
		return "OneRead";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String Deleteserve(@RequestParam String hissaNumber,@RequestParam String serveNumber, Model model) {
		boolean delete = service.deleteByserveNumber(hissaNumber, serveNumber);
		System.out.println(delete);
		if (delete) {
			model.addAttribute("serv", delete);
			return "Delete";
		} else {
			model.addAttribute("ser", "Record deleted successfully");
			return "Delete";
		}

	}

	@RequestMapping(value = "/find", method = RequestMethod.POST)
	public String Findvillage(@RequestParam String village, Model model) {
		List<LandRecordsDtoOne> finded = service.findByvillage(village);
		if (finded != null) {
			model.addAttribute("vill", finded);
			return "OneRead";
		} else {
			model.addAttribute("Vil", "Village.........INVALID");
			return "OneRead";
		}

	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(LandRecordsDtoOne dto,Model model) {
		boolean update = service.updateDetailsByHissaAndSurveyNumber(dto, model);
		if (update) {
			model.addAttribute("upd", "Update Succefully");
			System.out.println(update);
			return "Update";

		} else {
			model.addAttribute("upda", "Not.......Updated");
			return "Update";
		}

	}

	@GetMapping(value = "/getNumber")
	public String autoReadNumber(@RequestParam String hissaNumber, @RequestParam String serveNumber,
			Model model) {
		LandRecordsDtoOne exit = service.ifExist(hissaNumber, serveNumber, 0, model);
		if (exit != null) {
			return "OneRead";
		} else {
			model.addAttribute("serve", "hissaNumberandserveNumber.........INVALID");
			return "OneRead";
		}

	}

}
