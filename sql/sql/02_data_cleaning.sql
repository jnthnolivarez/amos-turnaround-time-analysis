-- Keep only DOTAMECH records
DELETE FROM amos
WHERE issue_sign <> 'DOTAMECH' OR issue_sign IS NULL;

-- (Optional) Remove blanks / missing dates
DELETE FROM amos
WHERE issue_date IS NULL OR closing_date IS NULL;
