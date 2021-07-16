package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);

    Boolean usernameExists (String username);

    List<User> all();


    void checkUsername();

    void updateUserInfo (User currentUser, String username, String email);

    void updatePassword (User currentUser, String password);


}
