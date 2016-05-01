/*
<server_status>
<daemon_status>
  <daemon>
        <host>asteroidsathome.net</host>
        <command>Download server</command>
        <status>running</status>
    </daemon>
  <daemon>
        <host>asteroidsathome.net</host>
        <command>Upload server</command>
        <status>running</status>
    </daemon>
  <daemon>
        <host>project1</host>
        <command>
        feeder</command>
        <status>running</status>
    </daemon>
  <daemon>
        <host>project1</host>
        <command>
        transitioner</command>
        <status>running</status>
    </daemon>
  <daemon>
        <host>project1</host>
        <command>
        transitioner</command>
        <status>running</status>
    </daemon>
  <daemon>
        <host>project1</host>
        <command>
        file_deleter</command>
        <status>running</status>
    </daemon>
  <daemon>
        <host>project1</host>
        <command>
        period_search_validator (period_search)</command>
        <status>running</status>
    </daemon>
  <daemon>
        <host>project1</host>
        <command>
        period_search_validator (period_search)</command>
        <status>running</status>
    </daemon>
  <daemon>
        <host>project1</host>
        <command>
        period_search_validator (period_search)</command>
        <status>running</status>
    </daemon>
  <daemon>
        <host>project1</host>
        <command>
        period_search_validator (period_search)</command>
        <status>running</status>
    </daemon>
  <daemon>
        <host>project1</host>
        <command>
        period_search_assimilator (period_search)</command>
        <status>running</status>
    </daemon>
  <daemon>
        <host>project1</host>
        <command>
        period_search_assimilator (period_search)</command>
        <status>running</status>
    </daemon>
  <daemon>
        <host>project1</host>
        <command>
        db_purge</command>
        <status>running</status>
    </daemon>
</daemon_status>
<database_file_states>
   <results_ready_to_send>138321</results_ready_to_send>
   <results_in_progress>269531</results_in_progress>
   <workunits_waiting_for_validation>3</workunits_waiting_for_validation>
   <workunits_waiting_for_assimilation>5</workunits_waiting_for_assimilation>
   <workunits_waiting_for_deletion>0</workunits_waiting_for_deletion>
   <results_waiting_for_deletion>0</results_waiting_for_deletion>
   <transitioner_backlog_hours>0.00083333333333333</transitioner_backlog_hours>
   <users_with_recent_credit>17811</users_with_recent_credit>
   <users_with_credit>78500</users_with_credit>
   <users_registered_in_past_24_hours>269</users_registered_in_past_24_hours>
   <hosts_with_recent_credit>26812</hosts_with_recent_credit>
   <hosts_with_credit>133994</hosts_with_credit>
   <hosts_registered_in_past_24_hours>354</hosts_registered_in_past_24_hours>
   <current_floating_point_speed>239320.39460014</current_floating_point_speed>
<tasks_by_app>
<app>
   <id>3</id>
   <name>period_search</name>
   <unsent>138321</unsent>
   <in_progress>269531</in_progress>
   <avg_runtime>3.6300</avg_runtime>
   <min_runtime>0.0100</min_runtime>
   <max_runtime>128.7700</max_runtime>
   <users>5181</users>
</app>
</tasks_by_app>
</database_file_states>
</server_status>
*/
USE BOINC;
create table Asteroids_ServerStatus (
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