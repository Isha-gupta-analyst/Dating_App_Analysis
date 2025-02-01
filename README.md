# 📊 Dating App Analysis - Power BI & SQL Project
Project Overview
This project analyzes user behavior on a dating app using SQL for data processing and Power BI for visualization. The dataset includes user demographics, preferences, and engagement metrics. The goal is to uncover insights into user behavior, swiping trends, and relationship preferences.


## Dataset Description

This dataset contains simulated data from a dating app, focusing on user behavior, preferences, and demographics.

![Image](https://github.com/user-attachments/assets/375a6dcf-d809-4d2a-ade8-f3b427309214)

## Dashboard Visuals

1️⃣ Age vs. Gender Distribution - Clustered Bar Chart (Cyan for Males, Magenta for Females)

2️⃣ Swiping Trends Over Time - Line Chart

3️⃣ Occupation vs. Swiping Activity - Stacked Bar Chart

4️⃣ Education Level Breakdown - Stacked Bar Chart

5️⃣ Users Having Children (%) - Donut Chart (Gold for Yes, Silver for No)

6️⃣ Reasons for Using the App - Pie Chart

## Steps Followed

Step 1: Loaded the dataset into Power BI Desktop (CSV format).

Step 2: Used Power Query Editor to clean the data and check for missing values.

Step 3: Applied transformations such as filtering, renaming columns, and handling null values.

Step 4: Created new calculated columns and measures using DAX for better insights.

Step 5: Designed KPI Cards for key metrics:

Average Age of Users

Average Swipes per User

Active Users %


Step 6: Added filters (slicers) for Age, Gender and Frequency of Usage.

Step 7: Created visualizations to showcase user trends and preferences.

Step 8: Designed a dark-themed dashboard with a gradient background (Blue-Red) for an elegant and modern look.

Step 9: Published the report to Power BI Service.


##  SQL Queries Used

The dating_app_analysis.sql file includes queries for:

Extracting user demographics such as age, gender distribution, and education level.

Analyzing swiping behavior including total swipes, average swipes per user, and trends over time.

Finding the most common interests among users.

Identifying relationship preferences (Casual Dating vs. Marriage).

Analyzing occupation trends and their correlation with swiping activity.

Understanding users with children and their dating preferences.

#### Example Queries:

1️⃣ Most Common Interest Among Users:

![Image](https://github.com/user-attachments/assets/615bcb39-eb71-4200-a600-9aa0ad4a096f)

2️⃣ Swiping Trends Over Time:

![Image](https://github.com/user-attachments/assets/9bd0f15c-a9be-465d-9970-ae3f9c1e57dc)

3️⃣ Occupation-Based Swiping Analysis:

![Image](https://github.com/user-attachments/assets/431c2417-6531-47b5-922b-d728a5dff63f)


## How to Use the Project

🔹 Requirements

1. Power BI Desktop (for .pbix file)

2. SQL Server/MySQL/PostgreSQL (to run queries)

2. GitHub (to clone the project)

🔹 Steps to Run the Project

1. Clone the Repository:

git clone https://github.com/YOUR_GITHUB_USERNAME/dating-app-analysis.git

cd dating-app-analysis

2. Run SQL Queries:

Open your database tool (SQL Server, MySQL, PostgreSQL)

Execute dating_app_analysis.sql to generate insights

3. Open the Power BI Dashboard:

Launch Power BI Desktop

Open Dating_App_Dashboard.pbix

Explore the visualizations


