# immediately prior to timestamp
SELECT * FROM resource_terraform WHERE version_date > '%d' ORDER BY VERSION_DATE DESC LIMIT 1;
SELECT * FROM resource_config WHERE version_date > '%d' ORDER BY VERSION_DATE DESC LIMIT 1;

# immediately after timestamp
SELECT * FROM resource_terraform WHERE version_date < '%d' ORDER BY VERSION_DATE ASC LIMIT 1;
SELECT * FROM resource_config WHERE version_date < '%d' ORDER BY VERSION_DATE ASC LIMIT 1;

# immediately surrounding timestamp
SELECT * FROM resource_terraform WHERE version_date < '%d' ORDER BY VERSION_DATE ASC LIMIT 1;
UNION
SELECT * FROM resource_terraform WHERE version_date > '%d' ORDER BY VERSION_DATE DESC LIMIT 1;

SELECT * FROM resource_config WHERE version_date > '%d' ORDER BY VERSION_DATE ASC LIMIT 1;
UNION
SELECT * FROM resource_config WHERE version_date > '%d' ORDER BY VERSION_DATE DESC LIMIT 1;

# nearest change, no matter what, to timestamp
SELECT * FROM resource_terraform ORDER BY '%d' <-> version_date LIMIT 1;