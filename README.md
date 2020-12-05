# Relaty

Relaty is MVC Project made to track company employees, their positions and projects currently building!

* Spring Java Framework is used and this basic front view is made with JSP, HTML and CSS
* Apache Maven is used as a build automation tool used primarily for this Java project
* Lombok Dependency injection is included in pom.xml file to generate setters and getters for project classes as well as owerrided methods
* JDBC API which defines how a client may access a database is not used
* MySQL Database is replaced with additional class in the project that acts like the database, it has all methods which allows us to made updates, 
 create new items, delete it or just read it.
* Spring MVC Dependency injection is included to allow us to create MVC project, initialised in WebConfig.class



#### Pushing existing locally stored folder in the GitHub folder using Git Bash
```
echo "# Relaty" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/IvanSamardzic/Relaty.git
git push -u origin main
```
or push an existing repository from the command line
```
git remote add origin https://github.com/IvanSamardzic/Relaty.git
git branch -M main
git push -u origin main
```
