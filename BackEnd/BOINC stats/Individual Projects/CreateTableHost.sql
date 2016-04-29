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
create table host (
    id                      integer         not null, 
    userid                  integer         not null, 
    total_credit            double          not null,
    expavg_credit           double          not null,
    expavg_time             double          not null,
    p_vendor                varchar(254),
    p_model                 varchar(254),
    os_name                 varchar(254),
    os_version              varchar(254),
    coprocs                 varchar(254);
    boinc_version           varchar(254);

    create_time             integer         not null, 
    rpc_time                integer         not null,
    timezone                integer         not null,
    p_ncpus                 integer         not null,
    
    p_fpops                 double          not null,
    p_iops                  double          not null,
    p_membw                 double          not null,
    m_nbytes                double          not null,
    m_cache                 double          not null,
    m_swap                  double          not null,

    d_total                 double          not null,
    d_free                  double          not null,
    n_bwup                  double          not null,
    n_bwdown                double          not null,
    avg_turnaround          double          not null,
    credit_per_cpu_sec      double          not null,
    host_cpid               varchar(254),
    primary key (id)
) engine=InnoDB;