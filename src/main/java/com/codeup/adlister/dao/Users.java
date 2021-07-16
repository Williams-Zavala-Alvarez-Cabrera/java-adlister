package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);

    Boolean usernameExists (String username);

    List<User> all();
<<<<<<< HEAD

    void checkUsername();

=======
    void updateUserInfo (User currentUser, String username, String email);
>>>>>>> 13b9111425dc5b69ee5074e62b88bb4b529e736e
}
