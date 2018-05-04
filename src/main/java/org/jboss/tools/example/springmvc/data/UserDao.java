package org.jboss.tools.example.springmvc.data;

import org.jboss.tools.example.springmvc.model.Login;
import org.jboss.tools.example.springmvc.model.User;

public interface UserDao {
	  void register(User user);
	  User validateUser(Login login);
}