package com.xworkz.creativity.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.xworkz.creativity.dto.CreativityDto;
import com.xworkz.creativity.repo.CreativityRepo;

@Service
public class CreativityServiceImpl implements CreativityService {

	@Autowired
	private CreativityRepo repo;

	@Override
	public boolean save(CreativityDto dto) {
//		if(dto!=null) {
//			if(dto.getId()!=0) {
//				if(dto.getName()!=null) {
//					if(dto.getLocation().length()>3) {
//						if(dto.getPhoneNumber().length()>3) {
//							if(dto.getDateOfBirth().length()>3) {
//								if(dto.getEmail().length()>3) {
//									if(dto.getFatherName().length()>3) {
//										if(dto.getMotherName().length()>3) {
		                               System.out.println("saved succefully");
		                               return repo.save(dto);

//										}
//										System.out.println("mothername is null");
//										return false;
//									}
//									System.out.println("name is null");
//									return false;
//								}
//								System.out.println("email is null");
//								return false;
//							}
//							System.out.println("dateofbirth is null");
//							return false;
//						}
//						System.out.println("phonenumber is null");
//						return false;
//					}
//					System.out.println("location is null");
//					return false;
//				}
//				System.out.println("name is null");
//				return false;
//			}
//			System.out.println("id is null");
//			return false;
//		}
//		System.out.println("dto is null");
//		return false;

	}

}
