# PromineoTechWeek9CodingAssignment

# Coded By Thomas Le

## Synopsis
In this project I created a database for a basic social media application. I first created an Entity Relationship Diagram (ERD) using draw.io and created 3
tables. I then created the users database and inputted these tables in the database. The outline is as follows.

### users
This specifies each individual user that is on this social media application.
- Primary key is user_id
- The other keys are username, email, password, first_name, and last_name

### posts
This shows each post relating to to the user.
- Primary key is post_id
- Foreign key is user_id
- The other keys are post_body and time_of_post

### comments
This shows each comment relating to the user and post.
- Primary key is comment_id
- Foreign key 1 is user_id
- Foreign key 2 is post_id
- The other keys are comment_body and time_of_comment
