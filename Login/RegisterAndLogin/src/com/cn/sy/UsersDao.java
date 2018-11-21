package com.cn.sy;

import com.cn.xtu.Users;

public class UsersDao {
    public Boolean userLogin(Users users){
        if ("admin".equals(users.getName())&&"admin".equals(users.getPassword())){
            return true;
        }else {
            return false;
        }
    }
}
