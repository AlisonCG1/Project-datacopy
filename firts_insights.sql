SELECT * FROM Friend f 

SELECT * FROM FriendRequest fr 

SELECT * FROM Post p 

SELECT * FROM Notification n 

SELECT * FROM Profile p 

SELECT * FROM USER

SELECT * FROM Comment c 

-- Most Active users
SELECT user_id, COUNT(*) AS total_posts 
FROM post
GROUP BY user_id 
ORDER BY total_posts DESC;

-- Engagement Per Post / most popular user
SELECT user_id, COUNT(TYPE) AS comments
FROM Notification n 
WHERE type == 'comment'
GROUP BY user_id
ORDER BY comments DESC;

-- Friendship Network 