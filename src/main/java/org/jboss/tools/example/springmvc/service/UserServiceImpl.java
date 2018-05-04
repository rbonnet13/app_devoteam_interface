package org.jboss.tools.example.springmvc.service;

import org.jboss.tools.example.springmvc.data.UserDao;
import org.jboss.tools.example.springmvc.model.Login;
import org.jboss.tools.example.springmvc.model.User;
import org.springframework.beans.factory.annotation.Autowired;

public class UserServiceImpl {
	  @Autowired
	  public UserDao userDao;

	  public void register(User user) {
	    userDao.register(user);
	  }

	  public User validateUser(Login login) {
	    return userDao.validateUser(login);
	  }

}
