/* 
    Question:What are the most demamding skills for data analyst?
        Identify the top 5 demanding skills for the data analyst
        Focus on all job postings
        Why? Retrieves the top 5 skills with the highest demand in the job market,
            providing insights into the most valuable skills for job seekers.
*/

SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_location = 'United Kingdom' AND
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
GROUP BY skills
ORDER BY demand_count DESC
LIMIT 5

/*
    According to the analysis of top-paying job listings:
    - Excel is the most in-demand skill, appearing in 11 listings. It’s still essential for handling and analyzing data.
    - SQL and Python are also highly sought after, each appearing in 8 listings. These are key for working with databases and automating analysis.
    - Tableau and Power BI, both used for creating data visualizations and dashboards, appeared 5 and 3 times, respectively.
    - In short, Excel, SQL, and Python are the core skills to focus on if you're aiming for a high-paying Data Analyst job in the UK.
*/