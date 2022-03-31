package springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.dao.UserDao;
import springmvc.dao.UserInfoDao;
import springmvc.model.User;
import springmvc.model.UserInfo;

@Service
public class UserInfoService {

	@Autowired
	private UserInfoDao userInfoDao;
	
	public int createUser(UserInfo user)
	{
		return this.userInfoDao.saveUserInfo(user);
	}
}
