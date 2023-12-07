package entity;

import java.util.Date;

public class User {
    private int userID;

    private String fullName;

    private String email;

    private String phone;

    private String address;

    private Date createdAt;

    private Date updatedAt;

    private String userName;

    private  String accountemail;

    private  String password;

    private  int role;

    // Constructors
    public User() {
    }

    public User(int userID, String fullName, String email, String phone, String address, Date createdAt, Date updatedAt, String userName, String accountemail, String password, int role) {
        this.userID = userID;
        this.fullName = fullName;
        this.email = email;
        this.phone = phone;
        this.address = address;
        // Set createdAt and updatedAt to the current date for new User
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.userName = userName;
        this.accountemail = accountemail;
        this.password = password;
        this.role = role;
    }

    // Getters and Setters
    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getAccountemail() { return accountemail; }

    public void setAccountemail(String accountemail) {this.accountemail = accountemail;}

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }


    // toString method for debugging
    @Override
    public String toString() {
        return "User{" +
                "userID=" + userID +
                ", fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                ", userName=" + userName +
                ", account_email=" + accountemail +
                ", password=" + password +
                ", role=" + role +
                '}';
    }
}
