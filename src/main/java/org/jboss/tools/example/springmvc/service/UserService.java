package org.jboss.tools.example.springmvc.service;

import org.jboss.tools.example.springmvc.model.Login;
import org.jboss.tools.example.springmvc.model.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserService {

	public User validateUser(Login login) {
		// TODO Auto-generated method stub
		return null;
	}

	public void register(User user) {
		// TODO Auto-generated method stub
		
	}

}
