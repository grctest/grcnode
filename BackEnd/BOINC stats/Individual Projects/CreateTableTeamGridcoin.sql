/*
<user>
<id>333</id>
<cpid>870405e5518dc80048a6ddad44d86660</cpid>
<create_time>1267354923</create_time>
<name>WyerByter</name>
<country>United States</country>
<total_credit>23912.4865588</total_credit>
<expavg_credit>2.721018</expavg_credit>
<expavg_time/>
<url>wyerbyter.blogspot.com/</url>
<has_profile>1</has_profile>
</user>
*/
create table team (
    id                      integer         not null,
    cpid        varchar(254)    not null,
    create_time             integer         not null,
    name                    varchar(254)    not null,
    url                     varchar(254),
    country                 varchar(254),
    total_credit            double          not null,
    expavg_credit           double          not null,
    expavg_time             double          not null,
    primary key (id)
) engine=MyISAM;