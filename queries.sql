--21CSB0B36
--21CSB0F35
--OUTPUT OF THESE QUERIES IS ATTACHED IN THE SUBMITTED PDF 
--Retrieve the names of all users who have subscribed to the "Premium" subscription.
SELECT DISTINCT u.First_Name,  u.Last_Name
FROM users u
INNER JOIN Subscription s ON u.user_ID = s.user_ID
WHERE s.type = 'Premium';

--Retrieve the total number of friendships established between users.
SELECT COUNT(*) AS friendship_count
FROM user_friendships;

--Retrieve the names of all actors who have appeared in a movie directed by a director with the last name "Nolan" or "Cameron" or "Roy"
SELECT a.first_name, a.last_name
FROM actors a
INNER JOIN cast c ON a.actor_id = c.actor_id
INNER JOIN Movie m ON c.content_ID = m.content_ID
INNER JOIN director d ON m.Director_id = d.Director_id
WHERE d.last_name = 'Nolan' or d.last_name = 'Cameron' or d.last_name = 'Roy';

--Retrieve the average duration of movies released after the year 2000.
SELECT AVG(duration) AS average_duration
FROM Movie
WHERE EXTRACT(YEAR FROM release_date) > 2000;

--Retrieve the names of all TV series along with the count of episodes in each season.
SELECT t.content_ID, t.episode_count, t.season_count
FROM TV_Series t;

--Retrieve the content ID and name of all content that has won an award.
SELECT c.content_ID, c.name
FROM Content c
INNER JOIN Has_Won hw ON c.content_ID = hw.content_id;

--Retrieve the names of all actors who have appeared in a movie and have a height greater than 180.
SELECT a.first_name, a.last_name
FROM actors a
INNER JOIN cast c ON a.actor_id = c.actor_id
INNER JOIN Movie m ON c.content_ID = m.content_ID
WHERE a.height > 180;

--Retrieve the top 5 movies with the highest box office collection.
SELECT m.content_ID, m.box_office_collection, c.name
FROM Movie m
join entertainment e
on e.content_id=m.content_id
join content c
on c.content_id=e.content_id
ORDER BY m.box_office_collection DESC;

--Retrieve the names of all users who have watched at least one TV series episode directed by a director with the last name "Johnson".
SELECT u.First_Name, u.Last_Name
FROM users u
INNER JOIN TV_Series t ON u.user_ID = t.content_ID
INNER JOIN Episode e ON t.content_ID = e.content_ID
INNER JOIN Director d ON e.Director_id = d.Director_id
WHERE d.last_name = 'Johnson';

--Retrieve the names of all actors who have appeared in a movie and have a height greater than 180.
SELECT a.first_name, a.last_name
FROM actors a
INNER JOIN cast c ON a.actor_id = c.actor_id
INNER JOIN Movie m ON c.content_ID = m.content_ID
WHERE a.height > 180;





