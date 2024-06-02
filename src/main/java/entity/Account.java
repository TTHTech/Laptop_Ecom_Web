package entity;

public class Account {
    private int accountID;
    private String userName;
    private String email;
    private String password;
    private int userID;
    private int role;

    // Hàm tạo đầy đủ các tham số
    public Account(int accountID, String userName, String email, String password, int userID, int role) {
        this.accountID = accountID;
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.userID = userID;
        this.role = role;
    }

    // Hàm tạo không có email (dùng trong trường hợp không cần email)
    public Account(int accountID, String userName, String password, int role, int userID) {
        this.accountID = accountID;
        this.userName = userName;
        this.password = password;
        this.userID = userID;
        this.role = role;
    }

    // Getters and Setters
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
