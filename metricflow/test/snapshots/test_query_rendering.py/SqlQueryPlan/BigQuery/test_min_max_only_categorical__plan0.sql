-- Calculate min and max
SELECT
  MIN(subq_1.listing__country_latest) AS listing__country_latest__min
  , MAX(subq_1.listing__country_latest) AS listing__country_latest__max
FROM (
  -- Pass Only Elements:
  --   ['listing__country_latest']
  SELECT
    subq_0.listing__country_latest
  FROM (
    -- Read Elements From Semantic Model 'listings_latest'
    SELECT
      1 AS listings
      , listings_latest_src_10005.capacity AS largest_listing
      , listings_latest_src_10005.capacity AS smallest_listing
      , DATE_TRUNC(listings_latest_src_10005.created_at, day) AS ds__day
      , DATE_TRUNC(listings_latest_src_10005.created_at, isoweek) AS ds__week
      , DATE_TRUNC(listings_latest_src_10005.created_at, month) AS ds__month
      , DATE_TRUNC(listings_latest_src_10005.created_at, quarter) AS ds__quarter
      , DATE_TRUNC(listings_latest_src_10005.created_at, year) AS ds__year
      , EXTRACT(year FROM listings_latest_src_10005.created_at) AS ds__extract_year
      , EXTRACT(quarter FROM listings_latest_src_10005.created_at) AS ds__extract_quarter
      , EXTRACT(month FROM listings_latest_src_10005.created_at) AS ds__extract_month
      , EXTRACT(day FROM listings_latest_src_10005.created_at) AS ds__extract_day
      , IF(EXTRACT(dayofweek FROM listings_latest_src_10005.created_at) = 1, 7, EXTRACT(dayofweek FROM listings_latest_src_10005.created_at) - 1) AS ds__extract_dow
      , EXTRACT(dayofyear FROM listings_latest_src_10005.created_at) AS ds__extract_doy
      , DATE_TRUNC(listings_latest_src_10005.created_at, day) AS created_at__day
      , DATE_TRUNC(listings_latest_src_10005.created_at, isoweek) AS created_at__week
      , DATE_TRUNC(listings_latest_src_10005.created_at, month) AS created_at__month
      , DATE_TRUNC(listings_latest_src_10005.created_at, quarter) AS created_at__quarter
      , DATE_TRUNC(listings_latest_src_10005.created_at, year) AS created_at__year
      , EXTRACT(year FROM listings_latest_src_10005.created_at) AS created_at__extract_year
      , EXTRACT(quarter FROM listings_latest_src_10005.created_at) AS created_at__extract_quarter
      , EXTRACT(month FROM listings_latest_src_10005.created_at) AS created_at__extract_month
      , EXTRACT(day FROM listings_latest_src_10005.created_at) AS created_at__extract_day
      , IF(EXTRACT(dayofweek FROM listings_latest_src_10005.created_at) = 1, 7, EXTRACT(dayofweek FROM listings_latest_src_10005.created_at) - 1) AS created_at__extract_dow
      , EXTRACT(dayofyear FROM listings_latest_src_10005.created_at) AS created_at__extract_doy
      , listings_latest_src_10005.country AS country_latest
      , listings_latest_src_10005.is_lux AS is_lux_latest
      , listings_latest_src_10005.capacity AS capacity_latest
      , DATE_TRUNC(listings_latest_src_10005.created_at, day) AS listing__ds__day
      , DATE_TRUNC(listings_latest_src_10005.created_at, isoweek) AS listing__ds__week
      , DATE_TRUNC(listings_latest_src_10005.created_at, month) AS listing__ds__month
      , DATE_TRUNC(listings_latest_src_10005.created_at, quarter) AS listing__ds__quarter
      , DATE_TRUNC(listings_latest_src_10005.created_at, year) AS listing__ds__year
      , EXTRACT(year FROM listings_latest_src_10005.created_at) AS listing__ds__extract_year
      , EXTRACT(quarter FROM listings_latest_src_10005.created_at) AS listing__ds__extract_quarter
      , EXTRACT(month FROM listings_latest_src_10005.created_at) AS listing__ds__extract_month
      , EXTRACT(day FROM listings_latest_src_10005.created_at) AS listing__ds__extract_day
      , IF(EXTRACT(dayofweek FROM listings_latest_src_10005.created_at) = 1, 7, EXTRACT(dayofweek FROM listings_latest_src_10005.created_at) - 1) AS listing__ds__extract_dow
      , EXTRACT(dayofyear FROM listings_latest_src_10005.created_at) AS listing__ds__extract_doy
      , DATE_TRUNC(listings_latest_src_10005.created_at, day) AS listing__created_at__day
      , DATE_TRUNC(listings_latest_src_10005.created_at, isoweek) AS listing__created_at__week
      , DATE_TRUNC(listings_latest_src_10005.created_at, month) AS listing__created_at__month
      , DATE_TRUNC(listings_latest_src_10005.created_at, quarter) AS listing__created_at__quarter
      , DATE_TRUNC(listings_latest_src_10005.created_at, year) AS listing__created_at__year
      , EXTRACT(year FROM listings_latest_src_10005.created_at) AS listing__created_at__extract_year
      , EXTRACT(quarter FROM listings_latest_src_10005.created_at) AS listing__created_at__extract_quarter
      , EXTRACT(month FROM listings_latest_src_10005.created_at) AS listing__created_at__extract_month
      , EXTRACT(day FROM listings_latest_src_10005.created_at) AS listing__created_at__extract_day
      , IF(EXTRACT(dayofweek FROM listings_latest_src_10005.created_at) = 1, 7, EXTRACT(dayofweek FROM listings_latest_src_10005.created_at) - 1) AS listing__created_at__extract_dow
      , EXTRACT(dayofyear FROM listings_latest_src_10005.created_at) AS listing__created_at__extract_doy
      , listings_latest_src_10005.country AS listing__country_latest
      , listings_latest_src_10005.is_lux AS listing__is_lux_latest
      , listings_latest_src_10005.capacity AS listing__capacity_latest
      , listings_latest_src_10005.listing_id AS listing
      , listings_latest_src_10005.user_id AS user
      , listings_latest_src_10005.user_id AS listing__user
    FROM ***************************.dim_listings_latest listings_latest_src_10005
  ) subq_0
  GROUP BY
    listing__country_latest
) subq_1
