# DIAMOL - Chapter 6 Lab
In this lab we were given a base image of a To Do list that contained pre-entered data. The challenge was to use volumes to create a new container based on this image with an empty to do list.

Things I did not fully understand when starting the lab
- The app creates a new database on startup
- In the Dockerfile an existing database in the ch06 folder is copied into the directory referenced in the connection string which overrides the empty database the app creates