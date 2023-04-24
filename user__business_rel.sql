SELECT u.user_id, u.name AS user_name, 
       SUM(u.useful) AS total_useful, 
       SUM(u.funny) AS total_funny, 
       SUM(u.cool) AS total_cool, 
       b.business_id, b.name AS business_name, 
       AVG(r.stars) AS avg_business_stars, 
       SUM(r.useful) AS total_business_useful, 
       SUM(r.funny) AS total_business_funny, 
       SUM(r.cool) AS total_business_cool
FROM user u
JOIN review r ON u.user_id = r.user_id
JOIN business b ON r.business_id = b.business_id
GROUP BY b.business_id, b.name
ORDER BY total_useful DESC, total_funny DESC, total_cool DESC
limit 1000;