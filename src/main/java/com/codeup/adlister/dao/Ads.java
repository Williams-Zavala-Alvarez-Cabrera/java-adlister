package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // get a list of user's ads
    List<Ad> allUserAds(User user);
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);


    Ad findUniqueAdId(Long ad);

    void delete(Ad id);

    void edit(Ad ad, String title, String description);

    List<Ad> searchByTitle(String query);

}
