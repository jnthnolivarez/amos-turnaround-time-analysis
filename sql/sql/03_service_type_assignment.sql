-- Standardize service_type based on wo_header
UPDATE amos
SET service_type =
    CASE
        WHEN wo_header ILIKE '%DAILY CLEANING%' THEN 'Aircraft Daily Cleaning'
        WHEN wo_header ILIKE '%DEEP CLEANING%'
		  OR wo_header ILIKE '%AIRCRAFT DEEP  CLEANING%' THEN 'Aircraft Deep Cleaning'
        WHEN wo_header ILIKE '%DISINFECTION%' THEN 'Aircraft Disinfection'
        WHEN wo_header ILIKE '%DISINSECTION%' 
		  OR wo_header ILIKE '%AIRCRAFT RAT BAITING%'
		  OR wo_header ILIKE '%RAT BAITING'
		  OR wo_header ILIKE '%INSTALLATION OF COCKROACH TRAPS' THEN 'Aircraft Disinsection'
        WHEN wo_header ILIKE '%SWEEP CHECK%' 
          OR wo_header ILIKE '%CABIN SWEEP%' THEN 'Cabin Sweep Check'
        WHEN wo_header ILIKE '%EXTERIOR%' 
          OR wo_header ILIKE '%WATERLESS%' 
		  OR wo_header ILIKE '%AIRCRAFT EXTERNAL CLEANING%' THEN 'Exterior Cleaning'
        ELSE 'Ad-hoc'
    END
