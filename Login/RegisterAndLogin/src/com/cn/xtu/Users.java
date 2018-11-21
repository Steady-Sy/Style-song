package com.cn.xtu;

/**
 * 采用javaBean的方式
 */
public class Users {
    private String name;
    private String password;

    public Users(){

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
