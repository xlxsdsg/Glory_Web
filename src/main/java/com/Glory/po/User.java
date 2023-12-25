package com.Glory.po;

import java.sql.Date;

public class User {
    private Integer userid; //用户id
    private String username; //用户名
    private String signature; //个性签名
    private String email; //邮箱
    private String identity; //用户身份权限
    private Integer status; //用户状态码
    private Date frostTime; //冻结时间
    private String password; //密码
    private String gender; //性别

    public User() {
    }

    public User(Integer userid, String username, String signature, String email, String identity, Integer status, Date frostTime, String password, String gender) {
        this.userid = userid;
        this.username = username;
        this.signature = signature;
        this.email = email;
        this.identity = identity;
        this.status = status;
        this.frostTime = frostTime;
        this.password = password;
        this.gender = gender;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getFrostTime() {
        return frostTime;
    }

    public void setFrostTime(Date frostTime) {
        this.frostTime = frostTime;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() { return gender; }

    public void setGender(String gender) { this.gender = gender; }

    @Override
    public String toString() {
        return "User{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", signature='" + signature + '\'' +
                ", email='" + email + '\'' +
                ", identity='" + identity + '\'' +
                ", status=" + status +
                ", frostTime=" + frostTime +
                ", password='" + password + '\'' +
                ", gender='" + gender + '\'' +
                '}';
    }
}
