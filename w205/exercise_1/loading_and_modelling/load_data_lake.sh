

# Changing file name and deleting header lines from each file 

tail -n +2 /Desktop/Hospital General Information.csv> /Desktop/Hospital_General_Information_v2.csv

tail -n +2 /Desktop/Measure Dates.csv> /Desktop/Measure_Dates_v2.csv

tail -n +2 /Desktop/Readmissions and Deaths - Hospital.csv> /Desktop/Readmissions_and_Deaths-Hospital_v2.csv

tail -n +2 /Desktop/Timely and Effective Care - Hospital.csv> /Desktop/Timely_and_Effective_Care-Hospital_v2.csv

tail -n +2 /Desktop/hvbp_hcahps_05_28_2015.csv> /Desktop/hvbp_hcahps_05_28_2015_v2.csv

# Loaded the modified docs in s3 bucket

# Download the 5 files in hdfs

wget https://s3.amazonaws.com/spalit1016/Hospital_General_Information_v2.csv

wget https://s3.amazonaws.com/spalit1016/Measure_Dates_v2.csv

wget https://s3.amazonaws.com/spalit1016/Readmissions_and_Deaths-Hospital_v2.csv

wget https://s3.amazonaws.com/spalit1016/Timely_and_Effective_Care-Hospital_v2.csv

wget https://s3.amazonaws.com/spalit1016/hvbp_hcahps_05_28_2015_v2.csv


# Placing the 5 files under /user/w205/hospital_compare 

hdfs dfs -put hvbp_hcahps_05_28_2015_v2.csv /user/w205/hospital_compare

hdfs dfs -put Timely_and_Effective_Care-Hospital_v2.csv /user/w205/hospital_compare

hdfs dfs -put Readmissions_and_Deaths-Hospital_v2.csv /user/w205/hospital_compare

hdfs dfs -put Measure_Dates_v2.csv /user/w205/hospital_compare

hdfs dfs -put Hospital_General_Information_v2.csv /user/w205/hospital_compare


