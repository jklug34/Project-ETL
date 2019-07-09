DROP TABLE cost_of_living;
DROP TABLE education;

-- Create Two Tables
CREATE TABLE cost_of_living (
  index INT PRIMARY KEY,
  city TEXT,
  state	 TEXT,
  country TEXT,
  world_rank INT,	
  cost_of_living_index FLOAT,
  rent_index FLOAT,
  cost_of_living_plus_rent_index FLOAT,
  groceries_index FLOAT,
  restaurant_price_index FLOAT,
  local_purchasing_power_index FLOAT
);

CREATE TABLE education (
  index INT PRIMARY KEY,	
  ipeds_id INT,
  college_name TEXT,
  city TEXT,
  state TEXT,
  zip TEXT,
  pct_students_anglo_saxon FLOAT,
  pct_students_african_american FLOAT,
  pct_students_asian_pacific_islander FLOAT,
  pct_students_hispanic FLOAT,
  pct_with_bachelors FLOAT,
  grad_unemployed_rate FLOAT,
  mean_earn_10yrs_after_graduate FLOAT,
  med_earn_10yrs_after_graduate FLOAT,
  percentile_10th_earn_10yrs_after_graduate FLOAT,
  percentile_25th_earn_10yrs_after_graduate FLOAT,
  percentile_75th_earn_10yrs_after_graduate FLOAT,
  percentile_90th_earn_10yrs_after_graduate FLOAT,
  stnd_dev_earn_10yrs_after_graduate FLOAT,
  mean_earn_lowest_income_tercile_0_30k FLOAT,
  mean_earn_middle_income_tercile_30k_75k FLOAT,
  mean_earn_highest_income_tercile_75k_plus FLOAT	
);

SELECT * FROM cost_of_living;
SELECT * FROM education;