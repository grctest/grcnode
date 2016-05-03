/*
<team>
 <id>1</id>
 <type>6</type>
 <name>Einstein@UWM</name>
 <userid>1</userid>
 <total_credit>694727238.534349</total_credit>
 <expavg_credit>973074.460535</expavg_credit>
 <expavg_time>1461924393.114681</expavg_time>
  <founder_name>David Ha!mmer</founder_name>
 <create_time>1097843932</create_time>
 <url>http://www.google.com/</url>
 <description>DESCRIPTION DESCRIPTION DESCRIPTION</description>
 <country>Internet</country>
</team>
*/
USE BOINC;
create table GridcoinFinance_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table SETI_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table LHCatHome_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table Einstein_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table ClimatePrediction_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table Rosetta_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table BURP_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table PrimeGrid_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table Sztaki_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table WCG_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table MalariaControl_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table lattice2_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table CPDN_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table Leiden_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table MooWrap_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table GPUGRID_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table Asteroids_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table Milkyway_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table POEM_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table Collatz_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table CSG_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table YAFU_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table FindAtHome_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table Cosmology_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table vLHC_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table MindModeling_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table NFS_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table NumbersFields_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table Skynet_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table YOYO_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table BitcoinUtopia_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table SAT_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;

create table ATLAS_team (
    id                      integer         not null,
    type                      integer,
    name                    varchar(254),
    userid                      integer,
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    founder_name        varchar(254),
    create_time             integer,
    url                     varchar(254),
    description        varchar(254),
    country                 varchar(254),
    primary key (id)
) engine=MyISAM;