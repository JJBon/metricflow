-- Read Elements From Semantic Model 'revenue'
-- Metric Time Dimension 'ds'
-- Pass Only Elements:
--   ['txn_revenue', 'ds__month']
-- Aggregate Measures
-- Compute Metrics via Expressions
SELECT
  DATE_TRUNC('month', created_at) AS ds__month
  , SUM(revenue) AS trailing_2_months_revenue
FROM ***************************.fct_revenue revenue_src_10007
GROUP BY
  DATE_TRUNC('month', created_at)
