#TEMPLATE:
#UPDATE TeamOverview, _user 
#SET _Mag = (_user.expavg_credit/(SELECT SUM(_user.expavg_credit) AS Total_ExpAvg_Credit FROM _user))*3382.352941176
#WHERE TeamOverview.cpid = _user.cpid;

#Asteroids
UPDATE TeamOverview, Asteroids_user 
SET Asteroids_Mag_All = (Asteroids_user.expavg_credit/(SELECT SUM(Asteroids_user.expavg_credit) AS Total_ExpAvg_Credit FROM Asteroids_user))*3382.352941176
WHERE TeamOverview.cpid = Asteroids_user.cpid;

UPDATE TeamOverview, Asteroids_user 
SET Asteroids_Mag_NN = (Asteroids_user.expavg_credit/(SELECT SUM(Asteroids_user.expavg_credit) AS Total_ExpAvg_Credit FROM Asteroids_user WHERE Asteroids_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = Asteroids_user.cpid;

UPDATE TeamOverview, Asteroids_user 
SET TeamOverview.name = Asteroids_user.name
WHERE TeamOverview.cpid = Asteroids_user.cpid;

UPDATE TeamOverview, Asteroids_user 
SET TeamOverview.country = Asteroids_user.country
WHERE TeamOverview.cpid = Asteroids_user.cpid;

#ATLAS
UPDATE TeamOverview, ATLAS_user 
SET ATLAS_Mag_All = (ATLAS_user.expavg_credit/(SELECT SUM(ATLAS_user.expavg_credit) AS Total_ExpAvg_Credit FROM ATLAS_user))*3382.352941176
WHERE TeamOverview.cpid = ATLAS_user.cpid;

UPDATE TeamOverview, ATLAS_user 
SET ATLAS_Mag_NN = (ATLAS_user.expavg_credit/(SELECT SUM(ATLAS_user.expavg_credit) AS Total_ExpAvg_Credit FROM ATLAS_user WHERE ATLAS_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = ATLAS_user.cpid;

UPDATE TeamOverview, ATLAS_user 
SET TeamOverview.name = ATLAS_user.name
WHERE TeamOverview.cpid = ATLAS_user.cpid;

UPDATE TeamOverview, ATLAS_user 
SET TeamOverview.country = ATLAS_user.country
WHERE TeamOverview.cpid = ATLAS_user.cpid;

#Bitcoin utopia
UPDATE TeamOverview, BitcoinUtopia_user 
SET BU_Mag_All = (BitcoinUtopia_user.expavg_credit/(SELECT SUM(BitcoinUtopia_user.expavg_credit) AS Total_ExpAvg_Credit FROM BitcoinUtopia_user))*3382.352941176
WHERE TeamOverview.cpid = BitcoinUtopia_user.cpid;

UPDATE TeamOverview, BitcoinUtopia_user 
SET BU_Mag_NN = (BitcoinUtopia_user.expavg_credit/(SELECT SUM(BitcoinUtopia_user.expavg_credit) AS Total_ExpAvg_Credit FROM BitcoinUtopia_user WHERE BitcoinUtopia_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = BitcoinUtopia_user.cpid;

UPDATE TeamOverview, BitcoinUtopia_user 
SET TeamOverview.name = BitcoinUtopia_user.name
WHERE TeamOverview.cpid = BitcoinUtopia_user.cpid;

UPDATE TeamOverview, BitcoinUtopia_user 
SET TeamOverview.country = BitcoinUtopia_user.country
WHERE TeamOverview.cpid = BitcoinUtopia_user.cpid;

#BURP
UPDATE TeamOverview, BURP_user 
SET BURP_Mag_All = (BURP_user.expavg_credit/(SELECT SUM(BURP_user.expavg_credit) AS Total_ExpAvg_Credit FROM BURP_user))*3382.352941176
WHERE TeamOverview.cpid = BURP_user.cpid;

UPDATE TeamOverview, BURP_user 
SET BURP_Mag_NN = (BURP_user.expavg_credit/(SELECT SUM(BURP_user.expavg_credit) AS Total_ExpAvg_Credit FROM BURP_user WHERE BURP_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = BURP_user.cpid;

UPDATE TeamOverview, BURP_user 
SET TeamOverview.name = BURP_user.name
WHERE TeamOverview.cpid = BURP_user.cpid;

UPDATE TeamOverview, BURP_user 
SET TeamOverview.country = BURP_user.country
WHERE TeamOverview.cpid = BURP_user.cpid;

#CSG
UPDATE TeamOverview, CSG_user 
SET CSG_Mag_All = (CSG_user.expavg_credit/(SELECT SUM(CSG_user.expavg_credit) AS Total_ExpAvg_Credit FROM CSG_user))*3382.352941176
WHERE TeamOverview.cpid = CSG_user.cpid;

UPDATE TeamOverview, CSG_user 
SET CSG_Mag_NN = (CSG_user.expavg_credit/(SELECT SUM(CSG_user.expavg_credit) AS Total_ExpAvg_Credit FROM CSG_user WHERE CSG_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = CSG_user.cpid;

UPDATE TeamOverview, CSG_user 
SET TeamOverview.name = CSG_user.name
WHERE TeamOverview.cpid = CSG_user.cpid;

UPDATE TeamOverview, CSG_user 
SET TeamOverview.country = CSG_user.country
WHERE TeamOverview.cpid = CSG_user.cpid;

#Collatz
UPDATE TeamOverview, Collatz_user 
SET Collatz_Mag_All = (Collatz_user.expavg_credit/(SELECT SUM(Collatz_user.expavg_credit) AS Total_ExpAvg_Credit FROM Collatz_user))*3382.352941176
WHERE TeamOverview.cpid = Collatz_user.cpid;

UPDATE TeamOverview, Collatz_user 
SET Collatz_Mag_NN = (Collatz_user.expavg_credit/(SELECT SUM(Collatz_user.expavg_credit) AS Total_ExpAvg_Credit FROM Collatz_user WHERE Collatz_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = Collatz_user.cpid;

UPDATE TeamOverview, Collatz_user 
SET TeamOverview.name = Collatz_user.name
WHERE TeamOverview.cpid = Collatz_user.cpid;

UPDATE TeamOverview, Collatz_user 
SET TeamOverview.country = Collatz_user.country
WHERE TeamOverview.cpid = Collatz_user.cpid;

#Cosmology
UPDATE TeamOverview, Cosmology_user 
SET Cosmology_Mag_All = (Cosmology_user.expavg_credit/(SELECT SUM(Cosmology_user.expavg_credit) AS Total_ExpAvg_Credit FROM Cosmology_user))*3382.352941176
WHERE TeamOverview.cpid = Cosmology_user.cpid;

UPDATE TeamOverview, Cosmology_user 
SET Cosmology_Mag_NN = (Cosmology_user.expavg_credit/(SELECT SUM(Cosmology_user.expavg_credit) AS Total_ExpAvg_Credit FROM Cosmology_user WHERE Cosmology_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = Cosmology_user.cpid;

UPDATE TeamOverview, Cosmology_user 
SET TeamOverview.name = Cosmology_user.name
WHERE TeamOverview.cpid = Cosmology_user.cpid;

UPDATE TeamOverview, Cosmology_user 
SET TeamOverview.country = Cosmology_user.country
WHERE TeamOverview.cpid = Cosmology_user.cpid;

#CPDN (Climate Prediction)
UPDATE TeamOverview, CPDN_user 
SET CPDN_Mag_All = (CPDN_user.expavg_credit/(SELECT SUM(CPDN_user.expavg_credit) AS Total_ExpAvg_Credit FROM CPDN_user))*3382.352941176
WHERE TeamOverview.cpid = CPDN_user.cpid;

UPDATE TeamOverview, CPDN_user 
SET CPDN_Mag_NN = (CPDN_user.expavg_credit/(SELECT SUM(CPDN_user.expavg_credit) AS Total_ExpAvg_Credit FROM CPDN_user WHERE CPDN_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = CPDN_user.cpid;

UPDATE TeamOverview, CPDN_user 
SET TeamOverview.name = CPDN_user.name
WHERE TeamOverview.cpid = CPDN_user.cpid;

UPDATE TeamOverview, CPDN_user 
SET TeamOverview.country = CPDN_user.country
WHERE TeamOverview.cpid = CPDN_user.cpid;

#DDM (DistributedDataMining)
UPDATE TeamOverview, DDM_user
SET DDM_Mag_All = (DDM_user.expavg_credit/(SELECT SUM(DDM_user.expavg_credit) AS Total_ExpAvg_Credit FROM DDM_user))*3382.352941176
WHERE TeamOverview.cpid = DDM_user.cpid;

UPDATE TeamOverview, DDM_user
SET DDM_Mag_NN = (DDM_user.expavg_credit/(SELECT SUM(DDM_user.expavg_credit) AS Total_ExpAvg_Credit FROM DDM_user WHERE DDM_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = DDM_user.cpid;

UPDATE TeamOverview, DDM_user 
SET TeamOverview.name = DDM_user.name
WHERE TeamOverview.cpid = DDM_user.cpid;

UPDATE TeamOverview, DDM_user 
SET TeamOverview.country = DDM_user.country
WHERE TeamOverview.cpid = DDM_user.cpid;

#Denis
UPDATE TeamOverview, Denis_user
SET Denis_Mag_All = (Denis_user.expavg_credit/(SELECT SUM(Denis_user.expavg_credit) AS Total_ExpAvg_Credit FROM Denis_user))*3382.352941176
WHERE TeamOverview.cpid = Denis_user.cpid;

UPDATE TeamOverview, Denis_user
SET Denis_Mag_NN = (Denis_user.expavg_credit/(SELECT SUM(Denis_user.expavg_credit) AS Total_ExpAvg_Credit FROM Denis_user WHERE Denis_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = Denis_user.cpid;

UPDATE TeamOverview, Denis_user 
SET TeamOverview.name = Denis_user.name
WHERE TeamOverview.cpid = Denis_user.cpid;

UPDATE TeamOverview, Denis_user 
SET TeamOverview.country = Denis_user.country
WHERE TeamOverview.cpid = Denis_user.cpid;

#Einstein
UPDATE TeamOverview, Einstein_user
SET Einstein_Mag_All = (Einstein_user.expavg_credit/(SELECT SUM(Einstein_user.expavg_credit) AS Total_ExpAvg_Credit FROM Einstein_user))*3382.352941176
WHERE TeamOverview.cpid = Einstein_user.cpid;

UPDATE TeamOverview, Einstein_user
SET Einstein_Mag_NN = (Einstein_user.expavg_credit/(SELECT SUM(Einstein_user.expavg_credit) AS Total_ExpAvg_Credit FROM Einstein_user WHERE Einstein_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = Einstein_user.cpid;

UPDATE TeamOverview, Einstein_user 
SET TeamOverview.name = Einstein_user.name
WHERE TeamOverview.cpid = Einstein_user.cpid;

UPDATE TeamOverview, Einstein_user 
SET TeamOverview.country = Einstein_user.country
WHERE TeamOverview.cpid = Einstein_user.cpid;

#Enigma
UPDATE TeamOverview, Enigma_user 
SET Enigma_Mag_All = (Enigma_user.expavg_credit/(SELECT SUM(Enigma_user.expavg_credit) AS Total_ExpAvg_Credit FROM Enigma_user))*3382.352941176
WHERE TeamOverview.cpid = Enigma_user.cpid;

UPDATE TeamOverview, Enigma_user 
SET Enigma_Mag_NN = (Enigma_user.expavg_credit/(SELECT SUM(Enigma_user.expavg_credit) AS Total_ExpAvg_Credit FROM Enigma_user WHERE Enigma_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = Enigma_user.cpid;

UPDATE TeamOverview, Enigma_user 
SET TeamOverview.name = Enigma_user.name
WHERE TeamOverview.cpid = Enigma_user.cpid;

UPDATE TeamOverview, Enigma_user 
SET TeamOverview.country = Enigma_user.country
WHERE TeamOverview.cpid = Enigma_user.cpid;

#Find@Home
UPDATE TeamOverview, FindAtHome_user 
SET FIND_Mag_All = (FindAtHome_user.expavg_credit/(SELECT SUM(FindAtHome_user.expavg_credit) AS Total_ExpAvg_Credit FROM FindAtHome_user))*3382.352941176
WHERE TeamOverview.cpid = FindAtHome_user.cpid;

UPDATE TeamOverview, FindAtHome_user 
SET FIND_Mag_NN = (FindAtHome_user.expavg_credit/(SELECT SUM(FindAtHome_user.expavg_credit) AS Total_ExpAvg_Credit FROM FindAtHome_user WHERE FindAtHome_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = FindAtHome_user.cpid;

UPDATE TeamOverview, FindAtHome_user 
SET TeamOverview.name = FindAtHome_user.name
WHERE TeamOverview.cpid = FindAtHome_user.cpid;

UPDATE TeamOverview, FindAtHome_user 
SET TeamOverview.country = FindAtHome_user.country
WHERE TeamOverview.cpid = FindAtHome_user.cpid;

#GPUGRID
UPDATE TeamOverview, GPUGRID_user 
SET GPUGRID_Mag_All = (GPUGRID_user.expavg_credit/(SELECT SUM(GPUGRID_user.expavg_credit) AS Total_ExpAvg_Credit FROM GPUGRID_user))*3382.352941176
WHERE TeamOverview.cpid = GPUGRID_user.cpid;

UPDATE TeamOverview, GPUGRID_user 
SET GPUGRID_Mag_NN = (GPUGRID_user.expavg_credit/(SELECT SUM(GPUGRID_user.expavg_credit) AS Total_ExpAvg_Credit FROM GPUGRID_user WHERE GPUGRID_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = GPUGRID_user.cpid;

UPDATE TeamOverview, GPUGRID_user 
SET TeamOverview.name = GPUGRID_user.name
WHERE TeamOverview.cpid = GPUGRID_user.cpid;

UPDATE TeamOverview, GPUGRID_user 
SET TeamOverview.country = GPUGRID_user.country
WHERE TeamOverview.cpid = GPUGRID_user.cpid;

#Gridcoin Finance
UPDATE TeamOverview, GridcoinFinance_user 
SET GRCF_Mag_All = (GridcoinFinance_user.expavg_credit/(SELECT SUM(GridcoinFinance_user.expavg_credit) AS Total_ExpAvg_Credit FROM GridcoinFinance_user))*3382.352941176
WHERE TeamOverview.cpid = GridcoinFinance_user.cpid;

UPDATE TeamOverview, GridcoinFinance_user 
SET GRCF_Mag_NN = (GridcoinFinance_user.expavg_credit/(SELECT SUM(GridcoinFinance_user.expavg_credit) AS Total_ExpAvg_Credit FROM GridcoinFinance_user WHERE GridcoinFinance_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = GridcoinFinance_user.cpid;

UPDATE TeamOverview, GridcoinFinance_user 
SET TeamOverview.name = GridcoinFinance_user.name
WHERE TeamOverview.cpid = GridcoinFinance_user.cpid;

UPDATE TeamOverview, GridcoinFinance_user 
SET TeamOverview.country = GridcoinFinance_user.country
WHERE TeamOverview.cpid = GridcoinFinance_user.cpid;

#LHC@Home
UPDATE TeamOverview, LHCatHome_user 
SET LHCatHome_Mag_All = (LHCatHome_user.expavg_credit/(SELECT SUM(LHCatHome_user.expavg_credit) AS Total_ExpAvg_Credit FROM LHCatHome_user))*3382.352941176
WHERE TeamOverview.cpid = LHCatHome_user.cpid;

UPDATE TeamOverview, LHCatHome_user 
SET LHCatHome_Mag_NN = (LHCatHome_user.expavg_credit/(SELECT SUM(LHCatHome_user.expavg_credit) AS Total_ExpAvg_Credit FROM LHCatHome_user WHERE LHCatHome_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = LHCatHome_user.cpid;

UPDATE TeamOverview, LHCatHome_user 
SET TeamOverview.name = LHCatHome_user.name
WHERE TeamOverview.cpid = LHCatHome_user.cpid;

UPDATE TeamOverview, LHCatHome_user 
SET TeamOverview.country = LHCatHome_user.country
WHERE TeamOverview.cpid = LHCatHome_user.cpid;

#Leiden Classic
UPDATE TeamOverview, Leiden_user 
SET LeidenClassic_Mag_All = (Leiden_user.expavg_credit/(SELECT SUM(Leiden_user.expavg_credit) AS Total_ExpAvg_Credit FROM Leiden_user))*3382.352941176
WHERE TeamOverview.cpid = Leiden_user.cpid;

UPDATE TeamOverview, Leiden_user 
SET LeidenClassic_Mag_NN = (Leiden_user.expavg_credit/(SELECT SUM(Leiden_user.expavg_credit) AS Total_ExpAvg_Credit FROM Leiden_user WHERE Leiden_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = Leiden_user.cpid;

UPDATE TeamOverview, Leiden_user 
SET TeamOverview.name = Leiden_user.name
WHERE TeamOverview.cpid = Leiden_user.cpid;

UPDATE TeamOverview, Leiden_user 
SET TeamOverview.country = Leiden_user.country
WHERE TeamOverview.cpid = Leiden_user.cpid;

#Malaria Control
UPDATE TeamOverview, MalariaControl_user 
SET MalariaControl_Mag_All = (MalariaControl_user.expavg_credit/(SELECT SUM(MalariaControl_user.expavg_credit) AS Total_ExpAvg_Credit FROM MalariaControl_user))*3382.352941176
WHERE TeamOverview.cpid = MalariaControl_user.cpid;

UPDATE TeamOverview, MalariaControl_user 
SET MalariaControl_Mag_NN = (MalariaControl_user.expavg_credit/(SELECT SUM(MalariaControl_user.expavg_credit) AS Total_ExpAvg_Credit FROM MalariaControl_user WHERE MalariaControl_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = MalariaControl_user.cpid;

UPDATE TeamOverview, MalariaControl_user 
SET TeamOverview.name = MalariaControl_user.name
WHERE TeamOverview.cpid = MalariaControl_user.cpid;

UPDATE TeamOverview, MalariaControl_user 
SET TeamOverview.country = MalariaControl_user.country
WHERE TeamOverview.cpid = MalariaControl_user.cpid;

#MilkyWay@Home
UPDATE TeamOverview, Milkyway_user 
SET Milkyway_Mag_All = (Milkyway_user.expavg_credit/(SELECT SUM(Milkyway_user.expavg_credit) AS Total_ExpAvg_Credit FROM Milkyway_user))*3382.352941176
WHERE TeamOverview.cpid = Milkyway_user.cpid;

UPDATE TeamOverview, Milkyway_user 
SET Milkyway_Mag_NN = (Milkyway_user.expavg_credit/(SELECT SUM(Milkyway_user.expavg_credit) AS Total_ExpAvg_Credit FROM Milkyway_user WHERE Milkyway_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = Milkyway_user.cpid;

UPDATE TeamOverview, Milkyway_user 
SET TeamOverview.name = Milkyway_user.name
WHERE TeamOverview.cpid = Milkyway_user.cpid;

UPDATE TeamOverview, Milkyway_user 
SET TeamOverview.country = Milkyway_user.country
WHERE TeamOverview.cpid = Milkyway_user.cpid;

#MindModeling
UPDATE TeamOverview, MindModeling_user 
SET MindModeling_Mag_All = (MindModeling_user.expavg_credit/(SELECT SUM(MindModeling_user.expavg_credit) AS Total_ExpAvg_Credit FROM MindModeling_user))*3382.352941176
WHERE TeamOverview.cpid = MindModeling_user.cpid;

UPDATE TeamOverview, MindModeling_user 
SET MindModeling_Mag_NN = (MindModeling_user.expavg_credit/(SELECT SUM(MindModeling_user.expavg_credit) AS Total_ExpAvg_Credit FROM MindModeling_user WHERE MindModeling_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = MindModeling_user.cpid;

UPDATE TeamOverview, MindModeling_user 
SET TeamOverview.name = MindModeling_user.name
WHERE TeamOverview.cpid = MindModeling_user.cpid;

UPDATE TeamOverview, MindModeling_user 
SET TeamOverview.country = MindModeling_user.country
WHERE TeamOverview.cpid = MindModeling_user.cpid;

#MooWrap
UPDATE TeamOverview, MooWrap_user 
SET MooWrap_Mag_All = (MooWrap_user.expavg_credit/(SELECT SUM(MooWrap_user.expavg_credit) AS Total_ExpAvg_Credit FROM MooWrap_user))*3382.352941176
WHERE TeamOverview.cpid = MooWrap_user.cpid;

UPDATE TeamOverview, MooWrap_user 
SET MooWrap_Mag_NN = (MooWrap_user.expavg_credit/(SELECT SUM(MooWrap_user.expavg_credit) AS Total_ExpAvg_Credit FROM MooWrap_user WHERE MooWrap_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = MooWrap_user.cpid;

UPDATE TeamOverview, MooWrap_user 
SET TeamOverview.name = MooWrap_user.name
WHERE TeamOverview.cpid = MooWrap_user.cpid;

UPDATE TeamOverview, MooWrap_user 
SET TeamOverview.country = MooWrap_user.country
WHERE TeamOverview.cpid = MooWrap_user.cpid;

#NFS
UPDATE TeamOverview, NFS_user 
SET NFS_Mag_All = (NFS_user.expavg_credit/(SELECT SUM(NFS_user.expavg_credit) AS Total_ExpAvg_Credit FROM NFS_user))*3382.352941176
WHERE TeamOverview.cpid = NFS_user.cpid;

UPDATE TeamOverview, NFS_user 
SET NFS_Mag_NN = (NFS_user.expavg_credit/(SELECT SUM(NFS_user.expavg_credit) AS Total_ExpAvg_Credit FROM NFS_user WHERE NFS_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = NFS_user.cpid;

UPDATE TeamOverview, NFS_user 
SET TeamOverview.name = NFS_user.name
WHERE TeamOverview.cpid = NFS_user.cpid;

UPDATE TeamOverview, NFS_user 
SET TeamOverview.country = NFS_user.country
WHERE TeamOverview.cpid = NFS_user.cpid;

#NumbersField
UPDATE TeamOverview, NumbersField_user 
SET NumbersField_Mag_All = (NumbersField_user.expavg_credit/(SELECT SUM(NumbersField_user.expavg_credit) AS Total_ExpAvg_Credit FROM NumbersField_user))*3382.352941176
WHERE TeamOverview.cpid = NumbersField_user.cpid;

UPDATE TeamOverview, NumbersField_user 
SET NumbersField_Mag_NN = (NumbersField_user.expavg_credit/(SELECT SUM(NumbersField_user.expavg_credit) AS Total_ExpAvg_Credit FROM NumbersField_user WHERE NumbersField_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = NumbersField_user.cpid;

UPDATE TeamOverview, NumbersField_user 
SET TeamOverview.name = NumbersField_user.name
WHERE TeamOverview.cpid = NumbersField_user.cpid;

UPDATE TeamOverview, NumbersField_user 
SET TeamOverview.country = NumbersField_user.country
WHERE TeamOverview.cpid = NumbersField_user.cpid;

#POEM
UPDATE TeamOverview, POEM_user 
SET POEM_Mag_All = (POEM_user.expavg_credit/(SELECT SUM(POEM_user.expavg_credit) AS Total_ExpAvg_Credit FROM POEM_user))*3382.352941176
WHERE TeamOverview.cpid = POEM_user.cpid;

UPDATE TeamOverview, POEM_user 
SET POEM_Mag_NN = (POEM_user.expavg_credit/(SELECT SUM(POEM_user.expavg_credit) AS Total_ExpAvg_Credit FROM POEM_user WHERE POEM_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = POEM_user.cpid;

UPDATE TeamOverview, POEM_user 
SET TeamOverview.name = POEM_user.name
WHERE TeamOverview.cpid = POEM_user.cpid;

UPDATE TeamOverview, POEM_user 
SET TeamOverview.country = POEM_user.country
WHERE TeamOverview.cpid = POEM_user.cpid;

#PrimeGrid
UPDATE TeamOverview, PrimeGrid_user 
SET PrimeGrid_Mag_All = (PrimeGrid_user.expavg_credit/(SELECT SUM(PrimeGrid_user.expavg_credit) AS Total_ExpAvg_Credit FROM PrimeGrid_user))*3382.352941176
WHERE TeamOverview.cpid = PrimeGrid_user.cpid;

UPDATE TeamOverview, PrimeGrid_user 
SET PrimeGrid_Mag_NN = (PrimeGrid_user.expavg_credit/(SELECT SUM(PrimeGrid_user.expavg_credit) AS Total_ExpAvg_Credit FROM PrimeGrid_user WHERE PrimeGrid_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = PrimeGrid_user.cpid;

UPDATE TeamOverview, PrimeGrid_user 
SET TeamOverview.name = PrimeGrid_user.name
WHERE TeamOverview.cpid = PrimeGrid_user.cpid;

UPDATE TeamOverview, PrimeGrid_user 
SET TeamOverview.country = PrimeGrid_user.country
WHERE TeamOverview.cpid = PrimeGrid_user.cpid;

#Rosetta
UPDATE TeamOverview, Rosetta_user 
SET Rosetta_Mag_All = (Rosetta_user.expavg_credit/(SELECT SUM(Rosetta_user.expavg_credit) AS Total_ExpAvg_Credit FROM Rosetta_user))*3382.352941176
WHERE TeamOverview.cpid = Rosetta_user.cpid;

UPDATE TeamOverview, Rosetta_user 
SET Rosetta_Mag_NN = (Rosetta_user.expavg_credit/(SELECT SUM(Rosetta_user.expavg_credit) AS Total_ExpAvg_Credit FROM Rosetta_user WHERE Rosetta_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = Rosetta_user.cpid;

UPDATE TeamOverview, Rosetta_user 
SET TeamOverview.name = Rosetta_user.name
WHERE TeamOverview.cpid = Rosetta_user.cpid;

UPDATE TeamOverview, Rosetta_user 
SET TeamOverview.country = Rosetta_user.country
WHERE TeamOverview.cpid = Rosetta_user.cpid;

#SAT
UPDATE TeamOverview, SAT_user 
SET SAT_Mag_All = (SAT_user.expavg_credit/(SELECT SUM(SAT_user.expavg_credit) AS Total_ExpAvg_Credit FROM SAT_user))*3382.352941176
WHERE TeamOverview.cpid = SAT_user.cpid;

UPDATE TeamOverview, SAT_user 
SET SAT_Mag_NN = (SAT_user.expavg_credit/(SELECT SUM(SAT_user.expavg_credit) AS Total_ExpAvg_Credit FROM SAT_user WHERE SAT_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = SAT_user.cpid;

UPDATE TeamOverview, SAT_user 
SET TeamOverview.name = SAT_user.name
WHERE TeamOverview.cpid = SAT_user.cpid;

UPDATE TeamOverview, SAT_user 
SET TeamOverview.country = SAT_user.country
WHERE TeamOverview.cpid = SAT_user.cpid;

#SETI
UPDATE TeamOverview, SETI_user 
SET SETI_Mag_All = (SETI_user.expavg_credit/(SELECT SUM(SETI_user.expavg_credit) AS Total_ExpAvg_Credit FROM SETI_user))*3382.352941176
WHERE TeamOverview.cpid = SETI_user.cpid;

UPDATE TeamOverview, SETI_user 
SET SETI_Mag_NN = (SETI_user.expavg_credit/(SELECT SUM(SETI_user.expavg_credit) AS Total_ExpAvg_Credit FROM SETI_user WHERE SETI_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = SETI_user.cpid;

UPDATE TeamOverview, SETI_user 
SET TeamOverview.name = SETI_user.name
WHERE TeamOverview.cpid = SETI_user.cpid;

UPDATE TeamOverview, SETI_user 
SET TeamOverview.country = SETI_user.country
WHERE TeamOverview.cpid = SETI_user.cpid;

#Skynet Pogs
UPDATE TeamOverview, Skynet_user 
SET Skynet_Mag_All = (Skynet_user.expavg_credit/(SELECT SUM(Skynet_user.expavg_credit) AS Total_ExpAvg_Credit FROM Skynet_user))*3382.352941176
WHERE TeamOverview.cpid = Skynet_user.cpid;

UPDATE TeamOverview, Skynet_user 
SET Skynet_Mag_NN = (Skynet_user.expavg_credit/(SELECT SUM(Skynet_user.expavg_credit) AS Total_ExpAvg_Credit FROM Skynet_user WHERE Skynet_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = Skynet_user.cpid;

UPDATE TeamOverview, Skynet_user 
SET TeamOverview.name = Skynet_user.name
WHERE TeamOverview.cpid = Skynet_user.cpid;

UPDATE TeamOverview, Skynet_user 
SET TeamOverview.country = Skynet_user.country
WHERE TeamOverview.cpid = Skynet_user.cpid;

#Stzaki
UPDATE TeamOverview, Sztaki_user 
SET Sztaki_Mag_All = (Sztaki_user.expavg_credit/(SELECT SUM(Sztaki_user.expavg_credit) AS Total_ExpAvg_Credit FROM Sztaki_user))*3382.352941176
WHERE TeamOverview.cpid = Sztaki_user.cpid;

UPDATE TeamOverview, Sztaki_user 
SET Sztaki_Mag_NN = (Sztaki_user.expavg_credit/(SELECT SUM(Sztaki_user.expavg_credit) AS Total_ExpAvg_Credit FROM Sztaki_user WHERE Sztaki_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = Sztaki_user.cpid;

UPDATE TeamOverview, Sztaki_user 
SET TeamOverview.name = Sztaki_user.name
WHERE TeamOverview.cpid = Sztaki_user.cpid;

UPDATE TeamOverview, Sztaki_user 
SET TeamOverview.country = Sztaki_user.country
WHERE TeamOverview.cpid = Sztaki_user.cpid;

#WCG
UPDATE TeamOverview, WCG_user 
SET WCG_Mag_All = (WCG_user.expavg_credit/(SELECT SUM(WCG_user.expavg_credit) AS Total_ExpAvg_Credit FROM WCG_user))*3382.352941176
WHERE TeamOverview.cpid = WCG_user.cpid;

UPDATE TeamOverview, WCG_user 
SET WCG_Mag_NN = (WCG_user.expavg_credit/(SELECT SUM(WCG_user.expavg_credit) AS Total_ExpAvg_Credit FROM WCG_user WHERE WCG_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = WCG_user.cpid;

UPDATE TeamOverview, WCG_user 
SET TeamOverview.name = WCG_user.name
WHERE TeamOverview.cpid = WCG_user.cpid;

UPDATE TeamOverview, WCG_user 
SET TeamOverview.country = WCG_user.country
WHERE TeamOverview.cpid = WCG_user.cpid;

#WuProp
UPDATE TeamOverview, Wuprop_user 
SET Wuprop_Mag_All = (Wuprop_user.expavg_credit/(SELECT SUM(Wuprop_user.expavg_credit) AS Total_ExpAvg_Credit FROM Wuprop_user))*3382.352941176
WHERE TeamOverview.cpid = Wuprop_user.cpid;

UPDATE TeamOverview, Wuprop_user 
SET Wuprop_Mag_NN = (Wuprop_user.expavg_credit/(SELECT SUM(Wuprop_user.expavg_credit) AS Total_ExpAvg_Credit FROM Wuprop_user WHERE Wuprop_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = Wuprop_user.cpid;

UPDATE TeamOverview, Wuprop_user 
SET TeamOverview.name = Wuprop_user.name
WHERE TeamOverview.cpid = Wuprop_user.cpid;

UPDATE TeamOverview, Wuprop_user 
SET TeamOverview.country = Wuprop_user.country
WHERE TeamOverview.cpid = Wuprop_user.cpid;

#YAFU
UPDATE TeamOverview, YAFU_user 
SET YAFU_Mag_All = (YAFU_user.expavg_credit/(SELECT SUM(YAFU_user.expavg_credit) AS Total_ExpAvg_Credit FROM YAFU_user))*3382.352941176
WHERE TeamOverview.cpid = YAFU_user.cpid;

UPDATE TeamOverview, YAFU_user 
SET YAFU_Mag_NN = (YAFU_user.expavg_credit/(SELECT SUM(YAFU_user.expavg_credit) AS Total_ExpAvg_Credit FROM YAFU_user WHERE YAFU_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = YAFU_user.cpid;

UPDATE TeamOverview, YAFU_user 
SET TeamOverview.name = YAFU_user.name
WHERE TeamOverview.cpid = YAFU_user.cpid;

UPDATE TeamOverview, YAFU_user 
SET TeamOverview.country = YAFU_user.country
WHERE TeamOverview.cpid = YAFU_user.cpid;

#YOYO
UPDATE TeamOverview, YOYO_user 
SET YOYO_Mag_All = (YOYO_user.expavg_credit/(SELECT SUM(YOYO_user.expavg_credit) AS Total_ExpAvg_Credit FROM YOYO_user))*3382.352941176
WHERE TeamOverview.cpid = YOYO_user.cpid;

UPDATE TeamOverview, YOYO_user 
SET YOYO_Mag_NN = (YOYO_user.expavg_credit/(SELECT SUM(YOYO_user.expavg_credit) AS Total_ExpAvg_Credit FROM YOYO_user WHERE YOYO_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = YOYO_user.cpid;

UPDATE TeamOverview, YOYO_user 
SET TeamOverview.name = YOYO_user.name
WHERE TeamOverview.cpid = YOYO_user.cpid;

UPDATE TeamOverview, YOYO_user 
SET TeamOverview.country = YOYO_user.country
WHERE TeamOverview.cpid = YOYO_user.cpid;

#vLHC
UPDATE TeamOverview, vLHC_user 
SET vLHC_Mag_All = (vLHC_user.expavg_credit/(SELECT SUM(vLHC_user.expavg_credit) AS Total_ExpAvg_Credit FROM vLHC_user))*3382.352941176
WHERE TeamOverview.cpid = vLHC_user.cpid;

UPDATE TeamOverview, vLHC_user 
SET vLHC_Mag_NN = (vLHC_user.expavg_credit/(SELECT SUM(vLHC_user.expavg_credit) AS Total_ExpAvg_Credit FROM vLHC_user WHERE vLHC_user.Address IS NOT NULL))*3382.352941176
WHERE TeamOverview.cpid = vLHC_user.cpid;

UPDATE TeamOverview, vLHC_user 
SET TeamOverview.name = vLHC_user.name
WHERE TeamOverview.cpid = vLHC_user.cpid;

UPDATE TeamOverview, vLHC_user 
SET TeamOverview.country = vLHC_user.country
WHERE TeamOverview.cpid = vLHC_user.cpid;

#Import staking addresses from NNReport table
UPDATE TeamOverview, NNTable
SET TeamOverview.Address = NNTable.Address
WHERE TeamOverview.cpid = NNTable.cpid;

#Tallying ALL user's total magnitude across all whitelisted projects.
UPDATE TeamOverview
SET TotalMag_All = Asteroids_Mag_All + ATLAS_Mag_All + BU_Mag_All + BURP_Mag_All + CSG_Mag_All + Collatz_Mag_All + Cosmology_Mag_All + CPDN_Mag_All + DDM_Mag_All + Denis_Mag_All + Einstein_Mag_All + Enigma_Mag_All + FIND_Mag_All + GPUGRID_Mag_All + GRCF_Mag_All + LHCatHome_Mag_All + LeidenClassic_Mag_All + MalariaControl_Mag_All + Milkyway_Mag_All + MindModeling_Mag_All + MooWrap_Mag_All + NFS_Mag_All + NumbersField_Mag_All + POEM_Mag_All + PrimeGrid_Mag_All + Rosetta_Mag_All + SAT_Mag_All + SETI_Mag_All + Skynet_Mag_All + Sztaki_Mag_All + WCG_Mag_All + Wuprop_Mag_All + YAFU_Mag_All + YOYO_Mag_All + vLHC_Mag_All;

#Tallying total magnitude across all whitelisted projects for users present in Neural Network.
UPDATE TeamOverview
SET TotalMag_NN = Asteroids_Mag_NN + ATLAS_Mag_NN + BU_Mag_NN + BURP_Mag_NN + CSG_Mag_NN + Collatz_Mag_NN + Cosmology_Mag_NN + CPDN_Mag_NN + DDM_Mag_NN + Denis_Mag_NN + Einstein_Mag_NN + Enigma_Mag_NN + FIND_Mag_NN + GPUGRID_Mag_NN + GRCF_Mag_NN + LHCatHome_Mag_NN + LeidenClassic_Mag_NN + MalariaControl_Mag_NN + Milkyway_Mag_NN + MindModeling_Mag_NN + MooWrap_Mag_NN + NFS_Mag_NN + NumbersField_Mag_NN + POEM_Mag_NN + PrimeGrid_Mag_NN + Rosetta_Mag_NN + SAT_Mag_NN + SETI_Mag_NN + Skynet_Mag_NN + Sztaki_Mag_NN + WCG_Mag_NN + Wuprop_Mag_NN + YAFU_Mag_NN + YOYO_Mag_NN + vLHC_Mag_NN
WHERE TeamOverview.Address  IS NOT NULL;

#Cacluating ALL user's earnings
UPDATE TeamOverview
SET MonthlyEarnings_All = (TotalMag_All/115000)*1440000;

#Cacluating earnings for users present in NN
UPDATE TeamOverview
SET MonthlyEarnings_NN = (TotalMag_NN/115000)*1440000;

#Import sync date/time from NNReport table
UPDATE TeamOverview, NNTable
SET TeamOverview.Synced_Till = NNTable.Synced_Till
WHERE TeamOverview.cpid = NNTable.cpid;

#Import NN_Mag from NNReport table
UPDATE TeamOverview, NNTable
SET TeamOverview.TotalMag_From_Report = NNTable.NeuralMagnitude
WHERE TeamOverview.cpid = NNTable.cpid;