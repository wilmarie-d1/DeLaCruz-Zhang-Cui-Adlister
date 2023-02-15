# DeLaCruz-Zhang-Cui-Adlister
<h1>Genesis</h1>
Genesis is a web application that allows individuals to post different places where they have visited, want to visit or are looking for suggestions to visit. The applications connect audiences looking for travel places throughout the internet. User's that create accounts have full CRUD capability and interactively with our database.

Technologies
Front End
Genesis is built and styled with Java, MySQL, HTML, and Bootstrap.

Back End
The foundations of the back end utilizes Java library such as Servlets and JSP's. The application data is handled using a RDBMS(MYSQL)

Instructions
Clone repositorty from GitHub by occurying SSH(view repo click green button) Use following commands in terminal
git clone
Start SQL server in a seperate terminal
mysql.server start
Run migration.sql file to set up database
Create Configuration Java file in root directory with RDBMS password, username, and database name.
class Config {
public String getUrl() {
return "jdbc:mysql://localhost:3306/[database_name_here]?allowPublicKeyRetrieval=true&useSSL=false";
}
public String getUser() {
return "[username_here]";
}
public String getPassword() {
return "[password_here]";
}
}
Edit run configurations of IDE using Tomcat.
Build war exploded artifact.
Update dependencies in pom.xml file to bring file to current.
Run Project.