
CREATE  TABLE  procedure
    
    ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
    WITH SERDEPROPERTIES (
    "separatorChar" = ",",
    "quoteChar" = '"',
    "escapeChar" = '\'
    )
    STORED AS TEXTFILE
    LOCATION '/user/w205/hospital_compare/effective_care'
AS
 SELECT provider_id ,
    hospital_name ,
    state,
    condition ,
    measure_id ,
    measure_name ,
    score ,
    sample 
FROM effective_care;

