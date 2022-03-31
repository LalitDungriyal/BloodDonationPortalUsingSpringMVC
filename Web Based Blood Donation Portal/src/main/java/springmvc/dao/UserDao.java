package springmvc.dao;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.User;



@Repository
public class UserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int saveUser(User user)
	{
		int id=(Integer)this.hibernateTemplate.save(user);
		
			return id;
	}
	
	@SuppressWarnings("deprecation")
	public boolean validateUser(String username,String password)
	{
		String hql = "FROM User";
		
		List<User> list=(List<User>) hibernateTemplate.find(hql);
		
		boolean finalAns=false;
		
		for(User user:list)
		{
			if(user.getUsername().equals(username)==true && user.getPassword().equals(password)==true)
			{
				finalAns=true;
			}
		}
		
				
		return finalAns;
	}
	
	@SuppressWarnings("deprecation")
	public User getUser(final String username)
	{
		String queryString = "FROM User WHERE username = ?0";
		
        List<User> ans=(List<User>) hibernateTemplate.find(queryString, username);
		
		return ans.get(0);
	}
	
}
