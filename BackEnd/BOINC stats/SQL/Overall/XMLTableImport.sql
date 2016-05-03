USE BOINC;
#Bear in mind, some of these files may take HOURS to import (500-5000MB)
#Replace '/ with the exact path to the BOINC xml folder locations.
LOAD XML LOCAL INFILE '/GridcoinFinance/host.xml' INTO TABLE GridcoinFinance_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/GridcoinFinance/user.xml' INTO TABLE GridcoinFinance_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/GridcoinFinance/team.xml' INTO TABLE GridcoinFinance_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/SETI/host.xml' INTO TABLE SETI_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/SETI/user.xml' INTO TABLE SETI_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/SETI/team.xml' INTO TABLE SETI_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/Einstein/host_id.xml' INTO TABLE Einstein_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/Einstein/user_id.xml' INTO TABLE Einstein_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/Einstein/team_id.xml' INTO TABLE Einstein_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/ClimatePrediction/host.xml' INTO TABLE ClimatePrediction_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/ClimatePrediction/user.xml' INTO TABLE ClimatePrediction_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/ClimatePrediction/team.xml' INTO TABLE ClimatePrediction_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/Rosetta/host.xml' INTO TABLE Rosetta_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/Rosetta/user.xml' INTO TABLE Rosetta_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/Rosetta/team.xml' INTO TABLE Rosetta_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/BURP/host_id.xml' INTO TABLE BURP_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/BURP/user_id.xml' INTO TABLE BURP_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/BURP/team_id.xml' INTO TABLE BURP_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/PrimeGrid/host_id.xml' INTO TABLE PrimeGrid_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/PrimeGrid/user_id.xml' INTO TABLE PrimeGrid_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/PrimeGrid/team_id.xml' INTO TABLE PrimeGrid_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/Sztaki/host.xml' INTO TABLE _host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/Sztaki/user.xml' INTO TABLE _user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/Sztaki/team.xml' INTO TABLE _team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/WCG/host.xml' INTO TABLE WCG_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/WCG/user.xml' INTO TABLE WCG_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/WCG/team.xml' INTO TABLE WCG_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/MalariaControl/host.xml' INTO TABLE MalariaControl_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/MalariaControl/user.xml' INTO TABLE MalariaControl_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/MalariaControl/team.xml' INTO TABLE MalariaControl_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/lattice2/host.xml' INTO TABLE lattice2_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/lattice2/user.xml' INTO TABLE lattice2_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/lattice2/team.xml' INTO TABLE lattice2_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/BBC-CPDN/host.xml' INTO TABLE CPDN_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/BBC-CPDN/user.xml' INTO TABLE CPDN_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/BBC-CPDN/team.xml' INTO TABLE CPDN_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/Leiden/host.xml' INTO TABLE Leiden_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/Leiden/user.xml' INTO TABLE Leiden_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/Leiden/team.xml' INTO TABLE Leiden_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/MooWrap/host.xml' INTO TABLE MooWrap_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/MooWrap/user.xml' INTO TABLE MooWrap_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/MooWrap/team.xml' INTO TABLE MooWrap_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/GPUGRID/host.xml' INTO TABLE GPUGRID_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/GPUGRID/user.xml' INTO TABLE GPUGRID_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/GPUGRID/team.xml' INTO TABLE GPUGRID_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/Asteroids/host.xml' INTO TABLE Asteroids_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/Asteroids/user.xml' INTO TABLE Asteroids_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/Asteroids/team.xml' INTO TABLE Asteroids_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/Milkyway/host.xml' INTO TABLE Milkyway_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/Milkyway/user.xml' INTO TABLE Milkyway_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/Milkyway/team.xml' INTO TABLE Milkyway_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/POEM/host.xml' INTO TABLE _host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/POEM/user.xml' INTO TABLE _user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/POEM/team.xml' INTO TABLE _team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/Collatz/host.xml' INTO TABLE _host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/Collatz/user.xml' INTO TABLE _user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/Collatz/team.xml' INTO TABLE _team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/CSG/host.xml' INTO TABLE CSG_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/CSG/user.xml' INTO TABLE CSG_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/CSG/team.xml' INTO TABLE CSG_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/YAFU/host.xml' INTO TABLE YAFU_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/YAFU/user.xml' INTO TABLE YAFU_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/YAFU/team.xml' INTO TABLE YAFU_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/FindAtHome/host.xml' INTO TABLE FindAtHome_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/FindAtHome/user.xml' INTO TABLE FindAtHome_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/FindAtHome/team.xml' INTO TABLE FindAtHome_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/Cosmology/host.xml' INTO TABLE Cosmology_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/Cosmology/user.xml' INTO TABLE Cosmology_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/Cosmology/team.xml' INTO TABLE Cosmology_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/vLHC/host.xml' INTO TABLE vLHC_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/vLHC/user.xml' INTO TABLE vLHC_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/vLHC/team.xml' INTO TABLE vLHC_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/MindModeling/host.xml' INTO TABLE MindModeling_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/MindModeling/user.xml' INTO TABLE MindModeling_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/MindModeling/team.xml' INTO TABLE MindModeling_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/NFS/host.xml' INTO TABLE NFS_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/NFS/user.xml' INTO TABLE NFS_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/NFS/team.xml' INTO TABLE NFS_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/NumbersFields/host.xml' INTO TABLE NumbersFields_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/NumbersFields/user.xml' INTO TABLE NumbersFields_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/NumbersFields/team.xml' INTO TABLE NumbersFields_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/Skynet/host.xml' INTO TABLE Skynet_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/Skynet/user.xml' INTO TABLE Skynet_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/Skynet/team.xml' INTO TABLE Skynet_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/YOYO/host.xml' INTO TABLE YOYO_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/YOYO/user.xml' INTO TABLE YOYO_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/YOYO/team.xml' INTO TABLE YOYO_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/BitcoinUtopia/host.xml' INTO TABLE BitcoinUtopia_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/BitcoinUtopia/user.xml' INTO TABLE BitcoinUtopia_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/BitcoinUtopia/team.xml' INTO TABLE BitcoinUtopia_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/SAT/host.xml' INTO TABLE SAT_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/SAT/user.xml' INTO TABLE SAT_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/SAT/team.xml' INTO TABLE SAT_team ROWS IDENTIFIED BY '<team>';

LOAD XML LOCAL INFILE '/ATLAS/host.xml' INTO TABLE ATLAS_host ROWS IDENTIFIED BY '<host>';
LOAD XML LOCAL INFILE '/ATLAS/user.xml' INTO TABLE ATLAS_user ROWS IDENTIFIED BY '<user>';
LOAD XML LOCAL INFILE '/ATLAS/team.xml' INTO TABLE ATLAS_team ROWS IDENTIFIED BY '<team>';