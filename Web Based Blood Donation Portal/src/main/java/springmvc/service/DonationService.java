package springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.dao.DonationDao;
import springmvc.dao.UserDao;
import springmvc.model.DonationModel;
import springmvc.model.User;

@Service
public class DonationService {
	@Autowired
	private DonationDao donationDao;
	
	public int add(DonationModel obj)
	{
		return this.donationDao.addEntry(obj);
	}
	
}
