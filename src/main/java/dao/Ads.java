package dao;

import models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    void edit(Ad ad);
    Ad searchByTitle(String title);
    void delete(long id);
    Ad getAdById(long id);
    List<Ad> getByUserId(long id);
    List<Ad> searchByUserInput(String input);
}