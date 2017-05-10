SELECT top 1
  Job_pid
 ,job_name
  ,job_status
 ,job_duration as "Duration (milliseconds)"
 ,cast(job_duration/1000 as numeric(15,1)) as "Duration (seconds)"
 ,cast((job_duration/1000)/60 as numeric(15,2)) as "Duration (Minutes)"
 ,pid
 ,job_start_time
 ,job_finish_time
FROM DW_CTL.dbo.cntl_JobStats
where is_root_job = 'Y'
order by job_finish_time desc