USE adlister_db;



# CREATE TABLE users (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        username VARCHAR(240) NOT NULL,
#                        email VARCHAR(240) NOT NULL,
#                        password VARCHAR(255) NOT NULL,
#                        PRIMARY KEY (id)
# );

# CREATE TABLE ads (
#                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                      user_id INT UNSIGNED NOT NULL,
#                      title VARCHAR(240) NOT NULL,
#                      description TEXT NOT NULL,
#                      PRIMARY KEY (id),
#                      FOREIGN KEY (user_id) REFERENCES users(id)
#                          ON DELETE CASCADE
# );
# CREATE TABLE users (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        username VARCHAR(240) NOT NULL,
#                        email VARCHAR(240) NOT NULL,
#                        password VARCHAR(255) NOT NULL,
#                        PRIMARY KEY (id)
# );

# INSERT INTO categories (id, name)
# VALUES (1,'sport'),
#        (2,'gun'),
#        (3,'food');

# INSERT INTO ads (id, user_id, title, description)
# VALUES (1,1,'football','========run======='),
#        (2,1,'ak47', 'diu-diu-diu'),
#        (3,2, 'beef', '------beef-------'),
#        (4,2,'pork', '-------pork--------'),
#        (5,3,'run', '============run========'),
#        (6,3,'m5','diu-diu-diu');

# INSERT INTO ad_categories (ad_id, categories_id)
# VALUES (1,1),(2,2),(3,3),(4,3),(5,1),(6,2);