/* ATLAS
<host>
  <id>2</id>
  <userid>2</userid>
  <total_credit>22167.671988</total_credit> 
  <expavg_credit>0.096904</expavg_credit> 
  <expavg_time>1437731111.094922</expavg_time> 
  <p_vendor>GenuineIntel</p_vendor> 
  <p_model>Intel(R) Core(TM) i7-2677M CPU @ 1.80GHz [x86 Family 6 Model 42 Stepping 7]</p_model>
  <os_name>Darwin</os_name>
  <os_version>14.5.0</os_version>
  <coprocs>[BOINC|7.4.42][vbox|4.3.20r96996]</coprocs>

  <create_time>1401094597</create_time> 
  <rpc_time>1444833336</rpc_time> 
  <timezone>7200</timezone> 
  <ncpus>4</ncpus> 
  <p_fpops>2510519606.477564</p_fpops> 
  <p_iops>6703348472.993946</p_iops> 
  <p_membw>1000000000.000000</p_membw> 
  <m_nbytes>4294967296.000000</m_nbytes> 
  <m_cache>1000000.000000</m_cache> 
  <m_swap>12620140544.000000</m_swap> 
  <d_total>249769230336.000000</d_total> 
  <d_free>11164897280.000000</d_free> 
  <n_bwup>120371.817554</n_bwup> 
  <n_bwdown>5081652.184258</n_bwdown> 
  <avg_turnaround>41398.057299</avg_turnaround> 
  <credit_per_cpu_sec>0.000000</credit_per_cpu_sec> 
  <host_cpid>1aec0d53f97802118accae88b7556e42</host_cpid> 
</host>
*/
USE BOINC;
create table host (
    id                      integer         not null, 
    userid                  integer, 
    total_credit            double,
    expavg_credit           double,
    expavg_time             double,
    p_vendor                varchar(254),
    p_model                 varchar(254),
    os_name                 varchar(254),
    os_version              varchar(254),
    coprocs                 varchar(254),
    boinc_version           varchar(254),
    create_time             integer, 
    rpc_time                integer,
    timezone                integer,
    p_ncpus                 integer,
    p_fpops                 double,
    p_iops                  double,
    p_membw                 double,
    m_nbytes                double,
    m_cache                 double,
    m_swap                  double,
    d_total                 double,
    d_free                  double,
    n_bwup                  double,
    n_bwdown                double,
    avg_turnaround          double,
    credit_per_cpu_sec      double,
    host_cpid               varchar(254)          not null,
    primary key (id)
) engine=InnoDB;