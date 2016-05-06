#TEMPLATE:
#INSERT into TeamOverview (TeamOverview._Mag)
#SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM _user))*3382.352941176
#FROM _user;

#WARNING: DUE TO NOT HANDLING PRIMARY KEYS/FOREIGN KEYS, ONLY ASTEROIDS WILL LOAD!
#This will be fixed in the next day or two. Learning SQL as I go.

INSERT into TeamOverview (TeamOverview.Asteroids_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM Asteroids_user))*3382.352941176
FROM Asteroids_user;

INSERT into TeamOverview (TeamOverview.ATLAS_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM ATLAS_user))*3382.352941176
FROM ATLAS_user;

INSERT into TeamOverview (TeamOverview.BU_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM BitcoinUtopia_user))*3382.352941176
FROM BitcoinUtopia_user;

INSERT into TeamOverview (TeamOverview.BURP_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM BURP_user))*3382.352941176
FROM BURP_user;

INSERT into TeamOverview (TeamOverview.CSG_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM CSG_user))*3382.352941176
FROM CSG_user;

INSERT into TeamOverview (TeamOverview.Collatz_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM Collatz_user))*3382.352941176
FROM Collatz_user;

INSERT into TeamOverview (TeamOverview.Cosmology_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM Cosmology_user))*3382.352941176
FROM Cosmology_user;

INSERT into TeamOverview (TeamOverview.DDM_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM DDM_user))*3382.352941176
FROM DDM_user;

INSERT into TeamOverview (TeamOverview.Einstein_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM Einstein_user))*3382.352941176
FROM Einstein_user;

INSERT into TeamOverview (TeamOverview.Enigma_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM Enigma_user))*3382.352941176
FROM Enigma_user;

INSERT into TeamOverview (TeamOverview.FIND_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM FindAtHome_user))*3382.352941176
FROM FindAtHome_user;

INSERT into TeamOverview (TeamOverview.GPUGRID_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM GPUGRID_user))*3382.352941176
FROM GPUGRID_user;

INSERT into TeamOverview (TeamOverview.GRCF_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM GridcoinFinance_user))*3382.352941176
FROM GridcoinFinance_user;

INSERT into TeamOverview (TeamOverview.LHCatHome_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM LHCatHome_user))*3382.352941176
FROM LHCatHome_user;

INSERT into TeamOverview (TeamOverview.LeidenClassic_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM Leiden_user))*3382.352941176
FROM Leiden_user;

INSERT into TeamOverview (TeamOverview.MalariaControl_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM MalariaControl_user))*3382.352941176
FROM MalariaControl_user;

INSERT into TeamOverview (TeamOverview.Milkyway_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM Milkyway_user))*3382.352941176
FROM Milkyway_user;

INSERT into TeamOverview (TeamOverview.MindModeling_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM MindModeling_user))*3382.352941176
FROM MindModeling_user;

INSERT into TeamOverview (TeamOverview.MooWrap_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM MooWrap_user))*3382.352941176
FROM MooWrap_user;

INSERT into TeamOverview (TeamOverview.NFS_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM NFS_user))*3382.352941176
FROM NFS_user;

INSERT into TeamOverview (TeamOverview.NumbersField_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM NumbersField_user))*3382.352941176
FROM NumbersField_user;

INSERT into TeamOverview (TeamOverview.POEM_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM POEM_user))*3382.352941176
FROM POEM_user;

INSERT into TeamOverview (TeamOverview.PrimeGrid_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM PrimeGrid_user))*3382.352941176
FROM PrimeGrid_user;

INSERT into TeamOverview (TeamOverview.Rosetta_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM Rosetta_user))*3382.352941176
FROM Rosetta_user;

INSERT into TeamOverview (TeamOverview.SAT_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM SAT_user))*3382.352941176
FROM SAT_user;

INSERT into TeamOverview (TeamOverview.SETI_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM SETI_user))*3382.352941176
FROM SETI_user;

INSERT into TeamOverview (TeamOverview.Skynet_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM Skynet_user))*3382.352941176
FROM Skynet_user;

INSERT into TeamOverview (TeamOverview.Sztaki_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM Sztaki_user))*3382.352941176
FROM Sztaki_user;

INSERT into TeamOverview (TeamOverview.WCG_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM WCG_user))*3382.352941176
FROM WCG_user;

INSERT into TeamOverview (TeamOverview.YAFU_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM YAFU_user))*3382.352941176
FROM YAFU_user;

INSERT into TeamOverview (TeamOverview.YOYO_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM YOYO_user))*3382.352941176
FROM YOYO_user;

INSERT into TeamOverview (TeamOverview.vLHC_Mag)
SELECT (expavg_credit/(SELECT SUM(expavg_credit) AS Total_ExpAvg_Credit FROM vLHC_user))*3382.352941176
FROM vLHC_user;