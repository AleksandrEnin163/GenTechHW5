SELECT 
    c.chat_id, 
    u1.fullname as user1, 
    u2.fullname as user2, 
    MAX(m.created_at) as last_message_time 
FROM 
    chats c 
    JOIN users u1 ON c.user1_id = u1.user_id 
    JOIN users u2 ON c.user2_id = u2.user_id 
    JOIN messages m ON c.chat_id = m.chat_id 
GROUP BY 
    c.chat_id 
ORDER BY 
    last_message_time DESC;
