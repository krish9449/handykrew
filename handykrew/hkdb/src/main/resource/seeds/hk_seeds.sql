/*
-- Query: SELECT * FROM handykrew.service
LIMIT 0, 1000

-- Date: 2018-09-05 12:44
*/
INSERT INTO `service` (`service_no`,`service_name`,`description`,`service_logo_bytes`,`service_logo_type`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (1,'Emergency Services','These services are emergenct service', LOAD_FILE('H:\hhh.jpg'),'jpg',1,'david','2018-06-06 00:00:00','david\n','2018-06-06 00:00:00');
INSERT INTO `service` (`service_no`,`service_name`,`description`,`service_logo_bytes`,`service_logo_type`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (2,'Home care Services','These services are Home care service', LOAD_FILE('H:\hhh.jpg'),'jpg',1,'viru','2018-09-05 17:04:01','david\n','2018-06-08 00:00:00');
INSERT INTO `service` (`service_no`,`service_name`,`description`,`service_logo_bytes`,`service_logo_type`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (3,'plumbing Services','These services are plumbing service', LOAD_FILE('H:\hhh.jpg'),'jpg',1,'kishore','2018-09-05 17:04:01','david\n','2018-06-09 00:00:00');
INSERT INTO `service` (`service_no`,`service_name`,`description`,`service_logo_bytes`,`service_logo_type`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (4,'Electrical Services','These services are Electrical  service', LOAD_FILE('H:\hhh.jpg'),'jpg',1,'balaiah','2018-09-05 17:04:01','david\n','2018-06-06 00:00:00');


/*
-- Query: SELECT * FROM handykrew.service_categories
LIMIT 0, 1000

-- Date: 2018-09-05 12:44
*/
INSERT INTO `service_categories` (`category_no`,`category_nm`,`description`,`category_logo_bytes`,`category_logo_type`,`fixed_charges`,`required_inspection`,`inspection_charges`,`is_emergency_service`,`average_resolution_time`,`warranty_in_days`,`service_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (1,'Air-conditiner service','these serices are air conditioner services', LOAD_FILE('H:\hhh.jpg'),'JPG',2000,1,500,1,'00:00:05',180,4,'veeraswamy','2018-09-05 00:00:00','veeraswamy','2018-09-05 00:00:00');

INSERT INTO `service_categories` (`category_no`,`category_nm`,`description`,`category_logo_bytes`,`category_logo_type`,`fixed_charges`,`required_inspection`,`inspection_charges`,`is_emergency_service`,`average_resolution_time`,`warranty_in_days`,`service_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (2,'Air-conditiner service','these serices are air conditioner services', LOAD_FILE('H:\hhh.jpg'),'JPG',2000,1,500,1,'00:00:05',180,4,'vamsy','2018-09-05 00:00:00','vamsy','2018-09-05 00:00:00');

INSERT INTO `service_categories` (`category_no`,`category_nm`,`description`,`category_logo_bytes`,`category_logo_type`,`fixed_charges`,`required_inspection`,`inspection_charges`,`is_emergency_service`,`average_resolution_time`,`warranty_in_days`,`service_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (3,'Locksmith services','these services are a locksmith services', LOAD_FILE('H:\hhh.jpg'),'JPG',3000,1,600,1,'00:00:05',180,1,'varun','2018-09-05 17:39:03','varun','2018-09-06 00:00:00');

INSERT INTO `service_categories` (`category_no`,`category_nm`,`description`,`category_logo_bytes`,`category_logo_type`,`fixed_charges`,`required_inspection`,`inspection_charges`,`is_emergency_service`,`average_resolution_time`,`warranty_in_days`,`service_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (4,'fan services','these serices are fan repair services', LOAD_FILE('H:\hhh.jpg'),'JPG',3000,0,900,1,'00:00:05',180,4,'sam','2018-09-05 17:39:03','sam','2018-09-07 00:00:00');

INSERT INTO `service_categories` (`category_no`,`category_nm`,`description`,`category_logo_bytes`,`category_logo_type`,`fixed_charges`,`required_inspection`,`inspection_charges`,`is_emergency_service`,`average_resolution_time`,`warranty_in_days`,`service_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (5,'pipe repair','these services are pipe repair services', LOAD_FILE('H:\hhh.jpg'),'JPG',2000,1,600,1,'00:00:05',180,3,'mike','2018-09-05 17:39:03','mike','2018-09-05 00:00:00');

INSERT INTO `service_categories` (`category_no`,`category_nm`,`description`,`category_logo_bytes`,`category_logo_type`,`fixed_charges`,`required_inspection`,`inspection_charges`,`is_emergency_service`,`average_resolution_time`,`warranty_in_days`,`service_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (6,'refrigirator services','these service are air refrigirator services', LOAD_FILE('H:\hhh.jpg'),'JPG',12000,1,500,1,'00:00:05',180,4,'david','2018-09-05 00:00:00','david','2018-09-06 00:00:00');

INSERT INTO `service_categories` (`category_no`,`category_nm`,`description`,`category_logo_bytes`,`category_logo_type`,`fixed_charges`,`required_inspection`,`inspection_charges`,`is_emergency_service`,`average_resolution_time`,`warranty_in_days`,`service_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (7,'painting services','these services are painting  services', LOAD_FILE('H:\hhh.jpg'),'JPG',4000,1,1200,1,'00:00:05',180,2,'steev','2018-09-05 17:39:03','steev','2018-09-07 00:00:00');

/*
-- Query: SELECT * FROM handykrew.technician_service_categories
LIMIT 0, 1000

-- Date: 2018-09-05 12:42
*/
INSERT INTO technician_service_categories(technician_account_no,category_no) VALUES(4,1);
INSERT INTO technician_service_categories(technician_account_no,category_no) VALUES(6,1);
INSERT INTO technician_service_categories(technician_account_no,category_no) VALUES(4,2);
INSERT INTO technician_service_categories(technician_account_no,category_no) VALUES(6,2);

/*
-- Query: SELECT * FROM handykrew_db.work_order_status
LIMIT 0, 1000

-- Date: 2018-09-03 23:40
*/
INSERT INTO `work_order_status` (`work_order_status_no`,`work_order_status`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (1,'open','open state','devid','2018-08-09','devid','2018-08-09');
INSERT INTO `work_order_status` (`work_order_status_no`,`work_order_status`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (2,'allocated','allocated state','devid','2018-08-09','devid','2018-08-09');
INSERT INTO `work_order_status` (`work_order_status_no`,`work_order_status`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (3,'In progress','In progress state','devid','2018-08-09','devid','2018-08-09');
INSERT INTO `work_order_status` (`work_order_status_no`,`work_order_status`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (4,'pending','pending state','devid','2018-08-09','devid','2018-08-09');
INSERT INTO `work_order_status` (`work_order_status_no`,`work_order_status`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (5,'completed','complted the work order','devid','2018-08-09','devid','2018-08-09');
INSERT INTO `work_order_status` (`work_order_status_no`,`work_order_status`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (6,'closed','closed state','devid','2018-08-09','devid','2018-08-09');
INSERT INTO `work_order_status` (`work_order_status_no`,`work_order_status`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (7,'inspection','inpection state','devid','2018-08-09','devid','2018-08-09');

/*
-- Query: SELECT * FROM hksql.spare_parts_invoice
LIMIT 0, 1000

-- Date: 2018-09-05 17:51
*/
INSERT INTO `spare_parts_invoice` (`invoice_no`,`invoice_bill_no`,`invoice_dt`,`invoice_quantity`,`invoice_amount`,`merchant_name`,`merchant_contact_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (1,1,'2018-09-05',11,250,'ravi kishore','8374517973','system','2018-09-05 09:03:50','system','2018-09-05 09:03:50');
INSERT INTO `spare_parts_invoice` (`invoice_no`,`invoice_bill_no`,`invoice_dt`,`invoice_quantity`,`invoice_amount`,`merchant_name`,`merchant_contact_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (2,1,'2018-09-05',20,300,'bala','9963468532','system','2018-09-05 09:03:50','system','2018-09-05 09:03:50');
INSERT INTO `spare_parts_invoice` (`invoice_no`,`invoice_bill_no`,`invoice_dt`,`invoice_quantity`,`invoice_amount`,`merchant_name`,`merchant_contact_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (3,2,'2018-09-05',22,500,'raju','8962005566','system','2018-09-05 09:03:50','system','2018-09-05 09:03:50');

/*
-- Query: SELECT * FROM hksql.spare_parts_details
LIMIT 0, 1000

-- Date: 2018-09-05 18:28
*/
INSERT INTO `spare_parts_details` (`spare_part_no`,`spare_part_nm`,`description`,`quantity`,`cost`,`block`,`invoice_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (1,'electrical wire','electrical wire for electrical work',1,200,'1',1,'ravi','2018-09-05 09:03:50','system','2018-09-05 09:03:50');
INSERT INTO `spare_parts_details` (`spare_part_no`,`spare_part_nm`,`description`,`quantity`,`cost`,`block`,`invoice_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (2,'plastic pipe','plastic pipe for plumbing',2,150,'1',2,'ravi','2018-09-05 09:03:50','system','2018-09-05 09:03:50');
INSERT INTO `spare_parts_details` (`spare_part_no`,`spare_part_nm`,`description`,`quantity`,`cost`,`block`,`invoice_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (3,'key set','key set for locksmith services',1,200,'2',1,'ravi','2018-09-05 09:03:50','system','2018-09-05 09:03:50');
INSERT INTO `spare_parts_details` (`spare_part_no`,`spare_part_nm`,`description`,`quantity`,`cost`,`block`,`invoice_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (4,'electrical switch','electrical switch for electric works',1,300,'2',1,'ravi','2018-09-05 09:03:50','system','2018-09-05 09:03:50');
INSERT INTO `spare_parts_details` (`spare_part_no`,`spare_part_nm`,`description`,`quantity`,`cost`,`block`,`invoice_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (5,'electrical boards','electrical boards for electrical works',2,899,'3',3,'ravi','2018-09-05 09:03:50','system','2018-09-05 09:03:50');
INSERT INTO `spare_parts_details` (`spare_part_no`,`spare_part_nm`,`description`,`quantity`,`cost`,`block`,`invoice_no`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (6,'fan','fan spare parts',2,400,'2',2,'ravi','2018-09-05 09:03:50','system','2018-09-05 09:03:50');

/*
-- Query: SELECT * FROM handykrew.role
LIMIT 0, 1000

-- Date: 2018-09-05 12:44
*/
INSERT INTO `role` (`role_no`,`role_nm`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (1,'customer','This column describes according to role.','simi','2018-09-03 00:00:00','simi','2018-09-07 00:00:00');
INSERT INTO `role` (`role_no`,`role_nm`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (2,'csr','This column describes according to csr','deepak','2018-09-05 00:00:00','laxmi','2018-09-07 00:00:00');
INSERT INTO `role` (`role_no`,`role_nm`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (3,'admin','This column describes according to admin','laxmi','2018-09-09 00:00:00','krishna','2018-09-10 00:00:00');
INSERT INTO `role` (`role_no`,`role_nm`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (4,'technician','This column describes according to technician','prabeen','2018-09-15 00:00:00','dhherja','2018-09-16 00:00:00');

/*
-- Query: SELECT * FROM handykrew.designation
LIMIT 0, 1000

-- Date: 2018-09-05 12:42
*/
INSERT INTO `designation` (`designation_no`,`designation_nm`,`role_no`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (1,'juniortechnicion',4,'juniortechnicion is work for workorder.','simi','2018-09-03 00:00:00','simi','2018-09-05 00:00:00');
INSERT INTO `designation` (`designation_no`,`designation_nm`,`role_no`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (2,'juniortechnicion',4,'juniortechnicion is work for workorder.','kiran','2018-09-04 00:00:00','ravi','2018-09-06 00:00:00');
INSERT INTO `designation` (`designation_no`,`designation_nm`,`role_no`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (3,'seniortechnicion',4,'seniortechnicion is work for workorder.','khus','2018-09-06 00:00:00','krishna','2018-09-07 00:00:00');
INSERT INTO `designation` (`designation_no`,`designation_nm`,`role_no`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (4,'seniortechnicion',4,'seniortechnicion is work for workorder.','ravi','2018-09-08 00:00:00','prabeen','2018-09-09 00:00:00');
INSERT INTO `designation` (`designation_no`,`designation_nm`,`role_no`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (5,'juniorcsr',2,'juniorcsr will work for tracking/monitoring','bala','2018-09-10 00:00:00','veera','2018-09-11 00:00:00');
INSERT INTO `designation` (`designation_no`,`designation_nm`,`role_no`,`description`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (6,'seniorcsr',2,'juniorcsr will work for tracking/monitoring','deepak','2018-09-12 00:00:00','deepak','2018-09-13 00:00:00');

/*
-- Query: SELECT * FROM project.state
LIMIT 0, 1000

-- Date: 2018-09-05 09:45
*/
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (1,'andhra pradesh',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (2,'telangana',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (3,'tamil nadu',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (4,'himachal pradesh',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (5,'jammu and kashmir',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (6,'jharkhand',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (7,'karnataka',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (8,'kerala',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (9,'madhya Pradesh',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (10,'maharashtra',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (11,'manipur',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (12,'nagaland',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (13,'odisha',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (14,'punjab',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (15,'haryana',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');
INSERT INTO `state` (`state_no`,`state_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (16,'gujarat',1,'balaiah','2018-09-05 09:44:09','system','2018-09-05 01:25:35');

/*
-- Query: SELECT * FROM handy_krew.cities
LIMIT 0, 1000

-- Date: 2018-09-05 09:09
*/
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (1,'hyderabad',1,'balaiah','2018-09-05 09:03:50','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (2,'mumbai',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (3,'bengaluru',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (4,'delhi',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (5,'ahmedabad',0,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (6,'chennai',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (7,'surat',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (8,'kolkata',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (9,'pune',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (10,'jaipur',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (11,'lucknow',0,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (12,'kanpur',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (13,'nagpur',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (14,'visakhapatnam',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (15,'indore',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (16,'thane',0,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (17,'bhopal',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (18,'patna',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (19,'vadodara',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (20,'ludhiana',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (21,'agra',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (22,'vijayawada',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (23,'varanasi',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (24,'Visakhapatnam',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (25,'ranchi',0,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (26,'raipur',0,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (27,'thiruvananthapuram',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (28,'mysore',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (29,'guntur',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (30,'noida',0,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (31,'gandhinagar',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (32,'kerala',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (33,'jammu',0,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (34,'mangalore',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');
INSERT INTO `cities` (`city_no`,`city_nm`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (35,'varanasi',1,'balaiah','2018-09-05 09:04:20','system','2018-09-05 16:40:44');

/*
-- Query: SELECT * FROM handykrew_db.address
LIMIT 0, 1000

-- Date: 2018-09-05 19:28
*/
INSERT INTO `address` (`address_no`,`address_line1`,`address_line2`,`city_no`,`state_no`,`zip`,`country`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (1,'street1','street2',1,1,500005,'india','devid','2018-08-09','ajay','2018-09-08 00:00:00');
INSERT INTO `address` (`address_no`,`address_line1`,`address_line2`,`city_no`,`state_no`,`zip`,`country`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (2,'street3','street4',2,2,500002,'india','devid','2018-08-09','arun','2018-09-07 00:00:00');
INSERT INTO `address` (`address_no`,`address_line1`,`address_line2`,`city_no`,`state_no`,`zip`,`country`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (3,'street5','street6',3,3,500003,'india','devid','2018-08-09','vinod','2018-09-06 00:00:00');
INSERT INTO `address` (`address_no`,`address_line1`,`address_line2`,`city_no`,`state_no`,`zip`,`country`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (4,'street7','street8',4,4,500001,'india','devid','2018-08-09','vijay','2018-09-05 00:00:00');
INSERT INTO `address` (`address_no`,`address_line1`,`address_line2`,`city_no`,`state_no`,`zip`,`country`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (5,'street9','street10',5,5,50009,'india','devid','2018-08-09','vidya','2018-09-02 00:00:00');

/*
-- Query: SELECT * FROM handykrew_db.user_account
LIMIT 0, 1000

-- Date: 2018-09-05 19:28
*/
INSERT INTO `user_account` (`user_account_no`,`primary_email_address (UNQ)`,`password`,`primary_mobile_nbr`,`first_nm`,`last_nm`,`contact_address_no`,`role_no`,`registered_dt`,`activation_dt`,`activation_code`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (1,'aaaaa@gmail.com','1111','9988776655','raja','salkuti',1,1,'2018-05-07','2018-09-08','1001','A','devid','2018-07-09','ramu','2018-08-09 00:00:00');
INSERT INTO `user_account` (`user_account_no`,`primary_email_address (UNQ)`,`password`,`primary_mobile_nbr`,`first_nm`,`last_nm`,`contact_address_no`,`role_no`,`registered_dt`,`activation_dt`,`activation_code`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (2,'bbbbb@gmail.com','2222','8877665544','smith','sam',2,2,'2018-05-07','2018-09-09','1002','A','devid','2018-07-09','asj','2018-08-08 00:00:00');
INSERT INTO `user_account` (`user_account_no`,`primary_email_address (UNQ)`,`password`,`primary_mobile_nbr`,`first_nm`,`last_nm`,`contact_address_no`,`role_no`,`registered_dt`,`activation_dt`,`activation_code`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (3,'ccccc@gamil.com','3333','7788996655','cook','root',3,3,'2018-05-07','2018-09-09','1003','A','devid','2018-07-09','warner','2018-08-07 00:00:00');
INSERT INTO `user_account` (`user_account_no`,`primary_email_address (UNQ)`,`password`,`primary_mobile_nbr`,`first_nm`,`last_nm`,`contact_address_no`,`role_no`,`registered_dt`,`activation_dt`,`activation_code`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (4,'dddd@gmail.com','4444','9966778899','root','cook',4,4,'2018-05-07','2018-09-08','1004','A','devid','2018-07-09','wing','2018-08-05 00:00:00');
INSERT INTO `user_account` (`user_account_no`,`primary_email_address (UNQ)`,`password`,`primary_mobile_nbr`,`first_nm`,`last_nm`,`contact_address_no`,`role_no`,`registered_dt`,`activation_dt`,`activation_code`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (5,'eeee@gmail.com','5555','9966778822','jhon','jhon',4,2,'2018-05-07','2018-09-08','1005','A','devid','2018-07-09','wing','2018-08-05 00:00:00');
INSERT INTO `user_account` (`user_account_no`,`primary_email_address (UNQ)`,`password`,`primary_mobile_nbr`,`first_nm`,`last_nm`,`contact_address_no`,`role_no`,`registered_dt`,`activation_dt`,`activation_code`,`status`,`created_by`,`created_dt`,`last_modified_by`,`last_modified_dt`) VALUES (6,'ffff@gmail.com','6666','9966778811','rock','rock',1,4,'2018-05-07','2018-09-08','1006','A','devid','2018-07-09','wing','2018-08-05 00:00:00');
