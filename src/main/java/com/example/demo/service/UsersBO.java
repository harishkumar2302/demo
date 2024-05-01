package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.DAO.UsersDAO;
import com.example.demo.model.Users;

@Service
public class UsersBO {
	@Autowired
	UsersDAO usersDAO;
	public boolean addUser(Users user) {
		return usersDAO.insertUser(user);
	}

	public String loginValidator(int id, String password) {
		return usersDAO.userValidator(id, password);
	}
}
