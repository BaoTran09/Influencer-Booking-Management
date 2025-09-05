CREATE OR REPLACE PROCEDURE clean_old_logs IS
BEGIN
  DELETE FROM log_change
  WHERE CHANGED_DATE < SYSDATE  -3;

  COMMIT;
END;
/
drop job WEEKLY_LOG_CLEANUP1;
BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'WEEKLY_LOG_CLEANUP1',
    job_type        => 'STORED_PROCEDURE',
    job_action      => 'CLEAN_OLD_LOGS',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'FREQ=WEEKLY;BYDAY=WED;BYHOUR=6;BYMINUTE=25;BYSECOND=0',
    enabled         => TRUE
  );
END;
/
SELECT job_name, state, last_start_date, next_run_date
FROM   dba_scheduler_jobs
WHERE  job_name = 'WEEKLY_LOG_CLEANUP1';
BEGIN
  DBMS_SCHEDULER.drop_job('WEEKLY_LOG_CLEANUP1');
END;
/