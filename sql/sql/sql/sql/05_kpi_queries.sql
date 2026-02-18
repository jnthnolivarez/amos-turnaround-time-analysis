-- 1B KPI Summary
SELECT
  COUNT(*) AS total_work_orders,
  ROUND(AVG(tat_days), 3) AS avg_tat_days,
  ROUND(
    100.0 * SUM(CASE WHEN tat_days = 0 THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS pct_same_day
FROM amos_analysis;

-- 1C TAT by service type
SELECT
  service_type,
  COUNT(*) AS total_wos,
  ROUND(AVG(tat_days), 3) AS avg_tat_days
FROM amos
GROUP BY service_type
ORDER BY avg_tat_days DESC;
