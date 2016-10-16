
CREATE  TABLE  hospitals

    ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
    WITH SERDEPROPERTIES(
     "separatorChar"=",",
     "quoteChar" ='"',
     "escapeChar" ='\'
    )
    STORED AS TEXTFILE
    LOCATION'/user/w205/hospital_compare/hospital_general_info'
AS
    SELECT provider_id ,
    hospital_name ,
    city ,
    state ,
    hospital_type ,
    hospital_ownership ,
    emergency_services string
FROM hospital_gen_info;

