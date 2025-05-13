/*
    Question: What are the top skills based on salary?
        The average salary associated with each skill for data analyst positions
        Focuses on roles with specified salaries, regardless of location
        Why? It reveals how different skills impact salary levels for Data Analyst and
            helps identify the most financially rewarding skills to acquire to improve
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
LEFT JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    job_location = 'United Kingdom'
GROUP BY 
    skills
ORDER BY 
    avg_salary
LIMIT 25

/*
    This analysis shows the average salary linked to each skill mentioned in job listings for data analyst positions.
    It helps highlight which technical skills are most financially rewarding, regardless of job location.
    - Jupyter and Express are the top-paying skills, both linked to average salaries over £100,000.
    - Common tools like PowerPoint, Outlook, and Word appear frequently but are associated with lower salaries 
      (around £30,000 – £46,000).
    - If you're aiming to increase your earning potential as a data analyst, focusing on advanced tools like Jupyter, 
      Python, Databricks, and cloud platforms (Azure, GCP) is a smart move.
*/