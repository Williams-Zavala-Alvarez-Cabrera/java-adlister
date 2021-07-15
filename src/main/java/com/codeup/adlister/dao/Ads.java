package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);


    Ad findUniqueAdId(Long ad);

    void delete(Ad ad);

    void edit(Ad ad, String title, String description);

    List<Ad> searchByTitle(String query);


}
