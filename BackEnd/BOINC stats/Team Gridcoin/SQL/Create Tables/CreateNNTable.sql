/*
{
    "CPID":"002d0748de1e924aa4987f271f921eb9",
    "LocalMagnitude":50,
    "NeuralMagnitude":50,
    "TotalRAC":102666.67,
    "Synced Til":"4/30/2016 6:00:00 AM",
    "Address":"S8KoMiAgaspTcyRR2niwik7HAQsbueghaN",
    "CPID_Valid":"True",
    "Witnesses":1
}
*/
USE TeamGridcoin;
create table NNTable (
    cpid        varchar(254)         not null,
    LocalMagnitude             double     DEFAULT 0,
    NeuralMagnitude             double     DEFAULT 0,
    TotalRAC             double     DEFAULT 0,
    Synced_Till        varchar(25)        not null,
    Address                 varchar(35) not null,
    CPID_Valid  varchar(5) not null,
    Witnesses             double     DEFAULT 0,
    primary key (cpid)
) engine=InnoDB;