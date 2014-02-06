# 1. Require the gem sqlite3.  You must `gem install sqlite3` if you get an error
# stating `cannot load such file -- sqlite3`
# This will add the gem to your local gemset
require 'sqlite3'

# 2. From the command line `createdb YOUR_DATABASE_NAME`

# 3. Set up a connection to the database you have created
postgres = PG.connect( dbname: 'YOUR_DATABASE_NAME' )


# 4. Ruby your SQL commands in ruby

# Drop the table if it exist so we can run create table over and over
postgres.exec( "drop table students" )
# Create a table: Students
postgres.exec( "
create table students
(
lastname  varchar(255),
firstname varchar(255),
cohort    varchar(255),
phase     int
);
  ")

# 5 Insert some data into your database
postgres.exec( "
insert into students values ('Lubaway', 'Topher', 'Fence Lizard', 14);
  ")
postgres.exec( "
insert into students values ('Abushadi', 'Sherif', 'Fence Lizard', 14);
  ")