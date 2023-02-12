package dao;
import models.Ad;

import com.mysql.cj.jdbc.Driver;
import com.mysql.cj.PerConnectionLRUFactory;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description) VALUES (?, ?, ?)";
            String adCategories = "INSERT INTO ad_categories(ad_id, categories_id) VALUES (?,?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            PreparedStatement catStmt = connection.prepareStatement(adCategories);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            Long lastInsertedId = rs.getLong(1);
            List<Long> categoryIds = ad.getCategoryIds();
            for (Long categoryId : categoryIds) {
                catStmt.setLong(1,lastInsertedId);
                catStmt.setLong(2, categoryId);
                catStmt.executeUpdate();
            }
            return lastInsertedId;
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public void edit(Ad ad) {
        String query = "UPDATE ads SET title=?, description=? WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1,ad.getTitle());
            stmt.setString(2, ad.getDescription());
            stmt.setLong(3,ad.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error editing Ad");
        }

    }



    @Override
    public Ad searchByTitle(String title) {
        String query = "SELECT * FROM ads where title = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1,title);
            ResultSet rs = stmt.executeQuery();
            return extractAd(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error searching for ad by title");
        }
    }

    @Override
    public void delete(long id) {
        String query = "DELETE FROM ads Where id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1,id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error Deleting Ad");
        }
    }

    @Override
    public Ad getAdById(long id) {
        try {
            String query = "SELECT * FROM ads WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            if (! rs.next()){
                return null;
            }
            return extractAd(rs);

        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    @Override
    public List<Ad> getByUserId(long id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE user_id = ?");
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public List<Ad> searchByUserInput(String input) {
        String query = "SELECT * FROM ads WHERE title LIKE ?";
        String searchTermWithWildcards = "%" + input + "%";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, searchTermWithWildcards);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error searching for ad by title");
        }
    }

}