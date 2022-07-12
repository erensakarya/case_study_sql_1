-- QUESTION 2;

SELECT t.teamid, concat_ws(',',collect_list(m.playerid)) as playerid
FROM teams AS t
INNER JOIN managers AS m ON t.teamid = m.teamid
WHERE t.W >= 70 and t.yearid='2010' and m.yearid=2010 and t.g > m.g 
GROUP_BY t.teamid;

-->>>t.teamid	playerid	
-->>>CHN	pinielo01,quademi99	
-->>>FLO	gonzafr99,rodried02	

--answer:
--CHN:	pinielo01,quademi99	
--FLO:	gonzafr99,rodried02
