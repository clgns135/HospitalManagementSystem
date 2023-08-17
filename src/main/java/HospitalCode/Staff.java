package HospitalCode;

import java.sql.Timestamp;

public class Staff {
	 private int id;
	 private String name;
	 private String phoneNumber;
	 private String job;
	 private Timestamp Staffdate;
	 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public Timestamp getStaffdate() {
		return Staffdate;
	}
	public void setStaffdate(Timestamp staffdate) {
		Staffdate = staffdate;
	}
}
