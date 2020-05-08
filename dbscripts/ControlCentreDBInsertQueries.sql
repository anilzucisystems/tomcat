use ControlCentreDB;

INSERT INTO ControlCentreDB.dbo.shorex_user_details (alias_email_id,created_by,created_date,email_id,first_name,is_active,last_modified_by,last_modified_date,last_name,password,role_name) VALUES 
(NULL,NULL,'2020-02-14 06:47:54.000','anil@broadgateinfonet.co.uk','Anil',1,NULL,'2020-02-14 06:47:54.000','R','$2a$10$QPo2SfI62BpYhEpM7BDYhumQb4mHQy2QCn3Tc41PEJjqfYARglip2','ADMIN')
,(NULL,'admin','2020-02-28 14:43:54.000','sri@broadgateinfonet.co.uk','Sri',1,'admin','2020-02-28 14:43:54.000','bbb','$2a$10$XUZ/lkNWpYnhKnFWu/el2eWdxukbfOmL8JSCxyNaBQ0PPSo.1m7gu','USER');

INSERT INTO ControlCentreDB.dbo.admin_languages (id,[language],language_locales) VALUES 
(1,'English','en_GB')
,(2,'German','de-DE')
,(3,'French','fr-FR');


INSERT INTO ControlCentreDB.dbo.kiosk_status ([domain],lastmodifydate,status) VALUES 
('192.168.1.100','2020-03-20 11:37:54.000','offline')
,('192.168.1.101','2020-03-23 15:40:32.000','offline')
,('192.168.1.102','2020-03-23 16:15:20.000','offline')
,('192.168.1.103','2020-03-23 16:18:19.000','offline')
,('192.168.1.104','2020-03-23 16:20:19.000','offline')
,('192.168.1.105','2020-03-23 16:21:21.000','offline')
,('192.168.1.106','2020-03-23 16:23:25.000','offline');




INSERT INTO ControlCentreDB.dbo.carousel_package_details (created_by,created_date,import_date,is_active,last_modified_by,last_modified_date,manifest_data,name,package_name) VALUES 
('Admin','2020-04-11 18:10:55.799','2020-04-11 18:10:55.799',1,'Admin','2020-04-11 18:10:55.799','{"imageList":[{"name":"AES-Aksla-Viewpoint 1824-x-1830.jpg","index":0},{"name":"AES-Sugarlump-Mountain-1824-x-1830.jpg","index":1},{"name":"BGO-Bryggen-backstreet-1824-x-1830.jpg","index":2},{"name":"BGO-Funicular-1824-x-1830.jpg","index":3},{"name":"BGO-Runners-1824-x-1830.jpg","index":4},{"name":"BGO-Yachts-1824-x-1830-.jpg","index":5},{"name":"Bike-1824-x-1830.jpg","index":6},{"name":"GE1-Dalsnibba-1824-x-1830.jpg","index":7},{"name":"GE1-Viewpoint-1924-x-1830.jpg","index":8},{"name":"GE1-Waterfall-1824-x-1830.jpg","index":9},{"name":"Hiking-1824-x-1830.jpg","index":10},{"name":"Nordic-Walking-1824-x-1830.jpg","index":11},{"name":"OL1-Briksdal-1824-x-1830.jpg","index":12},{"name":"OL1-Lake-1824-x-1830.jpg","index":13},{"name":"OL1-Loen-Skylift-1824-x-1830.jpg","index":14},{"name":"STA-3-Swords-1824-x-1830.jpg","index":15},{"name":"STA-Gamle-Stavanger-1824-x-1830.jpg","index":16},{"name":"STA-Pulpit-Rock-and-Lysefjord-1824-x-1830.jpg","index":17},{"name":"STA-Waterfront-1824-x-1830.jpg","index":18}],"imageNames":["AES-Aksla-Viewpoint 1824-x-1830.jpg","AES-Sugarlump-Mountain-1824-x-1830.jpg","BGO-Bryggen-backstreet-1824-x-1830.jpg","BGO-Funicular-1824-x-1830.jpg","BGO-Runners-1824-x-1830.jpg","BGO-Yachts-1824-x-1830-.jpg","Bike-1824-x-1830.jpg","GE1-Dalsnibba-1824-x-1830.jpg","GE1-Viewpoint-1924-x-1830.jpg","GE1-Waterfall-1824-x-1830.jpg","Hiking-1824-x-1830.jpg","Nordic-Walking-1824-x-1830.jpg","OL1-Briksdal-1824-x-1830.jpg","OL1-Lake-1824-x-1830.jpg","OL1-Loen-Skylift-1824-x-1830.jpg","STA-3-Swords-1824-x-1830.jpg","STA-Gamle-Stavanger-1824-x-1830.jpg","STA-Pulpit-Rock-and-Lysefjord-1824-x-1830.jpg","STA-Waterfront-1824-x-1830.jpg"]}','test','carousel_2020-04-11-17-29.zip')
;

DECLARE @url varchar(15)
SET @url = 'http://localhost:8083';

INSERT INTO ControlCentreDB.dbo.carousel_image_details (name,created_by,created_date,image_url,is_active,last_modified_by,last_modified_date,carousel_package_id) VALUES 
('AES-Aksla-Viewpoint 1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/AES-Aksla-Viewpoint 1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('AES-Sugarlump-Mountain-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/AES-Sugarlump-Mountain-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('BGO-Bryggen-backstreet-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/BGO-Bryggen-backstreet-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('BGO-Funicular-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/BGO-Funicular-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('BGO-Runners-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/BGO-Runners-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('BGO-Yachts-1824-x-1830-.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/BGO-Yachts-1824-x-1830-.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('Bike-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/Bike-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('GE1-Dalsnibba-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/GE1-Dalsnibba-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('GE1-Viewpoint-1924-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/GE1-Viewpoint-1924-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('GE1-Waterfall-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/GE1-Waterfall-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
;
INSERT INTO ControlCentreDB.dbo.carousel_image_details (name,created_by,created_date,image_url,is_active,last_modified_by,last_modified_date,carousel_package_id) VALUES 
('Hiking-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/Hiking-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('Nordic-Walking-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/Nordic-Walking-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('OL1-Briksdal-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/OL1-Briksdal-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('OL1-Lake-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/OL1-Lake-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('OL1-Loen-Skylift-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/OL1-Loen-Skylift-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('STA-3-Swords-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/STA-3-Swords-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('STA-Gamle-Stavanger-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/STA-Gamle-Stavanger-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('STA-Pulpit-Rock-and-Lysefjord-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/STA-Pulpit-Rock-and-Lysefjord-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
,('STA-Waterfront-1824-x-1830.jpg','Admin','2020-04-11 18:10:56.253',@url+'/images/carousel_2020-04-11-17-29/STA-Waterfront-1824-x-1830.jpg',1,'Admin','2020-04-11 18:10:56.253',1)
;



INSERT INTO ControlCentreDB.dbo.banner_package_details (created_by,created_date,import_date,is_active,last_modified_by,last_modified_date,name,package_name) VALUES 
('Admin','2020-04-11 18:13:10.988','2020-04-11 18:13:10.988',1,'Admin','2020-04-11 18:13:10.988','test','banner_2020-04-11-17-30.zip')
;

INSERT INTO ControlCentreDB.dbo.banner_image_details ([image],created_by,created_date,image_url,is_active,last_modified_by,last_modified_date,banner_package_id) VALUES 
('AES-Aksla-Viewpoint-1824-x-662.jpg','Admin','2020-04-11 18:13:11.071',@url+'/images/banner_2020-04-11-17-30/AES-Aksla-Viewpoint-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.071',1)
,('AES-Sugarlump Mountain-1824-x-662.jpg','Admin','2020-04-11 18:13:11.071',@url+'/images/banner_2020-04-11-17-30/AES-Sugarlump Mountain-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.071',1)
,('BGO-Bryggen-Backstreet-1824-x-662.jpg','Admin','2020-04-11 18:13:11.072',@url+'/images/banner_2020-04-11-17-30/BGO-Bryggen-Backstreet-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.072',1)
,('BGO-Funicular-1824-x-662.jpg','Admin','2020-04-11 18:13:11.072',@url+'/images/banner_2020-04-11-17-30/BGO-Funicular-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.072',1)
,('BGO-Runners-1824-x-662.jpg','Admin','2020-04-11 18:13:11.072',@url+'/images/banner_2020-04-11-17-30/BGO-Runners-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.072',1)
,('BGO-Yachts-1824-x-662.jpg','Admin','2020-04-11 18:13:11.072',@url+'/images/banner_2020-04-11-17-30/BGO-Yachts-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.072',1)
,('Bike-1824-x-662.jpg','Admin','2020-04-11 18:13:11.072',@url+'/images/banner_2020-04-11-17-30/Bike-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.073',1)
,('GE1-Dalsnibba-1824-x-662.jpg','Admin','2020-04-11 18:13:11.073',@url+'/images/banner_2020-04-11-17-30/GE1-Dalsnibba-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.073',1)
,('GE1-Viewpoint-1824-x-662.jpg','Admin','2020-04-11 18:13:11.073',@url+'/images/banner_2020-04-11-17-30/GE1-Viewpoint-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.073',1)
,('GE1-Waterfall-1824-x-662.jpg','Admin','2020-04-11 18:13:11.073',@url+'/images/banner_2020-04-11-17-30/GE1-Waterfall-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.073',1)
;
INSERT INTO ControlCentreDB.dbo.banner_image_details ([image],created_by,created_date,image_url,is_active,last_modified_by,last_modified_date,banner_package_id) VALUES 
('Hike-1824-x-662.jpg','Admin','2020-04-11 18:13:11.073',@url+'/images/banner_2020-04-11-17-30/Hike-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.073',1)
,('Nordic-Walking-1824-x-662.jpg','Admin','2020-04-11 18:13:11.073',@url+'/images/banner_2020-04-11-17-30/Nordic-Walking-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.073',1)
,('OL1-Briksdal-1824-x-662.jpg','Admin','2020-04-11 18:13:11.073',@url+'/images/banner_2020-04-11-17-30/OL1-Briksdal-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.073',1)
,('OL1-Lake-1824-x-662.jpg','Admin','2020-04-11 18:13:11.073',@url+'/images/banner_2020-04-11-17-30/OL1-Lake-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.073',1)
,('OL1-Loen-Skylift-1824-x-662.jpg','Admin','2020-04-11 18:13:11.073',@url+'/images/banner_2020-04-11-17-30/OL1-Loen-Skylift-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.073',1)
,('STA-3-Swords-1824-x-662.jpg','Admin','2020-04-11 18:13:11.073',@url+'/images/banner_2020-04-11-17-30/STA-3-Swords-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.073',1)
,('STA-Gamle-Stavanger-1824-x-662.jpg','Admin','2020-04-11 18:13:11.074',@url+'/images/banner_2020-04-11-17-30/STA-Gamle-Stavanger-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.074',1)
,('STA-Pulpit-Rock-and-Lysefjord-1824-X-662.jpg','Admin','2020-04-11 18:13:11.074',@url+'/images/banner_2020-04-11-17-30/STA-Pulpit-Rock-and-Lysefjord-1824-X-662.jpg',1,'Admin','2020-04-11 18:13:11.074',1)
,('STA-Waterfront-1824-x-662.jpg','Admin','2020-04-11 18:13:11.074',@url+'/images/banner_2020-04-11-17-30/STA-Waterfront-1824-x-662.jpg',1,'Admin','2020-04-11 18:13:11.074',1)
;


INSERT INTO ControlCentreDB.dbo.filter_sort_label_details (category_code,category_name,created_by,created_date,is_active,item,last_modified_by,last_modified_date,compare_val) VALUES 
('FILTER','Experience Theme','admin','2020-03-03 08:25:15.887',1,'Active & Adventurous','admin','2020-03-03 08:25:15.887','ACTIVITY')
,('FILTER','Experience Theme','admin','2020-03-03 08:25:15.887',1,'Cities and Culture','admin','2020-03-03 08:25:15.887','CULTURE')
,('FILTER','Experience Theme','admin','2020-03-03 08:25:15.887',1,'Family Focused','admin','2020-03-03 08:25:15.887','FAMILY')
,('FILTER','Experience Theme','admin','2020-03-03 08:25:15.887',1,'Special Interest','admin','2020-03-03 08:25:15.887','HOBBIES')
,('FILTER','Experience Theme','admin','2020-03-03 08:25:15.887',1,'Once in a Lifetime','admin','2020-03-03 08:25:15.887','LIFETIME')
,('FILTER','Experience Theme','admin','2020-03-03 08:25:15.887',1,'Local Experience','admin','2020-03-03 08:25:15.887','LOCAL')
,('FILTER','Experience Theme','admin','2020-03-03 08:25:15.887',1,'Panoramic','admin','2020-03-03 08:25:15.887','PANORAMIC')
,('FILTER','Experience Theme','admin','2020-03-03 08:25:15.887',1,'Scenic','admin','2020-03-03 08:25:15.887','SCENIC')
,('FILTER','Experience Theme','admin','2020-03-03 08:25:15.887',1,'Shopping Opportunity','admin','2020-03-03 08:25:15.887','SHOPPING')
,('FILTER','Experience Theme','admin','2020-03-03 08:25:15.887',1,'Small Group','admin','2020-03-03 08:25:15.887','SMALL_GROUP')
;
INSERT INTO ControlCentreDB.dbo.filter_sort_label_details (category_code,category_name,created_by,created_date,is_active,item,last_modified_by,last_modified_date,compare_val) VALUES 
('FILTER','Experience Theme','admin','2020-03-03 08:25:15.887',1,'Independent Explorer','admin','2020-03-03 08:25:15.887','UNGUIDED')
,('FILTER','Experience Theme','admin','2020-03-03 08:25:15.887',1,'Water Based','admin','2020-03-03 08:25:15.887','WATER')
,('FILTER','What’s Included','admin','2020-03-03 08:25:15.887',1,'Meal Included','admin','2020-03-03 08:25:15.887','MEAL')
,('FILTER','What’s Included','admin','2020-03-03 08:25:15.887',1,'Refreshment Included','admin','2020-03-03 08:25:15.887','REFRESHMENT')
,('FILTER','Transport','admin','2020-03-03 08:25:15.887',1,'Water-Based','admin','2020-03-03 08:25:15.887','WATER')
,('FILTER','Transport','admin','2020-03-03 08:25:15.887',1,'Land','admin','2020-03-03 08:25:15.887','LAND')
,('FILTER','Transport','admin','2020-03-03 08:25:15.887',1,'Air','admin','2020-03-03 08:25:15.887','AIR')
,('FILTER','Activity Level','admin','2020-03-03 08:25:15.887',1,'High','admin','2020-03-03 08:25:15.887','HIGH')
,('FILTER','Activity Level','admin','2020-03-03 08:25:15.887',1,'Moderate','admin','2020-03-03 08:25:15.887','MODERATE')
,('FILTER','Activity Level','admin','2020-03-03 08:25:15.887',1,'Low','admin','2020-03-03 08:25:15.887','LOW')
;
INSERT INTO ControlCentreDB.dbo.filter_sort_label_details (category_code,category_name,created_by,created_date,is_active,item,last_modified_by,last_modified_date,compare_val) VALUES 
('FILTER','Featured','admin','2020-03-03 08:25:15.887',1,'New','admin','2020-03-03 08:25:15.887','NEW')
,('FILTER','Featured','admin','2020-03-03 08:25:15.887',1,'Recommended','admin','2020-03-03 08:25:15.887','RECOMMENDED')
,('FILTER','Featured','admin','2020-03-03 08:25:15.887',1,'Best Seller','admin','2020-03-03 08:25:15.887','BESTSELLER')
,('FILTER','Duration','admin','2020-03-03 08:25:15.887',1,'6-12 Hours','admin','2020-03-03 08:25:15.887','6-12 Hours')
,('FILTER','Duration','admin','2020-03-03 08:25:15.887',1,'Under 6 Hours','admin','2020-03-03 08:25:15.887','Under 6 Hours')
,('FILTER','Departure Time','admin','2020-03-03 08:25:15.887',1,'Morning','admin','2020-03-03 08:25:15.887','MORNING')
,('FILTER','Departure Time','admin','2020-03-03 08:25:15.887',1,'Afternoon','admin','2020-03-03 08:25:15.887','AFTERNOON')
,('FILTER','Departure Time','admin','2020-03-03 08:25:15.887',1,'Evening','admin','2020-03-03 08:25:15.887','EVENING')
,('SORT','Date','admin','2020-03-03 08:25:15.887',1,'By Date','admin','2020-03-03 08:25:15.887','BY_DATE')
,('SORT','Price','admin','2020-03-03 08:25:15.887',1,'Price (Low to High)','admin','2020-03-03 08:25:15.887','LOW_TO_HIGH')
;
INSERT INTO ControlCentreDB.dbo.filter_sort_label_details (category_code,category_name,created_by,created_date,is_active,item,last_modified_by,last_modified_date,compare_val) VALUES 
('SORT','Price','admin','2020-03-03 08:25:15.887',1,'Price (High to Low)','admin','2020-03-03 08:25:15.887','HIGH_TO_LOW')
,('SORT','Duration','admin','2020-03-03 08:25:15.887',1,'Duration (Shortest to Longest)','admin','2020-03-03 08:25:15.887','SHORT_TO_LONG')
,('SORT','Duration','admin','2020-03-03 08:25:15.887',1,'Duration (Longest to Shortest)','admin','2020-03-03 08:25:15.887','LONG_TO_SHORT')
,('FILTER','Child Availability','admin','2020-03-03 08:25:15.887',1,'Yes','admin','2020-03-03 08:25:15.887','Y')
,('FILTER','Child Availability','admin','2020-03-03 08:25:15.887',1,'No','admin','2020-03-03 08:25:15.887','N');

INSERT INTO ControlCentreDB.dbo.updated_language_list (id,updated_language) VALUES 
(1,'English');

INSERT INTO ControlCentreDB.dbo.cc_config (config_id,smtp_password,smtp_username) VALUES 
(1,'Shorex2020','shorex@broadgateinfonet.co.uk');
