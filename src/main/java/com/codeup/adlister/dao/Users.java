package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.sql.SQLException;
import java.util.List;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);

    Boolean usernameExists (String username);

    List<User> all();


    List<User> checkUsername() throws SQLException;

    void updateUserInfo (User currentUser, String username, String email);

    void updatePassword (User currentUser, String password);


}
