package springmvc.model;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="userinfo")
public class UserInfo {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	int id;
	private String username;
	private String fname;

	private String lname;
	private String bloodgroup;
	private byte[] image;
	public byte[] getImage() {
		return image;
	}
	@Override
	public String toString() {
		return "UserInfo [id=" + id + ", username=" + username + ", fname=" + fname + ", lname=" + lname
				+ ", bloodgroup=" + bloodgroup + ", image=" + Arrays.toString(image)
				+ ", age=" + age + "]";
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	private String age;
	
	
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
}
