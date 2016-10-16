
CREATE TABLE survey

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
    WITH SERDEPROPERTIES(
     "separatorChar"=",",
     "quoteChar" ='"',
     "escapeChar" ='\'
    )
    STORED AS TEXTFILE
    LOCATION '/user/w205/hospital_compare/surveys_responses’
AS
SELECT 
    provider_number,
    hospital_name,
    communication_nurses_achievement_pt ,
    communication_nurses_improvement_pt ,
    communication_nurses_dimension_score ,
    communication_doctors_achievement_pt ,
    communication_doctors_improvement_pt ,
    communication_doctors_dimension_score ,
    responsiveness_staff_achievement_pt ,
    responsiveness_staff_improvement_pt ,
    responsiveness_staff_dimension_score ,
    pain_mgmt_achievement_pt,
    pain_mgmt_improvement_pt ,
    pain_mgmt_dimension_score ,
    communication_medicines_achievement_pt ,
    communication_medicines_improvement_pt ,
    communication_medicines_dimension_score ,
    clean_quite_achievement_pt ,
    clean_quite_improvement_pt ,
    clean_quite_dimension_score ,
    discharge_achievement_pt ,
    discharge_improvement_pt ,
    discharge_dimension_score ,
    overall_rating_achievement_pt ,
    overall_rating_improvement_pt ,
    overall_rating_dimension_score
FROM surveys_responses

