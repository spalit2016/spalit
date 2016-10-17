
select state, sum(score) AS sum_score, avg(score) AS avg_score
    FROM procedure
    group by state
    order by sum_score desc
    LIMIT 10;


select state, sum(score) AS sum_score, avg(score) AS avg_score
    FROM procedure
    group by state
    order by avg_score desc
    LIMIT 10;

