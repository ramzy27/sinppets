WITH RECURSIVE hierarchy AS (
  -- Replace 'portfolio1', 'portfolio2', etc. with the codes of the portfolios you want to start with
  SELECT code, mgr
  FROM your_portfolios_table
  WHERE code IN ('portfolio1', 'portfolio2', 'portfolio3')
  
  UNION ALL
  
  -- Traverse the hierarchy
  SELECT p.code, p.mgr
  FROM your_portfolios_table p
  JOIN hierarchy h ON p.mgr = h.code
)
SELECT * FROM hierarchy;
