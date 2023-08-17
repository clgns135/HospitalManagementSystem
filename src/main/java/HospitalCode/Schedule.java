package HospitalCode;

import java.sql.Timestamp;

public class Schedule {
	private int id;
	private int clientid;
	private Timestamp Scheduledate;
	private String schedule;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getClientid() {
		return clientid;
	}
	public void setClientid(int clientid) {
		this.clientid = clientid;
	}
	public Timestamp getScheduledate() {
		return Scheduledate;
	}
	public void setScheduledate(Timestamp scheduledate) {
		Scheduledate = scheduledate;
	}
	public String getSchedule() {
		return schedule;
	}
	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}
}
