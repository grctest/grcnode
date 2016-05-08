#TEMPLATE:
#UPDATE TeamOverview, _user 
#SET _Mag = (_user.expavg_credit/(SELECT SUM(_user.expavg_credit) AS Total_ExpAvg_Credit FROM _user))*3382.352941176
#WHERE TeamOverview.cpid = _user.cpid;

UPDATE TeamOverview, Asteroids_user 
SET Asteroids_Mag = (Asteroids_user.expavg_credit/(SELECT SUM(Asteroids_user.expavg_credit) AS Total_ExpAvg_Credit FROM Asteroids_user))*3382.352941176
WHERE TeamOverview.cpid = Asteroids_user.cpid;

UPDATE TeamOverview, ATLAS_user 
SET ATLAS_Mag = (ATLAS_user.expavg_credit/(SELECT SUM(ATLAS_user.expavg_credit) AS Total_ExpAvg_Credit FROM ATLAS_user))*3382.352941176
WHERE TeamOverview.cpid = ATLAS_user.cpid;

UPDATE TeamOverview, BitcoinUtopia_user 
SET BU_Mag = (BitcoinUtopia_user.expavg_credit/(SELECT SUM(BitcoinUtopia_user.expavg_credit) AS Total_ExpAvg_Credit FROM BitcoinUtopia_user))*3382.352941176
WHERE TeamOverview.cpid = BitcoinUtopia_user.cpid;

UPDATE TeamOverview, BURP_user 
SET BURP_Mag = (BURP_user.expavg_credit/(SELECT SUM(BURP_user.expavg_credit) AS Total_ExpAvg_Credit FROM BURP_user))*3382.352941176
WHERE TeamOverview.cpid = BURP_user.cpid;

UPDATE TeamOverview, CSG_user 
SET CSG_Mag = (CSG_user.expavg_credit/(SELECT SUM(CSG_user.expavg_credit) AS Total_ExpAvg_Credit FROM CSG_user))*3382.352941176
WHERE TeamOverview.cpid = CSG_user.cpid;

UPDATE TeamOverview, Collatz_user 
SET Collatz_Mag = (Collatz_user.expavg_credit/(SELECT SUM(Collatz_user.expavg_credit) AS Total_ExpAvg_Credit FROM Collatz_user))*3382.352941176
WHERE TeamOverview.cpid = Collatz_user.cpid;

UPDATE TeamOverview, Cosmology_user 
SET Cosmology_Mag = (Cosmology_user.expavg_credit/(SELECT SUM(Cosmology_user.expavg_credit) AS Total_ExpAvg_Credit FROM Cosmology_user))*3382.352941176
WHERE TeamOverview.cpid = Cosmology_user.cpid;

UPDATE TeamOverview, CPDN_user 
SET CPDN_Mag = (CPDN_user.expavg_credit/(SELECT SUM(CPDN_user.expavg_credit) AS Total_ExpAvg_Credit FROM CPDN_user))*3382.352941176
WHERE TeamOverview.cpid = CPDN_user.cpid;

UPDATE TeamOverview, DDM_user
SET DDM_Mag = (DDM_user.expavg_credit/(SELECT SUM(DDM_user.expavg_credit) AS Total_ExpAvg_Credit FROM DDM_user))*3382.352941176
WHERE TeamOverview.cpid = DDM_user.cpid;

UPDATE TeamOverview, Denis_user
SET Denis_Mag = (Denis_user.expavg_credit/(SELECT SUM(Denis_user.expavg_credit) AS Total_ExpAvg_Credit FROM Denis_user))*3382.352941176
WHERE TeamOverview.cpid = Denis_user.cpid;

UPDATE TeamOverview, Einstein_user
SET Einstein_Mag = (Einstein_user.expavg_credit/(SELECT SUM(Einstein_user.expavg_credit) AS Total_ExpAvg_Credit FROM Einstein_user))*3382.352941176
WHERE TeamOverview.cpid = Einstein_user.cpid;

UPDATE TeamOverview, Enigma_user 
SET Enigma_Mag = (Enigma_user.expavg_credit/(SELECT SUM(Enigma_user.expavg_credit) AS Total_ExpAvg_Credit FROM Enigma_user))*3382.352941176
WHERE TeamOverview.cpid = Enigma_user.cpid;

UPDATE TeamOverview, FindAtHome_user 
SET FIND_Mag = (FindAtHome_user.expavg_credit/(SELECT SUM(FindAtHome_user.expavg_credit) AS Total_ExpAvg_Credit FROM FindAtHome_user))*3382.352941176
WHERE TeamOverview.cpid = FindAtHome_user.cpid;

UPDATE TeamOverview, GPUGRID_user 
SET GPUGRID_Mag = (GPUGRID_user.expavg_credit/(SELECT SUM(GPUGRID_user.expavg_credit) AS Total_ExpAvg_Credit FROM GPUGRID_user))*3382.352941176
WHERE TeamOverview.cpid = GPUGRID_user.cpid;

UPDATE TeamOverview, GridcoinFinance_user 
SET GRCF_Mag = (GridcoinFinance_user.expavg_credit/(SELECT SUM(GridcoinFinance_user.expavg_credit) AS Total_ExpAvg_Credit FROM GridcoinFinance_user))*3382.352941176
WHERE TeamOverview.cpid = GridcoinFinance_user.cpid;

UPDATE TeamOverview, LHCatHome_user 
SET LHCatHome_Mag = (LHCatHome_user.expavg_credit/(SELECT SUM(LHCatHome_user.expavg_credit) AS Total_ExpAvg_Credit FROM LHCatHome_user))*3382.352941176
WHERE TeamOverview.cpid = LHCatHome_user.cpid;

UPDATE TeamOverview, Leiden_user 
SET LeidenClassic_Mag = (Leiden_user.expavg_credit/(SELECT SUM(Leiden_user.expavg_credit) AS Total_ExpAvg_Credit FROM Leiden_user))*3382.352941176
WHERE TeamOverview.cpid = Leiden_user.cpid;

UPDATE TeamOverview, MalariaControl_user 
SET MalariaControl_Mag = (MalariaControl_user.expavg_credit/(SELECT SUM(MalariaControl_user.expavg_credit) AS Total_ExpAvg_Credit FROM MalariaControl_user))*3382.352941176
WHERE TeamOverview.cpid = MalariaControl_user.cpid;

UPDATE TeamOverview, Milkyway_user 
SET Milkyway_Mag = (Milkyway_user.expavg_credit/(SELECT SUM(Milkyway_user.expavg_credit) AS Total_ExpAvg_Credit FROM Milkyway_user))*3382.352941176
WHERE TeamOverview.cpid = Milkyway_user.cpid;

UPDATE TeamOverview, MindModeling_user 
SET MindModeling_Mag = (MindModeling_user.expavg_credit/(SELECT SUM(MindModeling_user.expavg_credit) AS Total_ExpAvg_Credit FROM MindModeling_user))*3382.352941176
WHERE TeamOverview.cpid = MindModeling_user.cpid;

UPDATE TeamOverview, MooWrap_user 
SET MooWrap_Mag = (MooWrap_user.expavg_credit/(SELECT SUM(MooWrap_user.expavg_credit) AS Total_ExpAvg_Credit FROM MooWrap_user))*3382.352941176
WHERE TeamOverview.cpid = MooWrap_user.cpid;

UPDATE TeamOverview, NFS_user 
SET NFS_Mag = (NFS_user.expavg_credit/(SELECT SUM(NFS_user.expavg_credit) AS Total_ExpAvg_Credit FROM NFS_user))*3382.352941176
WHERE TeamOverview.cpid = NFS_user.cpid;

UPDATE TeamOverview, NumbersField_user 
SET NumbersField_Mag = (NumbersField_user.expavg_credit/(SELECT SUM(NumbersField_user.expavg_credit) AS Total_ExpAvg_Credit FROM NumbersField_user))*3382.352941176
WHERE TeamOverview.cpid = NumbersField_user.cpid;

UPDATE TeamOverview, POEM_user 
SET POEM_Mag = (POEM_user.expavg_credit/(SELECT SUM(POEM_user.expavg_credit) AS Total_ExpAvg_Credit FROM POEM_user))*3382.352941176
WHERE TeamOverview.cpid = POEM_user.cpid;

UPDATE TeamOverview, PrimeGrid_user 
SET PrimeGrid_Mag = (PrimeGrid_user.expavg_credit/(SELECT SUM(PrimeGrid_user.expavg_credit) AS Total_ExpAvg_Credit FROM PrimeGrid_user))*3382.352941176
WHERE TeamOverview.cpid = PrimeGrid_user.cpid;

UPDATE TeamOverview, Rosetta_user 
SET Rosetta_Mag = (Rosetta_user.expavg_credit/(SELECT SUM(Rosetta_user.expavg_credit) AS Total_ExpAvg_Credit FROM Rosetta_user))*3382.352941176
WHERE TeamOverview.cpid = Rosetta_user.cpid;

UPDATE TeamOverview, SAT_user 
SET SAT_Mag = (SAT_user.expavg_credit/(SELECT SUM(SAT_user.expavg_credit) AS Total_ExpAvg_Credit FROM SAT_user))*3382.352941176
WHERE TeamOverview.cpid = SAT_user.cpid;

UPDATE TeamOverview, SETI_user 
SET SETI_Mag = (SETI_user.expavg_credit/(SELECT SUM(SETI_user.expavg_credit) AS Total_ExpAvg_Credit FROM SETI_user))*3382.352941176
WHERE TeamOverview.cpid = SETI_user.cpid;

UPDATE TeamOverview, Skynet_user 
SET Skynet_Mag = (Skynet_user.expavg_credit/(SELECT SUM(Skynet_user.expavg_credit) AS Total_ExpAvg_Credit FROM Skynet_user))*3382.352941176
WHERE TeamOverview.cpid = Skynet_user.cpid;

UPDATE TeamOverview, Sztaki_user 
SET Sztaki_Mag = (Sztaki_user.expavg_credit/(SELECT SUM(Sztaki_user.expavg_credit) AS Total_ExpAvg_Credit FROM Sztaki_user))*3382.352941176
WHERE TeamOverview.cpid = Sztaki_user.cpid;

UPDATE TeamOverview, WCG_user 
SET WCG_Mag = (WCG_user.expavg_credit/(SELECT SUM(WCG_user.expavg_credit) AS Total_ExpAvg_Credit FROM WCG_user))*3382.352941176
WHERE TeamOverview.cpid = WCG_user.cpid;

UPDATE TeamOverview, Wuprop_user 
SET Wuprop_Mag = (Wuprop_user.expavg_credit/(SELECT SUM(Wuprop_user.expavg_credit) AS Total_ExpAvg_Credit FROM Wuprop_user))*3382.352941176
WHERE TeamOverview.cpid = Wuprop_user.cpid;

UPDATE TeamOverview, YAFU_user 
SET YAFU_Mag = (YAFU_user.expavg_credit/(SELECT SUM(YAFU_user.expavg_credit) AS Total_ExpAvg_Credit FROM YAFU_user))*3382.352941176
WHERE TeamOverview.cpid = YAFU_user.cpid;

UPDATE TeamOverview, YOYO_user 
SET YOYO_Mag = (YOYO_user.expavg_credit/(SELECT SUM(YOYO_user.expavg_credit) AS Total_ExpAvg_Credit FROM YOYO_user))*3382.352941176
WHERE TeamOverview.cpid = YOYO_user.cpid;

UPDATE TeamOverview, vLHC_user 
SET vLHC_Mag = (vLHC_user.expavg_credit/(SELECT SUM(vLHC_user.expavg_credit) AS Total_ExpAvg_Credit FROM vLHC_user))*3382.352941176
WHERE TeamOverview.cpid = vLHC_user.cpid;

#Tallying each user's total magnitude across all whitelisted projects.
UPDATE TeamOverview
SET TotalMag = Asteroids_Mag + ATLAS_Mag + BU_Mag + BURP_Mag + CSG_Mag + Collatz_Mag + Cosmology_Mag + CPDN_Mag + DDM_Mag + Denis_Mag + Einstein_Mag + Enigma_Mag + FIND_Mag + GPUGRID_Mag + GRCF_Mag + LHCatHome_Mag + LeidenClassic_Mag + MalariaControl_Mag + Milkyway_Mag + MindModeling_Mag + MooWrap_Mag + NFS_Mag + NumbersField_Mag + POEM_Mag + PrimeGrid_Mag + Rosetta_Mag + SAT_Mag + SETI_Mag + Skynet_Mag + Sztaki_Mag + WCG_Mag + Wuprop_Mag + YAFU_Mag + YOYO_Mag + vLHC_Mag;