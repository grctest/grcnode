create table team (
    id                      integer         not null auto_increment,
    create_time             integer         not null,
    userid                  integer         not null,
    name                    varchar(254)    not null,
    name_lc                 varchar(254),
    url                     varchar(254),
    type                    integer         not null,
    name_html               varchar(254),
    description             text,
    nusers                  integer         not null,   /* temp */
    country                 varchar(254),
    total_credit            double          not null,   /* temp */
    expavg_credit           double          not null,   /* temp */
    expavg_time             double          not null,
    seti_id                 integer         not null,
    ping_user               integer         not null default 0,
    ping_time               integer unsigned not null default 0,
    joinable                tinyint         not null default 1,
    mod_time                timestamp default current_timestamp on update current_timestamp,
    primary key (id)
) engine=MyISAM;  