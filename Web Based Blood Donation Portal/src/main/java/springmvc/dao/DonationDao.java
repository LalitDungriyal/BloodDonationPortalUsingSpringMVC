package springmvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.DonationModel;
import springmvc.model.User;


@Repository
public class DonationDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	@Transactional
	public int addEntry(DonationModel donationObj)
	{
		int id=(Integer)this.hibernateTemplate.save(donationObj);
		
			return id;
	}
}
