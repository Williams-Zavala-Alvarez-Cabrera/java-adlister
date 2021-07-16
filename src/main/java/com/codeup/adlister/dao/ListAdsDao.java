package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.ArrayList;
import java.util.List;





<<<<<<< HEAD
    // may need to implements Ads at a later time - Lex


=======
// may need to implements Ads at a later time - Lex



public class ListAdsDao {


    // may need to implements Ads at a later time - Lex


>>>>>>> 0d7ed97327849a6dd68ed68889168d40c3f38c7a
        private List<Ad> ads;

        public List<Ad> all() {
            if (ads == null) {
                ads = generateAds();
            }
            return ads;
<<<<<<< HEAD
        }

        public Long insert(Ad ad) {
            // make sure we have ads
            if (ads == null) {
                ads = generateAds();
            }
            // we'll assign an "id" here based on the size of the ads list
            // really the dao would handle this
            ad.setId((long) ads.size());
            ads.add(ad);
            return ad.getId();
        }

        private List<Ad> generateAds() {
            List<Ad> ads = new ArrayList<>();
            ads.add(new Ad(
                    1,
                    1,
                    "playstation for sale",
                    "This is a slightly used playstation"
            ));
            ads.add(new Ad(
                    2,
                    1,
                    "Super Nintendo",
                    "Get your game on with this old-school classic!"
            ));
            ads.add(new Ad(
                    3,
                    2,
                    "Junior Java Developer Position",
                    "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
            ));
            ads.add(new Ad(
                    4,
                    2,
                    "JavaScript Developer needed",
                    "Must have strong Java skills"
            ));
            return ads;
        }
=======
        }

        public Long insert(Ad ad) {
            // make sure we have ads
            if (ads == null) {
                ads = generateAds();
            }
            // we'll assign an "id" here based on the size of the ads list
            // really the dao would handle this
            ad.setId((long) ads.size());
            ads.add(ad);
            return ad.getId();
        }

    private List<Ad> generateAds() {
        List<Ad> ads = new ArrayList<>();
        ads.add(new Ad(
                1,
                1,
                "playstation for sale",
                "This is a slightly used playstation"
        ));
        ads.add(new Ad(
                2,
                1,
                "Super Nintendo",
                "Get your game on with this old-school classic!"
        ));
        ads.add(new Ad(
                3,
                2,
                "Junior Java Developer Position",
                "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
        ));
        ads.add(new Ad(
                4,
                2,
                "JavaScript Developer needed",
                "Must have strong Java skills"
        ));
        return ads;
    }

>>>>>>> 0d7ed97327849a6dd68ed68889168d40c3f38c7a
}

}

        private List<Ad> generateAds() {
            List<Ad> ads = new ArrayList<>();
            ads.add(new Ad(
                    1,
                    1,
                    "playstation for sale",
                    "This is a slightly used playstation"
            ));
            ads.add(new Ad(
                    2,
                    1,
                    "Super Nintendo",
                    "Get your game on with this old-school classic!"
            ));
            ads.add(new Ad(
                    3,
                    2,
                    "Junior Java Developer Position",
                    "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
            ));
            ads.add(new Ad(
                    4,
                    2,
                    "JavaScript Developer needed",
                    "Must have strong Java skills"
            ));
            return ads;
        }
    }



