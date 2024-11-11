--most runs with batsman
SELECT total_runs, batsman
FROM filtered_stats
GROUP BY total_runs
ORDER BY total_runs DESC;

--To Count Sixes
SELECT TOP 10 batsman, COUNT(*) AS total_sixes
FROM deliveries
WHERE batsman_runs = 6
GROUP BY batsman
ORDER BY total_sixes DESC;

-- To Determine Wins After Fielding First
SELECT toss_winner, COUNT(*) AS wins_after_fielding
FROM matches
WHERE toss_decision = 'field' AND winner = toss_winner
GROUP BY toss_winner
ORDER BY wins_after_fielding DESC;

-- To Retrieve Highest Strike Rates
SELECT top 10 batsman, strikerate
FROM filtered_strikerates 
ORDER BY strikerate DESC;


