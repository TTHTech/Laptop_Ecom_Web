package entity;

import java.sql.Date;

public class Account {
    private int accountID;
    private String userName;
    private String email;
    private String password;
    private int userID;
    private int role;

    public Account(int anInt, String string, String string1, String string2, Date date) {
    }

    public Account(int Int, String string, String string1, String string2, int anInt1, int anInt2) {
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
}
