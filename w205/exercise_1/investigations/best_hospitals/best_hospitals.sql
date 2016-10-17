
select provider_id, hospital_name, avg(score) AS avg_score, sum(score) AS sum_score
    FROM procedure
    group by provider_id, hospital_name
    having sum_score > 1999
    order by avg_score desc
    LIMIT 10;


select provider_id, hospital_name, avg(score) AS avg_score, sum(score) AS sum_score
    FROM procedure
    group by provider_id, hospital_name
    having avg_score > 100
    order by sum_score desc
    LIMIT 10;

