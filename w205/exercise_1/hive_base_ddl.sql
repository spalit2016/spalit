

CREATE EXTERNAL TABLE IF NOT EXISTS hospitals
    (provider_id string,
    hospital_name string,
    address string,
    city string,
    state string,
    zip_code string,
    county_name string,
    phone_number int,
    hospital_type string,
    hospital_ownership string,
    emergency_services string)
    ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
    WITH SERDEPROPERTIES(
     "separatorChar"=",",
     "quoteChar" ='"',
     "escapeChar" ='\'
    )
    STORED AS TEXTFILE
    LOCATION'/user/w205/hospital_compare/hospital_general_info';


CREATE EXTERNAL TABLE IF NOT EXISTS measures
    (measure_name string,
    measure_id string,
    measure_start_quarter string,
    measure_start_date date,
    measure_end_quarter string,
    measure_end_date date)
    ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
    WITH SERDEPROPERTIES (
    "separatorChar" = ",",
    "quoteChar" = '"',
    "escapeChar" = '\'
     )
    STORED AS TEXTFILE
     LOCATION '/user/w205/hospital_compare/measure_collection_info';


CREATE EXTERNAL TABLE IF NOT EXISTS effective_care
    (provider_id string,
    hospital_name string,
    address string,
    city string,
    state string,
    zip_code string,
    county_name string,
    phone_number string,
    condition string,
    measure_id string,
    measure_name string,
    score string,
    sample string,
    footnote string,
    measure_start_date date,
    measure_end_date date
    )
    ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
    WITH SERDEPROPERTIES (
    "separatorChar" = ",",
    "quoteChar" = '"',
    "escapeChar" = '\'
    )
    STORED AS TEXTFILE
    LOCATION '/user/w205/hospital_compare/effective_care';

CREATE EXTERNAL TABLE IF NOT EXISTS readmissions
    (provider_id string,
    hospital_name string,
    address string,
    city string,
    state string,
    zip_code string,
    county_name string,
    phone_number string,
    measure_name string,
    measure_id string,
    compared_to_national string,
    denominator string,
    score string,
    lower_estimate string,
    higher_estimate string,
    footnote string,
    measure_start_date date,
    measure_end_date date
    )
    ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
    WITH SERDEPROPERTIES (
    "separatorChar" = ",",
    "quoteChar" = '"',
    "escapeChar" = '\'
    )
    STORED AS TEXTFILE
    LOCATION '/user/w205/hospital_compare/readmissions';

CREATE EXTERNAL TABLE IF NOT EXISTS surveys_responses
    (provider_number string,
    hospital_name string,
    address string,
    city string,
    state string,
    zip_code string,
    county_name string,
    communication_nurses_achievement_pt string,
    communication_nurses_improvement_pt string,
    communication_nurses_dimension_score string,
    communication_doctors_achievement_pt string,
    communication_doctors_improvement_pt string,
    communication_doctors_dimension_score string,
    responsiveness_staff_achievement_pt string,
    responsiveness_staff_improvement_pt string,
    responsiveness_staff_dimension_score string,
    pain_mgmt_achievement_pt string,
    pain_mgmt_improvement_pt string,
    pain_mgmt_dimension_score string,
    communication_medicines_achievement_pt string,
    communication_medicines_improvement_pt string,
    communication_medicines_dimension_score string,
    clean_quite_achievement_pt string,
    clean_quite_improvement_pt string,
    clean_quite_dimension_score string,
    discharge_achievement_pt string,
    discharge_improvement_pt string,
    discharge_dimension_score string,
    overall_rating_achievement_pt string,
    overall_rating_improvement_pt string,
    overall_rating_dimension_score string)
    ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
    WITH SERDEPROPERTIES (
    "separatorChar" = ",",
    "quoteChar" = '"',
    "escapeChar" = '\'
    )
    STORED AS TEXTFILE
    LOCATION '/user/w205/hospital_compare/surveys_responses';

