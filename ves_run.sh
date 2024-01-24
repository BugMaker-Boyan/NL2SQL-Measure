python spider_ves_measure.py --predicted_sql_path predict_sqls/C3_SQL_GPT35.sql --ground_truth_path spider/dev_gold.sql --data_mode dev --db_root_path spider/database/ --num_cpus 64 --meta_time_out 30 --mode_gt gt --mode_predict gt --diff_json_path spider_dev_hardness_list.json > ves_res/C3_SQL.txt

python spider_ves_measure.py --predicted_sql_path predict_sqls/DAIL_SQL_GPT4.sql --ground_truth_path spider/dev_gold.sql --data_mode dev --db_root_path spider/database/ --num_cpus 64 --meta_time_out 30 --mode_gt gt --mode_predict gt --diff_json_path spider_dev_hardness_list.json > ves_res/DAIL_SQL.txt

python spider_ves_measure.py --predicted_sql_path predict_sqls/DAIL_SQL_GPT4_SC.sql --ground_truth_path spider/dev_gold.sql --data_mode dev --db_root_path spider/database/ --num_cpus 64 --meta_time_out 30 --mode_gt gt --mode_predict gt --diff_json_path spider_dev_hardness_list.json > ves_res/DAIL_SQL_SC.txt

python spider_ves_measure.py --predicted_sql_path predict_sqls/DIN_SQL_GPT4.sql --ground_truth_path spider/dev_gold.sql --data_mode dev --db_root_path spider/database/ --num_cpus 64 --meta_time_out 30 --mode_gt gt --mode_predict gt --diff_json_path spider_dev_hardness_list.json > ves_res/DIN_SQL.txt

python spider_ves_measure.py --predicted_sql_path predict_sqls/Graphix_3B_PICARD.sql --ground_truth_path spider/dev_gold.sql --data_mode dev --db_root_path spider/database/ --num_cpus 64 --meta_time_out 30 --mode_gt gt --mode_predict gt --diff_json_path spider_dev_hardness_list.json > ves_res/Graphix_3B_PICARD.txt

python spider_ves_measure.py --predicted_sql_path predict_sqls/RESDSQL_3B_NatSQL.sql --ground_truth_path spider/dev_gold.sql --data_mode dev --db_root_path spider/database/ --num_cpus 64 --meta_time_out 30 --mode_gt gt --mode_predict gt --diff_json_path spider_dev_hardness_list.json > ves_res/RESDSQL_3B_NatSQL.txt