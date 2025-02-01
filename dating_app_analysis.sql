create database dating_App;
use dating_app;
select*from dating_app_dataset;

# Changing some column names to making fetching data easier

ALTER TABLE dating_app_dataset CHANGE COLUMN `Education Level` education_level VARCHAR(255);
ALTER TABLE dating_app_dataset CHANGE COLUMN `Looking For` looking_for VARCHAR(255);
ALTER TABLE dating_app_dataset CHANGE COLUMN `Swiping History` Swiping_history VARCHAR(255);
ALTER TABLE dating_app_dataset CHANGE COLUMN `Frequency of Usage` frequency_of_usage VARCHAR(255);


# Count the number of users by gender

SELECT 
    Gender, COUNT(*) AS user_count
FROM
    dating_app_dataset
GROUP BY Gender;

# Average age of the Users

SELECT 
    ROUND(AVG(age)) AS average_age
FROM
    dating_app_dataset;
    
# Most common Educational level among users

SELECT 
    education_level, COUNT(*) AS count
FROM
    dating_app_dataset
GROUP BY education_level
ORDER BY count DESC
LIMIT 1;

# Count users by relationship preference

SELECT 
    looking_for, COUNT(*) AS user_count
FROM
    dating_app_dataset
GROUP BY looking_for;

# Calculate the percentage of users with children

SELECT 
    (SUM(CASE WHEN children = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS percentage_with_children
FROM dating_app_dataset;

# Average swipes per user

SELECT 
    ROUND(AVG(swiping_history)) AS avg_swipes
FROM
    dating_app_dataset;
    
# Comparing swiping activity by gender
  
SELECT 
    Gender, ROUND(AVG(swiping_history)) AS avg_swipes
FROM
    dating_app_dataset
GROUP BY Gender;

# Most active age group by swiping history

SELECT 
    Age, AVG(swiping_history) AS avg_swipes
FROM
    dating_app_dataset
GROUP BY Age
ORDER BY avg_swipes DESC
LIMIT 5;

# Compare swiping history across different frequency of app usage

SELECT 
    frequency_of_usage, AVG(swiping_history) AS avg_swipes
FROM
    dating_app_dataset
GROUP BY frequency_of_usage
ORDER BY avg_swipes DESC;

# The top 5 occupations with the highest swiping activity

SELECT 
    Occupation, ROUND(AVG(swiping_history)) AS avg_swipes
FROM
    dating_app_dataset
GROUP BY Occupation
ORDER BY avg_swipes DESC
LIMIT 5;

# Count how many users share the same top 3 interests

SELECT 
    Interests, COUNT(*) AS user_count
FROM
    dating_app_dataset
GROUP BY Interests
ORDER BY user_count DESC
LIMIT 3;

# The most common relationship preference for each gender

SELECT 
    Gender, looking_for, COUNT(*) AS count
FROM
    dating_app_dataset
GROUP BY Gender , looking_for
ORDER BY Gender , count DESC;

# Analyze the correlation between education level and relationship preferences

SELECT 
    education_level, looking_for, COUNT(*) AS count
FROM
    dating_app_dataset
GROUP BY education_level , looking_for
ORDER BY education_level , count DESC;


# Do younger users prefer casual dating while older users seek marriage?

SELECT 
    CASE
        WHEN Age BETWEEN 18 AND 24 THEN '18-24'
        WHEN Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Age BETWEEN 35 AND 44 THEN '35-44'
        ELSE '45+'
    END AS age_group,
    looking_for,
    COUNT(*) AS user_count
FROM
    dating_app_dataset
GROUP BY age_group , looking_for
ORDER BY age_group , user_count DESC;

# What is the average age of users looking for marriage vs. casual dating?

SELECT 
    looking_for, ROUND(AVG(Age)) AS avg_age
FROM
    dating_app_dataset
GROUP BY looking_for;

# Do men and women prefer different types of relationships?

SELECT 
    Gender, looking_for, COUNT(*) AS count
FROM
    dating_app_dataset
GROUP BY Gender , looking_for
ORDER BY Gender , count DESC;
