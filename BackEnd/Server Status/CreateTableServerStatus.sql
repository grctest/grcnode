#DFS = database file states
USE BOINC;
create table Asteroids_ServerStatus_DFS (
    id                                  integer         not null,
    results_ready_to_send               integer,
    results_in_progress                 integer,
    workunits_waiting_for_validation    integer,
    workunits_waiting_for_assimilation  integer,
    workunits_waiting_for_deletion      integer,
    results_waiting_for_deletion        integer,
    transitioner_backlog_hours          double,
    users_with_recent_credit            integer,
    users_with_credit                   integer,
    users_registered_in_past_24_hours   integer,
    hosts_with_recent_credit            integer,
    hosts_with_credit                   integer,
    hosts_registered_in_past_24_hours   integer,
    current_floating_point_speed        double,
    primary key (id)
) engine=InnoDB;

create table ATLAS_ServerStatus_DFS (
    id                                  integer         not null,
    results_ready_to_send               integer,
    results_in_progress                 integer,
    workunits_waiting_for_validation    integer,
    workunits_waiting_for_assimilation  integer,
    workunits_waiting_for_deletion      integer,
    results_waiting_for_deletion        integer,
    transitioner_backlog_hours          double,
    users_with_recent_credit            integer,
    users_with_credit                   integer,
    users_registered_in_past_24_hours   integer,
    hosts_with_recent_credit            integer,
    hosts_with_credit                   integer,
    hosts_registered_in_past_24_hours   integer,
    current_floating_point_speed        double,
    primary key (id)
) engine=InnoDB;

#DFS = database file states
USE BOINC;
create table Asteroids_ServerStatus_DFS (
    id                                  integer         not null,
    results_ready_to_send               integer,
    results_in_progress                 integer,
    workunits_waiting_for_validation    integer,
    workunits_waiting_for_assimilation  integer,
    workunits_waiting_for_deletion      integer,
    results_waiting_for_deletion        integer,
    transitioner_backlog_hours          double,
    users_with_recent_credit            integer,
    users_with_credit                   integer,
    users_registered_in_past_24_hours   integer,
    hosts_with_recent_credit            integer,
    hosts_with_credit                   integer,
    hosts_registered_in_past_24_hours   integer,
    current_floating_point_speed        double,
    primary key (id)
) engine=InnoDB;