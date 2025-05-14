/* 
Question :What are the skills required for top paying data analyst role?
    Use the top 10 highest paying Data Analyst jobs from first query
    Add the specific skills required for these roles
    Why? It provides a detailed look at which high paying jobs demand certian skills,
    helping job seekers understand which skills to develop that align with top salaries
*/

WITH top_paying_jobs AS (
    SELECT
        job_postings_fact.job_id,
        job_title,
        salary_year_avg,
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
)

SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY salary_year_avg DESC;

/*
    Here's the breakdown of skills required for top-paying Data Analyst roles in the UK:
        - The most commonly required skill is Excel, showing it's still important even in high-paying roles.
        - Other popular skills include:
            SQL – used for working with databases
            Python – helps in analyzing and automating data tasks
            Power BI and Tableau – tools for creating dashboards and reports
            Jupyter – used to write and share code and data analysis
        - Some specialized roles (like at Shell) also mention tools like Shell, Flow, and Express, which are more technical.
        - In short, mastering a combination of data analysis, reporting tools, and basic programming can increase your chances 
          of landing a high-paying data analyst role.
*/