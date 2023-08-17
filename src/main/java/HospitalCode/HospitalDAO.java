package HospitalCode;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class HospitalDAO {
	Connection conn = null;
	PreparedStatement pstmt;
	
	final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
	final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:xe";
	
	public void open() {
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, "hr", "hr");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void Clientinsert(Client c) {
		open();
		String sql = "INSERT INTO student(id,name, phonenumber, roomnumber, clientdate, diseasename) values(client_seq.nextval,?,?,?,current_timestamp(0),?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, c.getName());
			pstmt.setString(2, c.getPhoneNumber());
			pstmt.setInt(3, c.getRoomNumber());
			//pstmt.setTimestamp(4, c.getClientdate());
			pstmt.setString(5, c.getDiseaseName());
			
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	public void Staffinsert(Staff s) {
		open();
		String sql = "INSERT INTO staff(id,name, phonenumber, job, staffdate) values(Staff_seq.nextval,?,?,?,current_timestamp(0))";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, s.getName());
			pstmt.setString(2, s.getPhoneNumber());
			pstmt.setString(3, s.getJob());
			//pstmt.setTimestamp(4, s.getStaffdate());
			
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}

	public void Scheduleinsert(Schedule s) {
		open();
		String sql = "INSERT INTO schedule(id,clientid, scheduledate, schedule) values(schedule_seq.nextval,?,current_timestamp(0),?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, s.getClientid());
			//pstmt.setTimestamp(2, s.getScheduledate());
			pstmt.setString(3, s.getSchedule());
			
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	public List<Client> ClientgetAll(){
		open();
		List<Client> Clients = new ArrayList<>();
		try {
			pstmt=conn.prepareStatement("SELECT id, name, phonenumber, roomnumber, TO_CHAR(clientdate, 'YYYY-MM-DD HH24:MI:SS') AS Clientdatetime, diseaseName FROM Client");
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Client c = new Client();
				c.setId(rs.getInt("id"));
				c.setName(rs.getString("name"));
				c.setPhoneNumber(rs.getString("phonenumber"));
				c.setRoomNumber(rs.getInt("roomnumber"));
				c.setClientdate(rs.getTimestamp("clientdate"));
				
				Clients.add(c);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return Clients;
	}
	
	public List<Staff> StaffgetAll(){
		open();
		List<Staff> Staffs = new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement("SELECT id, name, phonenumber, job, TO_CHAR(Staffdate, 'YYYY-MM-DD HH24:MI:SS') AS Staffdatetime FROM Staff");
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Staff s = new Staff();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setPhoneNumber(rs.getString("phonenumber"));
				s.setJob(rs.getString("job"));
				s.setStaffdate(rs.getTimestamp("Staffdatetime"));
				
				Staffs.add(s);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return Staffs;
	}
	
	public List<Schedule> SchedulegetAll(){
		open();
		List<Schedule> Schedules = new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement("SELECT id, ClientID, TO_CHAR(Scheduledate, 'YYYY-MM-DD HH24:MI:SS') AS Scheduledate, schedule FROM Schedule");
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Schedule s = new Schedule();
				s.setId(rs.getInt("id"));
				s.setClientid(rs.getInt("ClientID"));
				s.setScheduledate(rs.getTimestamp("Scheduledate"));
				s.setSchedule(rs.getString("schedule"));
				
				Schedules.add(s);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return Schedules;
	}
}
