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

create table team (
    id                      integer    not null,
    create_time             integer,
    userid                  integer,
    name                    varchar(254)    not null,
    name_lc                 varchar(254),
    founder_name            varchar(254),
    url                     varchar(254),
    type                    integer,
    name_html               varchar(254),
    description             text,
    nusers                  integer,   /* temp */
    country                 varchar(254),
    total_credit            double,   /* temp */
    expavg_credit           double,   /* temp */
    expavg_time             double,
    seti_id                 integer,
    primary key (id)
) engine=MyISAM;  