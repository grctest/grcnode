#Import Gridcoin Neural Network report data
LOAD DATA LOCAL INFILE "/home/customminer/CM/Public-Git-Folder/grcnode/BackEnd/BOINC stats/SQL/Team Gridcoin/XML/NNReport.csv"
INTO TABLE TeamGridcoin.NNTable
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;