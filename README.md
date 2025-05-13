# Introduction
This project dives deep into the top-paying Data Analyst roles in the United Kingdom 🇬🇧, identifying the most in-demand skills 🧠 and trends 📈 in the field. It highlights the highest-paying opportunities 💼, focusing on where high demand meets high salary 💵. It’s designed to provide insights for both job seekers and professionals looking to optimize their career paths in data analytics. 

Want to check out SQL queries? You can find them here: [project_sql](/project_sql/) 🔍.

# Background

Driven by a passion for understanding the evolving data analyst job market, this project was created to uncover the most valuable insights around top-paying roles and in-demand skills 💼💡. The goal was to simplify the job search process by identifying what truly matters — the skills and roles that offer both high demand and strong financial rewards 💵.

The data used for this project comes includes information on job titles, salaries, locations, and required skills. Through SQL queries, this analysis delivers a practical look at where opportunity meets reward in data analytics.

### The questions I wanted to answer through my SQL queries were:

1. What are the top paying data analyst jobs?
2. What skills are required for these top paying jobs?
3. What skills are most in demand for data analyst?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn?
 

# Tools I USed

For my deep dive into the Data Analyst job market, I harnessed the power of several key tools to extract, analyze, and present meaningful insights:

- **SQL** – The backbone of the analysis, used to query data and extract critical insights 📊

- **PostgreSQL** – A robust database management system, perfect for handling and organizing job posting data 🗃️

- **Visual Studio Code** – My primary workspace for writing and running SQL queries efficiently 💻

- **Git & GitHub** – Used for version control and sharing SQL scripts, ensuring seamless collaboration and project tracking 🔄


# The Analysis

Each SQL query in this project was crafted to explore specific aspects of the Data Analyst job market. Here's how I approached each question:

### 1. 💷 Top Paying Data Analyst Jobs
To identify the highest-paying roles, I filtered job postings for data analyst positions with specified annual salaries (excluding nulls). I focused on jobs based in the United Kingdom and included remote opportunities. This query helped surface the top 10 highest-paying roles, offering insight into where the best financial opportunities lie.

```sql
SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM 
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_location = 'United Kingdom' AND 
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10

```
Here is a summary of the top 10 highest-paying Data Analyst jobs in the United Kingdom:

- The highest salary was £180,000, offered by Deutsche Bank for a senior role.
- Most of the top-paying jobs are in the finance and energy industries.
- Job titles such as "Lead Analyst", "Senior Analyst", and "Data Architect" tend to offer higher salaries.
- Specialised roles, such as those focused on fraud, trading, or biology, are paid more.
- Almost all of the roles are full-time positions.
- The salaries range from around £75,000 to £180,000 per year.This shows that experience, job title, and industryplay a big role in how much data analysts can earn.

![Top Paying Roles](assets\1_top_paying_roles.png)


# What I Learned
# Conclusions
