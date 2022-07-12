-- QUESTION 1;

-- 1.1
SELECT *
FROM teams AS t
INNER JOIN managers AS m ON t.teamid = m.teamid
WHERE t.W >= 70 and t.yearid='2010' and m.yearid=2010 and t.g > m.g;

-->>>yearID	lgID	teamID	franchID	divID	Rank	G	Ghome	W	L	DivWin	WCWin	LgWin	WSWin	R	AB	H	2B	3B	HR	BB	SO	SB	CS	HBP	SF	RA	ER	ERA	CG	SHO	SV	IPouts	HA	HRA	BBA	SOA	E	DP	FP	name	park	attendance	BPF	PPF	teamIDBR	teamIDlahman45	teamIDretro
-->>>2010	NL	CHN	CHC	C	5	162	81	75	87	N	N	N	N	685	5512	1414	298	27	149	479	1236	55	31	50	38	767	668	4.18	1	14	40	4310	1409	154	605	1268	126	137	0.979	Chicago Cubs	Wrigley Field	3062973	108	108	CHC	CHN	CHN	quademi99	2010	CHN	NL	2	37	24	13	5	N
-->>>2010	NL	CHN	CHC	C	5	162	81	75	87	N	N	N	N	685	5512	1414	298	27	149	479	1236	55	31	50	38	767	668	4.18	1	14	40	4310	1409	154	605	1268	126	137	0.979	Chicago Cubs	Wrigley Field	3062973	108	108	CHC	CHN	CHN	pinielo01	2010	CHN	NL	1	125	51	74	5	N
-->>>2010	NL	FLO	FLA	E	3	162	81	80	82	N	N	N	N	719	5531	1403	294	37	152	514	1375	92	26	55	43	717	652	4.08	5	17	39	4315	1433	134	549	1168	123	130	0.979	Florida Marlins	Dolphin Stadium	1535226	105	104	FLA	FLO	FLO	rodried02	2010	FLO	NL	2	92	46	46	3	N
-->>>2010	NL	FLO	FLA	E	3	162	81	80	82	N	N	N	N	719	5531	1403	294	37	152	514	1375	92	26	55	43	717	652	4.08	5	17	39	4315	1433	134	549	1168	123	130	0.979	Florida Marlins	Dolphin Stadium	1535226	105	104	FLA	FLO	FLO	gonzafr99	2010	FLO	NL	1	70	34	36	4	N

-- 1.2
SELECT distinct t.teamid 
FROM teams AS t
INNER JOIN managers AS m ON t.teamid = m.teamid
WHERE t.W >= 70 and t.yearid='2010' and m.yearid=2010 and t.g > m.g;

-->>>teamid
-->>>FLO
-->>>CHN

--answer:
--2 teams: FLO,CHN
