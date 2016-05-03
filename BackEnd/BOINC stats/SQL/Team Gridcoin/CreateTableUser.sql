/*
<user>
 <id>13479</id>
 <name>jayBee666</name>
 <country>Belgium</country>
 <create_time>1205621536</create_time>
 <total_credit>67593735.440772</total_credit>
 <expavg_credit>29693.382741</expavg_credit>
 <expavg_time>1461949199.903130</expavg_time>
 <cpid>f55273555197291a829d2e88d15bc595</cpid>
 <teamid>1629</teamid>
</user>
*/
USE TeamGridcoin;
create table Asteroids_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table ATLAS_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table BitcoinUtopia_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table BURP_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table ClimatePrediction_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table CPDN_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table CSG_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table Collatz_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table Cosmology_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table DDM_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table Einstein_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table Enigma_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table FindAtHome_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table GPUGRID_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table GridcoinFinance_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table lattice2_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table LHCatHome_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table Leiden_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table MalariaControl_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table Milkyway_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table MindModeling_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table MooWrap_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table NFS_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table NumbersFields_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table POEM_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table PrimeGrid_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table Rosetta_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table SAT_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table SETI_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table Sztaki_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table Skynet_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table WCG_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table YAFU_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table YOYO_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;

create table vLHC_user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    project_mag             double,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;