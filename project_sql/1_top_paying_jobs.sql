/* 
Question :What are the top paying data analyst jobs?
    Identify the top 10 highest paying Data Analyst roles that are available in United Kingdom
    Focues on job postings with specified salaries (remove nulls)
    Why? Highlight the top paying opportunities for Data Analyst, offering insights into employment opportunities
*/

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

/*
    Here is a summary of the top 10 highest-paying Data Analyst jobs in the United Kingdom:

    - The highest salary was £180,000, offered by Deutsche Bank for a senior role.
    - Most of the top-paying jobs are in the finance and energy industries.
    - Job titles such as "Lead Analyst", "Senior Analyst", and "Data Architect" tend to offer higher salaries.
    - Specialised roles, such as those focused on fraud, trading, or biology, are paid more.
    - Most jobs were posted around November and December 2023.
    - Almost all of the roles are full-time positions.
    - The salaries range from around £75,000 to £180,000 per year. This shows that experience, job title, and industry 
      play a big role in how much data analysts can earn.
*/