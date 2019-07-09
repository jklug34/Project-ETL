# Project-ETL
Perform extract, transform, and load (ETL) on cost of living and education outcomes data sets


## Databases Used

Cost of Living Index by Cities (CSV)
- https://www.kaggle.com/debdutta/cost-of-living-index-by-country#Cost_of_living_index.csv

College Scorecard Data (2014-2015) (CSV)
- https://collegescorecard.ed.gov/data/

## Transform/Cleaning

For cost_of_living database

- Set "city" column to string and split into three different columns city, state, country with str.split

- Concat the new city, state and country dataframe with original and dropped original "city" column

- Used .loc to find just US cities

- renamed column headers to lowercase and used underscores for spaces in headers for easy loading to sql

- Used sqlalchemy to connect and load data in to postgreSQL database


For education database

- Selected one year (2014-2015) and 20 columns from the large initial database (city, state, zip code, outcome metrics)

- Drop na to remove missing values, changed "PrivacySuppressed" entries to blank spaces, used .isnull().sum() to find number of null values remaining

- Dropped website column, replaced spaces with np.nan, and then converted some of the object columns data type to float

- Concat the string columns dataframe and float columns dataframe back into one dataframe

- Renamed column headers to lowercase and used underscores for spaces in headers for easy loading to sql

- Made a groupby city and agg by .mean() for each city to remove mulitples

- Used sqlalchemy to connect and load data in to postgreSQL database



## Load

- After creating the tables "cost_of_living" and "education" with column headers and data types in postgreSQL in pgAdmin4

- Loaded data from "US_cost_of_living_df_transformed" dataframe to sql database called "cost_of_living" via sqlalchemy

- Loaded data from "rename_cleaned_combined_df" dataframe to sql database called "education" via sqlalchemy




