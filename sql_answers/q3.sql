-- QUESTION 3;

SELECT * FROM (
	SELECT t.teamid, m.playerid, t.yearid, m.rank,
	ROW_NUMBER() OVER (PARTITION BY t.teamid ORDER BY t.yearid desc, m.rank desc) as rn
FROM teams AS t
INNER JOIN managers AS m ON t.teamid = m.teamid
WHERE t.W >=70  AND t.g > m.g AND t.teamid in ('FLO', 'CHN')) q
WHERE q.rn=1;

-->>teamid playerid yearid rank rn
-->>CHN	durocle01	1998	10	1
-->>FLO	mckeoja99	2011	5	1

