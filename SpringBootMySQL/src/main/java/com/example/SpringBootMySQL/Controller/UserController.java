package com.example.SpringBootMySQL.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.SpringBootMySQL.model.User;
import com.example.SpringBootMySQL.service.UserService;

@RestController
@RequestMapping("/api/user")
public class UserController {

	
	@Autowired
	private UserService userService;
	
	@GetMapping
	public List<User>getAllUsers()
	{
		return userService.getAllUser();
	}
	 @PostMapping
    public User createUser(@RequestBody User user) {
	     return userService.createUser(user);
	    }
}
