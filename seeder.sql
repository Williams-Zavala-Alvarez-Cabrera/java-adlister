USE adlister_db;

# TRUNCATE users; This is to start fresh with some users you create so that the user id start from 1

# make sure that the user id matches the user you have added manually on your db through the Registration
INSERT INTO ads (adlister_db.ads.user_id, adlister_db.ads.title, adlister_db.ads.description)
VALUES
   (1, 'Street Taco Food Truck', 'Local Street Tacos Food truck spotted near downtown. Had some of the best tacos I have ever tried and the owners are from my hometown in Mexico, check them out' ),
   (3, 'Mediterranean Food Truck', 'I am looking for a Mediterranean food truck in the NYC area if anyone can point me in the right direction, I just moved here and am looking for my next favorite spot'),
   (3, 'Pinkerton BBQ', 'If you are in the SA area please checkout this new food truck located by the Pearl Brewery'),
   (1, 'Looking for a ramen food truck', 'Does anyone know of a good ramen food truck, I have looked but have had no luck, I dont mind driving across town, please help!');


