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
USE BOINC;
create table _ServerStatus (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    teamid                  integer,
    has_profile             smallint,
    cpid        varchar(254)         not null,
    primary key (id)
) engine=InnoDB;