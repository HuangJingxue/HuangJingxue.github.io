2020-10-29T03:18:17.491893Z	  127 Connect	root@localhost on  using Socket
2020-10-29T03:18:17.491959Z	  127 Query	/*!40100 SET @@SQL_MODE='' */
2020-10-29T03:18:17.500845Z	  127 Query	/*!40103 SET TIME_ZONE='+00:00' */
2020-10-29T03:18:17.500973Z	  127 Query	SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES WHERE table_schema = 'performance_schema' AND table_name = 'session_variables'
2020-10-29T03:18:17.501163Z	  127 Query	SELECT COUNT(*) FROM performance_schema.session_variables WHERE VARIABLE_NAME LIKE 'rocksdb\_skip\_fill\_cache'
2020-10-29T03:18:17.501717Z	  127 Query	SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ
2020-10-29T03:18:17.516176Z	  127 Query	START TRANSACTION /*!40100 WITH CONSISTENT SNAPSHOT */
2020-10-29T03:18:17.516261Z	  127 Query	SHOW VARIABLES LIKE 'gtid\_mode'
2020-10-29T03:18:17.517283Z	  127 Query	SELECT @@GLOBAL.GTID_EXECUTED
2020-10-29T03:18:17.517337Z	  127 Query	UNLOCK TABLES
2020-10-29T03:18:17.517404Z	  127 Query	SELECT LOGFILE_GROUP_NAME, FILE_NAME, TOTAL_EXTENTS, INITIAL_SIZE, ENGINE, EXTRA FROM INFORMATION_SCHEMA.FILES WHERE FILE_TYPE = 'UNDO LOG' AND FILE_NAME IS NOT NULL AND LOGFILE_GROUP_NAME IS NOT NULL AND LOGFILE_GROUP_NAME IN (SELECT DISTINCT LOGFILE_GROUP_NAME FROM INFORMATION_SCHEMA.FILES WHERE FILE_TYPE = 'DATAFILE' AND TABLESPACE_NAME IN (SELECT DISTINCT TABLESPACE_NAME FROM INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_SCHEMA IN ('test01','qixin'))) GROUP BY LOGFILE_GROUP_NAME, FILE_NAME, ENGINE, TOTAL_EXTENTS, INITIAL_SIZE ORDER BY LOGFILE_GROUP_NAME
2020-10-29T03:18:17.521994Z	  127 Query	SELECT DISTINCT TABLESPACE_NAME, FILE_NAME, LOGFILE_GROUP_NAME, EXTENT_SIZE, INITIAL_SIZE, ENGINE FROM INFORMATION_SCHEMA.FILES WHERE FILE_TYPE = 'DATAFILE' AND TABLESPACE_NAME IN (SELECT DISTINCT TABLESPACE_NAME FROM INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_SCHEMA IN ('test01','qixin')) ORDER BY TABLESPACE_NAME, LOGFILE_GROUP_NAME
2020-10-29T03:18:17.524860Z	  127 Query	SHOW VARIABLES LIKE 'ndbinfo\_version'
2020-10-29T03:18:17.525648Z	  127 Init DB	test01
2020-10-29T03:18:17.525688Z	  127 Query	SHOW CREATE DATABASE IF NOT EXISTS `test01`
2020-10-29T03:18:17.525721Z	  127 Query	SAVEPOINT sp
2020-10-29T03:18:17.525751Z	  127 Query	show tables
2020-10-29T03:18:17.525849Z	  127 Query	show table status like 'customer'
2020-10-29T03:18:17.525965Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.525998Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.526027Z	  127 Query	show create table `customer`
2020-10-29T03:18:17.526096Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.526149Z	  127 Query	show fields from `customer`
2020-10-29T03:18:17.526438Z	  127 Query	show fields from `customer`
2020-10-29T03:18:17.526682Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `customer`
2020-10-29T03:18:17.526776Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.526806Z	  127 Query	use `test01`
2020-10-29T03:18:17.526833Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.526868Z	  127 Query	SHOW TRIGGERS LIKE 'customer'
2020-10-29T03:18:17.527033Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.527061Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.527090Z	  127 Query	show table status like 'customer\_channel\_wx'
2020-10-29T03:18:17.527186Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.527209Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.527233Z	  127 Query	show create table `customer_channel_wx`
2020-10-29T03:18:17.527289Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.527322Z	  127 Query	show fields from `customer_channel_wx`
2020-10-29T03:18:17.527538Z	  127 Query	show fields from `customer_channel_wx`
2020-10-29T03:18:17.527744Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `customer_channel_wx`
2020-10-29T03:18:17.527822Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.527848Z	  127 Query	use `test01`
2020-10-29T03:18:17.527872Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.527908Z	  127 Query	SHOW TRIGGERS LIKE 'customer\_channel\_wx'
2020-10-29T03:18:17.528075Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.528106Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.528132Z	  127 Query	show table status like 't001'
2020-10-29T03:18:17.528228Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.528250Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.528274Z	  127 Query	show create table `t001`
2020-10-29T03:18:17.528307Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.528336Z	  127 Query	show fields from `t001`
2020-10-29T03:18:17.528480Z	  127 Query	show fields from `t001`
2020-10-29T03:18:17.528614Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `t001`
2020-10-29T03:18:17.528675Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.528701Z	  127 Query	use `test01`
2020-10-29T03:18:17.528726Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.528755Z	  127 Query	SHOW TRIGGERS LIKE 't001'
2020-10-29T03:18:17.528902Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.528930Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.528954Z	  127 Query	show table status like 't02'
2020-10-29T03:18:17.529049Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.529073Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.529097Z	  127 Query	show create table `t02`
2020-10-29T03:18:17.529134Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.529163Z	  127 Query	show fields from `t02`
2020-10-29T03:18:17.529307Z	  127 Query	show fields from `t02`
2020-10-29T03:18:17.529441Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `t02`
2020-10-29T03:18:17.529498Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.529523Z	  127 Query	use `test01`
2020-10-29T03:18:17.529548Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.529578Z	  127 Query	SHOW TRIGGERS LIKE 't02'
2020-10-29T03:18:17.529724Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.529750Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.529774Z	  127 Query	show table status like 't03'
2020-10-29T03:18:17.529867Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.529889Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.529912Z	  127 Query	show create table `t03`
2020-10-29T03:18:17.529952Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.529983Z	  127 Query	show fields from `t03`
2020-10-29T03:18:17.530130Z	  127 Query	show fields from `t03`
2020-10-29T03:18:17.530270Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `t03`
2020-10-29T03:18:17.530327Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.530352Z	  127 Query	use `test01`
2020-10-29T03:18:17.530376Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.530406Z	  127 Query	SHOW TRIGGERS LIKE 't03'
2020-10-29T03:18:17.530552Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.530579Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.530604Z	  127 Query	show table status like 'tes\_customer'
2020-10-29T03:18:17.530696Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.530718Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.530742Z	  127 Query	show create table `tes_customer`
2020-10-29T03:18:17.530788Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.530818Z	  127 Query	show fields from `tes_customer`
2020-10-29T03:18:17.531019Z	  127 Query	show fields from `tes_customer`
2020-10-29T03:18:17.531214Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `tes_customer`
2020-10-29T03:18:17.531285Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.531311Z	  127 Query	use `test01`
2020-10-29T03:18:17.531336Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.531367Z	  127 Query	SHOW TRIGGERS LIKE 'tes\_customer'
2020-10-29T03:18:17.531521Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.531548Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.531573Z	  127 Query	show table status like 'tes\_customer\_pol\_cvg'
2020-10-29T03:18:17.531665Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.531688Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.531712Z	  127 Query	show create table `tes_customer_pol_cvg`
2020-10-29T03:18:17.531754Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.531784Z	  127 Query	show fields from `tes_customer_pol_cvg`
2020-10-29T03:18:17.531957Z	  127 Query	show fields from `tes_customer_pol_cvg`
2020-10-29T03:18:17.532127Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `tes_customer_pol_cvg`
2020-10-29T03:18:17.532205Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.532231Z	  127 Query	use `test01`
2020-10-29T03:18:17.532257Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.532287Z	  127 Query	SHOW TRIGGERS LIKE 'tes\_customer\_pol\_cvg'
2020-10-29T03:18:17.532438Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.532465Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.532489Z	  127 Query	show table status like 'v\_testv'
2020-10-29T03:18:17.532677Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.532701Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.532725Z	  127 Query	show create table `v_testv`
2020-10-29T03:18:17.532844Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.532873Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.532898Z	  127 Query	SHOW FIELDS FROM `v_testv`
2020-10-29T03:18:17.533233Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.533270Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.533292Z	  127 Query	use `test01`
2020-10-29T03:18:17.533317Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.533348Z	  127 Query	SHOW TRIGGERS LIKE 'v\_testv'
2020-10-29T03:18:17.533500Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.533527Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.533551Z	  127 Query	show table status like 'youbang\_cpa'
2020-10-29T03:18:17.533645Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.533668Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.533691Z	  127 Query	show create table `youbang_cpa`
2020-10-29T03:18:17.533733Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.533763Z	  127 Query	show fields from `youbang_cpa`
2020-10-29T03:18:17.533934Z	  127 Query	show fields from `youbang_cpa`
2020-10-29T03:18:17.534100Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `youbang_cpa`
2020-10-29T03:18:17.534167Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.534191Z	  127 Query	use `test01`
2020-10-29T03:18:17.534215Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.534246Z	  127 Query	SHOW TRIGGERS LIKE 'youbang\_cpa'
2020-10-29T03:18:17.534395Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.534421Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.534441Z	  127 Query	RELEASE SAVEPOINT sp
2020-10-29T03:18:17.534459Z	  127 Init DB	qixin
2020-10-29T03:18:17.534478Z	  127 Query	SHOW CREATE DATABASE IF NOT EXISTS `qixin`
2020-10-29T03:18:17.534502Z	  127 Query	SAVEPOINT sp
2020-10-29T03:18:17.534522Z	  127 Query	show tables
2020-10-29T03:18:17.534594Z	  127 Query	show table status like 'match\_records'
2020-10-29T03:18:17.534687Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.534709Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.534733Z	  127 Query	show create table `match_records`
2020-10-29T03:18:17.534800Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.534833Z	  127 Query	show fields from `match_records`
2020-10-29T03:18:17.535058Z	  127 Query	show fields from `match_records`
2020-10-29T03:18:17.535262Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `match_records`
2020-10-29T03:18:17.535343Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.535369Z	  127 Query	use `qixin`
2020-10-29T03:18:17.535394Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.535425Z	  127 Query	SHOW TRIGGERS LIKE 'match\_records'
2020-10-29T03:18:17.535574Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.535602Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.535627Z	  127 Query	show table status like 't'
2020-10-29T03:18:17.535721Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.535744Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.535767Z	  127 Query	show create table `t`
2020-10-29T03:18:17.535803Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.535831Z	  127 Query	show fields from `t`
2020-10-29T03:18:17.535990Z	  127 Query	show fields from `t`
2020-10-29T03:18:17.536139Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `t`
2020-10-29T03:18:17.536220Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.536246Z	  127 Query	use `qixin`
2020-10-29T03:18:17.536270Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.536300Z	  127 Query	SHOW TRIGGERS LIKE 't'
2020-10-29T03:18:17.536452Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.536479Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.536504Z	  127 Query	show table status like 'table\_demo'
2020-10-29T03:18:17.536598Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.536620Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.536643Z	  127 Query	show create table `table_demo`
2020-10-29T03:18:17.536680Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.536709Z	  127 Query	show fields from `table_demo`
2020-10-29T03:18:17.536858Z	  127 Query	show fields from `table_demo`
2020-10-29T03:18:17.537006Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `table_demo`
2020-10-29T03:18:17.537877Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.537902Z	  127 Query	use `qixin`
2020-10-29T03:18:17.537927Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.537963Z	  127 Query	SHOW TRIGGERS LIKE 'table\_demo'
2020-10-29T03:18:17.538126Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.538154Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.538179Z	  127 Query	show table status like 'table\_demo1'
2020-10-29T03:18:17.538275Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.538297Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.538320Z	  127 Query	show create table `table_demo1`
2020-10-29T03:18:17.538357Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.538386Z	  127 Query	show fields from `table_demo1`
2020-10-29T03:18:17.538540Z	  127 Query	show fields from `table_demo1`
2020-10-29T03:18:17.538683Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `table_demo1`
2020-10-29T03:18:17.539657Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.539683Z	  127 Query	use `qixin`
2020-10-29T03:18:17.539708Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.539738Z	  127 Query	SHOW TRIGGERS LIKE 'table\_demo1'
2020-10-29T03:18:17.539893Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.539921Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.539952Z	  127 Query	show table status like 'table\_demo1\_history'
2020-10-29T03:18:17.540049Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.540072Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.540097Z	  127 Query	show create table `table_demo1_history`
2020-10-29T03:18:17.540137Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.540171Z	  127 Query	show fields from `table_demo1_history`
2020-10-29T03:18:17.540326Z	  127 Query	show fields from `table_demo1_history`
2020-10-29T03:18:17.540471Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `table_demo1_history`
2020-10-29T03:18:17.540623Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.540649Z	  127 Query	use `qixin`
2020-10-29T03:18:17.540675Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.540706Z	  127 Query	SHOW TRIGGERS LIKE 'table\_demo1\_history'
2020-10-29T03:18:17.540859Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.540886Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.540911Z	  127 Query	show table status like 'table\_demo1\_history1'
2020-10-29T03:18:17.541010Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.541034Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.541059Z	  127 Query	show create table `table_demo1_history1`
2020-10-29T03:18:17.541098Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.541130Z	  127 Query	show fields from `table_demo1_history1`
2020-10-29T03:18:17.541284Z	  127 Query	show fields from `table_demo1_history1`
2020-10-29T03:18:17.541426Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `table_demo1_history1`
2020-10-29T03:18:17.542317Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.542343Z	  127 Query	use `qixin`
2020-10-29T03:18:17.542369Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.542400Z	  127 Query	SHOW TRIGGERS LIKE 'table\_demo1\_history1'
2020-10-29T03:18:17.542553Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.542581Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.542606Z	  127 Query	show table status like 'table\_demo1\_history2'
2020-10-29T03:18:17.542701Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.542723Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.542747Z	  127 Query	show create table `table_demo1_history2`
2020-10-29T03:18:17.542784Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.542813Z	  127 Query	show fields from `table_demo1_history2`
2020-10-29T03:18:17.542969Z	  127 Query	show fields from `table_demo1_history2`
2020-10-29T03:18:17.543120Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `table_demo1_history2`
2020-10-29T03:18:17.543183Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.543208Z	  127 Query	use `qixin`
2020-10-29T03:18:17.543233Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.543264Z	  127 Query	SHOW TRIGGERS LIKE 'table\_demo1\_history2'
2020-10-29T03:18:17.543413Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.543441Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.543465Z	  127 Query	show table status like 'table\_demo\_history'
2020-10-29T03:18:17.543559Z	  127 Query	SET SQL_QUOTE_SHOW_CREATE=1
2020-10-29T03:18:17.543581Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.543605Z	  127 Query	show create table `table_demo_history`
2020-10-29T03:18:17.543642Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.543671Z	  127 Query	show fields from `table_demo_history`
2020-10-29T03:18:17.543819Z	  127 Query	show fields from `table_demo_history`
2020-10-29T03:18:17.543962Z	  127 Query	SELECT /*!40001 SQL_NO_CACHE */ * FROM `table_demo_history`
2020-10-29T03:18:17.544828Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.544852Z	  127 Query	use `qixin`
2020-10-29T03:18:17.544875Z	  127 Query	select @@collation_database
2020-10-29T03:18:17.544904Z	  127 Query	SHOW TRIGGERS LIKE 'table\_demo\_history'
2020-10-29T03:18:17.545068Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.545103Z	  127 Query	ROLLBACK TO SAVEPOINT sp
2020-10-29T03:18:17.545124Z	  127 Query	RELEASE SAVEPOINT sp
2020-10-29T03:18:17.545145Z	  127 Init DB	test01
2020-10-29T03:18:17.545164Z	  127 Query	show tables
2020-10-29T03:18:17.545239Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.545262Z	  127 Query	SHOW CREATE TABLE `customer`
2020-10-29T03:18:17.545323Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.545349Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.545368Z	  127 Query	SHOW CREATE TABLE `customer_channel_wx`
2020-10-29T03:18:17.545417Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.545438Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.545456Z	  127 Query	SHOW CREATE TABLE `t001`
2020-10-29T03:18:17.545483Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.545504Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.545520Z	  127 Query	SHOW CREATE TABLE `t02`
2020-10-29T03:18:17.545547Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.545567Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.545584Z	  127 Query	SHOW CREATE TABLE `t03`
2020-10-29T03:18:17.545612Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.545633Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.545650Z	  127 Query	SHOW CREATE TABLE `tes_customer`
2020-10-29T03:18:17.545686Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.545707Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.545724Z	  127 Query	SHOW CREATE TABLE `tes_customer_pol_cvg`
2020-10-29T03:18:17.545758Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.545778Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.545795Z	  127 Query	SHOW CREATE TABLE `v_testv`
2020-10-29T03:18:17.545935Z	  127 Query	SELECT CHECK_OPTION, DEFINER, SECURITY_TYPE,        CHARACTER_SET_CLIENT, COLLATION_CONNECTION FROM information_schema.views WHERE table_name="v_testv" AND table_schema="test01"
2020-10-29T03:18:17.546097Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.546127Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.546147Z	  127 Query	SHOW CREATE TABLE `youbang_cpa`
2020-10-29T03:18:17.546188Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.546216Z	  127 Init DB	qixin
2020-10-29T03:18:17.546236Z	  127 Query	show tables
2020-10-29T03:18:17.546311Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.546336Z	  127 Query	SHOW CREATE TABLE `match_records`
2020-10-29T03:18:17.546389Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.546413Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.546432Z	  127 Query	SHOW CREATE TABLE `t`
2020-10-29T03:18:17.546463Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.546486Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.546505Z	  127 Query	SHOW CREATE TABLE `table_demo`
2020-10-29T03:18:17.546535Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.546557Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.546577Z	  127 Query	SHOW CREATE TABLE `table_demo1`
2020-10-29T03:18:17.546606Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.546628Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.546647Z	  127 Query	SHOW CREATE TABLE `table_demo1_history`
2020-10-29T03:18:17.546676Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.546698Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.546717Z	  127 Query	SHOW CREATE TABLE `table_demo1_history1`
2020-10-29T03:18:17.546746Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.546768Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.546793Z	  127 Query	SHOW CREATE TABLE `table_demo1_history2`
2020-10-29T03:18:17.546822Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.546842Z	  127 Query	SET SESSION character_set_results = 'binary'
2020-10-29T03:18:17.546859Z	  127 Query	SHOW CREATE TABLE `table_demo_history`
2020-10-29T03:18:17.546888Z	  127 Query	SET SESSION character_set_results = 'utf8'
2020-10-29T03:18:17.617280Z	  127 Quit	
