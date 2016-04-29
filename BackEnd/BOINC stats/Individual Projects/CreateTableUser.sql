/* ATLAS

*/
create table user (
    id                      integer         not null auto_increment,
    create_time             integer         not null,
    email_addr              varchar(254)    not null,
    name                    varchar(254),
    authenticator           varchar(254),
    country                 varchar(254),
    postal_code             varchar(254),
    total_credit            double          not null,
    expavg_credit           double          not null,
    expavg_time             double          not null,
    global_prefs            blob,
    project_prefs           blob,
    teamid                  integer         not null,
    venue                   varchar(254)    not null,
    url                     varchar(254),
    send_email              smallint        not null,
    show_hosts              smallint        not null,
    posts                   smallint        not null,
        -- reused: salt for weak auth
    seti_id                 integer         not null,
    seti_nresults           integer         not null,
    seti_last_result_time   integer     not null,
    seti_total_cpu          double          not null,
    signature               varchar(254),
        -- deprecated
    has_profile             smallint        not null,
    cross_project_id        varchar(254)    not null,
    passwd_hash             varchar(254)    not null,
    email_validated         smallint        not null,
    donated                 smallint        not null,
    primary key (id)
) engine=InnoDB;