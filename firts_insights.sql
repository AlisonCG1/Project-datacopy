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
SELECT sender_id, receiver_id, status
FROM FriendRequest fr 
WHERE status = 'accepted'
GROUP BY sender_id, receiver_id
ORDER BY sender_id 

--most common time to post
SELECT TIME(created_at) AS time, COUNT(*) AS count
FROM Notification n  
GROUP BY TIME(created_at)
ORDER BY count DESC
LIMIT 1; 

-- Engagement Per Post / most popular user
SELECT user_id, COUNT(TYPE) AS popular
FROM Notification n 
WHERE type == 'comment'
GROUP BY user_id
ORDER BY popular DESC;

-- Most accepted USER
SELECT sender_id, COUNT(sender_id) AS sender_count, status
FROM FriendRequest fr 
WHERE status = 'accepted'
GROUP BY status
ORDER BY sender_count DESC 

-- Most sent friend requests
SELECT sender_id, COUNT(sender_id) AS sender_count, status
FROM FriendRequest fr 
GROUP BY status
ORDER BY sender_count DESC

--most common time to post
SELECT TIME(created_at) AS time, COUNT(*) AS count
FROM Notification n  
GROUP BY TIME(created_at)
ORDER BY count DESC
LIMIT 1; 

-- Friendship Network 
SELECT user_id, COUNT(*) AS user_count
FROM Friend f 
GROUP BY user_id
ORDER BY user_count DESC; 

