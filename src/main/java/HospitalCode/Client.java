package HospitalCode;

import java.sql.Timestamp;

public class Client {
    private int id;
    private String name;
    private String phoneNumber;
    private int roomNumber;
    private Timestamp clientdate;
    private String diseaseName;

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

    public int getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(int roomNumber) {
        this.roomNumber = roomNumber;
    }

    public Timestamp getClientdate() {
        return clientdate;
    }

    public void setClientdate(Timestamp clientdate) {
        this.clientdate = clientdate;
    }

    public String getDiseaseName() {
        return diseaseName;
    }

    public void setDiseaseName(String diseaseName) {
        this.diseaseName = diseaseName;
    }
}