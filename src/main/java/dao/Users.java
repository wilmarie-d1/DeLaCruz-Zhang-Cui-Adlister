package dao;

import models.User;
import java.util.List;




public interface Users {
    User findByUsername(String username);
    Long insert(User user);
    void update(User user);
    void delete(User user);
    User getUserById(long id);
    List<User> all();
}