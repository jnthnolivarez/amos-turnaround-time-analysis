-- Create analysis view (recommended for dashboards)
CREATE OR REPLACE VIEW amos_analysis AS
SELECT
  wo_number,
  issue_station,
  closing_station,
  service_type,
  issue_date,
  closing_date,
  (closing_date - issue_date) AS tat_days,
  DATE_TRUNC('month', closing_date)::date AS month
FROM amos;
