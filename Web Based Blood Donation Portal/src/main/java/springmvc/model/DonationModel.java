package springmvc.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="registeredUsers")
public class DonationModel {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	int id;
	private String firstname;
	private String lastname;
	public void setDate(Date date) {
		this.date = date;
	}
	public Date getDate() {
		return date;
	}
	private String age;
	private Date date;
	private String bloodgroup;
	private String username;
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "DonationModel [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", age=" + age
				+ ", date=" + date + ", bloodgroup=" + bloodgroup + ", username=" + username + "]";
	}
	
	
	
}
