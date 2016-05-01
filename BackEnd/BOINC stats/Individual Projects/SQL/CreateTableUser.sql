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
create table user (
    id                      integer         not null,
    create_time             integer,
    name                    varchar(254),
    country                 varchar(254),
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    teamid                  integer,
    venue                   varchar(254),
    url                     varchar(254),
    show_hosts              smallint,
    posts                   smallint,
        -- reused: salt for weak auth
    seti_id                 integer,
    seti_nresults           integer,
    seti_last_result_time   integer,
    seti_total_cpu          double,
        -- deprecated
    has_profile             smallint,
    cross_project_id        varchar(254),
    primary key (id)
) engine=InnoDB;