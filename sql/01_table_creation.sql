-- Create AMOS table structure
CREATE TABLE IF NOT EXISTS public.amos (
    wo_number VARCHAR(100),
    aircraft VARCHAR(10),
    state VARCHAR(5),
    issue_station VARCHAR(5),
    closing_station VARCHAR(5),
    issue_date DATE,
    closing_date DATE,
    issue_sign VARCHAR(100),
    wo_header VARCHAR(100),
    wo_text TEXT,
    service_type TEXT
);
