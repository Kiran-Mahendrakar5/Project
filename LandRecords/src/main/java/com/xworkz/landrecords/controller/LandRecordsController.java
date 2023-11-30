package com.xworkz.landrecords.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartException;
import org.springframework.web.multipart.MultipartFile;

import com.xworkz.landrecords.dto.LandRecordsDto;
import com.xworkz.landrecords.dto.LandRecordsDtoOne;
import com.xworkz.landrecords.dto.UserDto;
import com.xworkz.landrecords.service.LandRecordsService;
import com.xworkz.landrecords.service.UserService;

@Controller
public class LandRecordsController {

	@Autowired
	private LandRecordsService service;

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/imageUpload", method = RequestMethod.POST)
	public String save(LandRecordsDto dto, Model model, @RequestParam("file") MultipartFile file)
			throws MultipartException, IllegalStateException, IOException {
		String uploadPath = "C:\\Users\\Dell\\Desktop\\LandRecordImage\\";

		String orgFileName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."),
				file.getOriginalFilename().length());
		String uniqueName = dto.getAdminName() + orgFileName;

		System.out.println(uniqueName);
		String name = uploadPath + uniqueName;

		// Extracting the directory path without the file name
		String directoryPath = name.substring(0, name.lastIndexOf(File.separator));

		File directory = new File(directoryPath);
		if (!directory.exists()) {
			directory.mkdirs(); // This will create all necessary directories
		}

		dto.setAdminImage(uploadPath + uniqueName);

		System.out.println("Received file: " + file.getOriginalFilename());

		boolean saved = service.save(dto, model);
		System.out.println(saved);

		file.transferTo(new File(name));
		return "Admin";
	}

	@RequestMapping(value = "/getOtp", method = RequestMethod.GET)
	public String generateOtp(@RequestParam String email, Model model, HttpSession session) {

		session.setAttribute("email02", email);
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
	public String otpValidator(@RequestParam String otp, Model model, HttpSession session) {
		String emailing = (String) session.getAttribute("email02");
		LandRecordsDto dto1 = service.otpValidator(otp, model);
		System.out.println(dto1);

		if (dto1 != null) {
			LandRecordsDto dto = service.findByEmail(emailing, model);
			session.setAttribute("Admin", dto);
			System.out.println("Otp is verified");

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
	public String Deleteserve(@RequestParam String hissaNumber, @RequestParam String serveNumber, Model model) {
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
	public String update(LandRecordsDtoOne dto, Model model) {
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
	public String autoReadNumber(@RequestParam String hissaNumber, @RequestParam String serveNumber, Model model) {
		LandRecordsDtoOne exit = service.ifExist(hissaNumber, serveNumber, model);
		if (exit != null) {
			return "OneRead";
		} else {
			model.addAttribute("serve", "hissaNumberandserveNumber.........INVALID");
			return "OneRead";
		}

	}

	@RequestMapping(value = "/UserRecords", method = RequestMethod.POST)
	public String registration(UserDto dto, Model model) throws NullPointerException, Exception {
		boolean saved = userService.saveUserDetails(dto, model);
		System.out.println(saved);

		if (saved) {
			model.addAttribute("Registration", "Registered Successfully");
			return "UserSignIn";
		} else {
			model.addAttribute("NotRegistration", "Not Registered, Please give proper details");
			return "UserSignup";
		}

	}

	@RequestMapping(value = "/uLogin", method = RequestMethod.POST)
	public String uLogin(@RequestParam String email, @RequestParam String password, Model model) {
		UserDto logIn = userService.logIn(email, password, model);
		System.out.println(logIn);
		if (logIn != null) {
			model.addAttribute("Login", "Login Successful");
			return "ViewUser";
		}
		model.addAttribute("notLogIn", "Give Proper Credintials...!");
		return "UserSignIn";
	}

	@RequestMapping(value = "/ForgetPassward", method = RequestMethod.POST)
	public String verify(@RequestParam String email, Model model) throws Exception {

		boolean sign = userService.checkotp(email, model);
		if (sign) {
			model.addAttribute("Checking", "Check the Email");
			model.addAttribute("Emails", email);
			return "ForgetPassward";
		}
		System.out.println("forgetpassward1");
		return "ForgetPassward";

	}

	@RequestMapping(value = "/checksotp", method = RequestMethod.POST)
	public String verifyy(@RequestParam String otp, Model model) {

		UserDto rightOtp = userService.findByOtp(otp, model);
		if (rightOtp != null) {
			model.addAttribute("check", rightOtp);
			return "UpdatePassward";
		}
		System.out.println("forgetpassward2");
		return "ForgetPassward";
	}

	@RequestMapping(value = "/updatePasswords", method = RequestMethod.POST)
	public String updatePassword(@RequestParam String password, @RequestParam String confirmPassword,
			@RequestParam String email, Model model) throws Exception {
		System.out.println("Controller method called");
		System.out.println("Email: " + email);
		System.out.println("Password: " + password);
		System.out.println("Confirm Password: " + confirmPassword);
		boolean update = userService.updatePasswords(password, confirmPassword, email, model);
		if (update) {
			model.addAttribute("update", "Password Updated Successfully");
			return "ViewUser";
		}
		System.out.println("not updated");
		return "UpdatePassward";
	}

	@RequestMapping(value = "/viewUser", method = RequestMethod.POST)
	public String viewUser(@RequestParam String village, Model model) {
		List<LandRecordsDtoOne> viewData = service.findByvillage(village);
		System.out.println(viewData);

		if (viewData != null) {
			model.addAttribute("view", viewData);
			System.out.println("Data is Present");
			return "ViewUser";
		}
		model.addAttribute("Read", "Records not found");
		return "ViewUser";
	}

	@RequestMapping(value = "/shdefault", method = RequestMethod.POST)
	public String userView(@RequestParam String hissaNumber, @RequestParam String serveNumber, Model model) {
		LandRecordsDtoOne data = service.ifExist(hissaNumber, serveNumber, model);
		if (data != null) {
			model.addAttribute("forloop", data);
			System.out.println("Data is Present");
			return "ViewUser";
		}
		model.addAttribute("Reading", "No Records found");
		return "ViewUser";
	}

}