package models;
import java.sql.Timestamp;




public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private Timestamp date_created;
    private String category;


    public Ad(long id, long userId, String title, String description, Timestamp date_created) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.date_created = date_created;
    }

    public Ad(long userId, String title, String description) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        Timestamp newDate = new java.sql.Timestamp(System.currentTimeMillis());
        this.date_created = newDate;
    }

    public Ad(long userId, String title, String description, Timestamp date_created, String name) {

        this.userId = userId;
        this.title = title;
        this.description = description;
        this.date_created = date_created;
        this.category = name;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public Timestamp getDate(){return date_created;}

    public void setDate(Timestamp date_created) {
        this.date_created = date_created;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Timestamp getDate_created() {
        return date_created;
    }

    public void setDate_created(Timestamp date_created) {
        this.date_created = date_created;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
