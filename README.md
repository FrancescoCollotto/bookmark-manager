# bookmark_manager
The website will have the following specification:

```
* Show a list of bookmarks
As an User,
So I can check different bookmarks,
I would to be able to list all the bookmarks.

* Add new bookmarks
As an User,
So I can add new bookmark,
I would like to be able to add bookmarks.

* Delete bookmarks
As an User,
So I can delete a specific bookmark,
I would like to be able to delete bookmarks.

* Update bookmarks
As an User,
So I can update a specific bookmark,
I would like to be able to update bookmarks.

* Comment on bookmarks
As an User,
So I can commet a specific bookmark,
I would like to be able add a comment to a bookmarks.

* Tag bookmarks into categories
As an User,
So I can groups bookmarks by tags names,
I would be able to add tags to a bookmarks.

* Filter bookmarks by tag
As an User,
So I can search bookmarks by tags,
I would like to able to filter bookmarks by tags.

* Users are restricted to manage only their own bookmarks
As the system manager,
So only the bookmarks owners can manage/edit bookmarks,
I would only allow them their own bookmarks.
```
DOMAIN MODEL

<img width="500" alt="Screenshot 2021-12-06 at 14 53 51" src="https://user-images.githubusercontent.com/86299300/144867825-eb6d36aa-9fe0-469f-bc8b-64b10a2bc3d3.png">

## Database set up instruction

1. In your terminal connect to psql
```
➜ psql
```
2. Create the database using the psql command
```
➜ CREATE DATABASE bookmark_manager;
```
3. Connect to the database using the pqsl command
```
➜ \c bookmark_manager;
```
4. Run the query we have saved in the file db/migrations/01_create_bookmarks_table.sql

5. Create a test database using the psql command
```
➜ CREATE DATABASE bookmark_manager_test;
```
6. Connect to the test database using the pqsl command
```
➜ \c bookmark_manager_test;
```
7. Run the query we have saved in the file db/migrations/01_create_bookmarks_table.sql
