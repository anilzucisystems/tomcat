use ContentSyncDB;


INSERT INTO ContentSyncDB.dbo.shorex_user_details (alias_email_id,created_by,created_date,email_id,first_name,is_active,last_modified_by,last_modified_date,last_name,password,role_name) VALUES 
(NULL,NULL,'2020-02-14 06:47:54.000','anil@broadgateinfonet.co.uk','Anil',1,NULL,'2020-02-14 06:47:54.000','R','$2a$10$QyKsAUoC4o77ivBIS6PbGe.VQ0Cgl4wU6JQNNLaH/A1KsiXRICrxa','ADMIN')
,(NULL,'admin','2020-02-28 14:43:54.000','sri@broadgateinfonet.co.uk','Sri',1,'admin','2020-02-28 14:43:54.000','bbb','$2a$10$XUZ/lkNWpYnhKnFWu/el2eWdxukbfOmL8JSCxyNaBQ0PPSo.1m7gu','USER')
;

INSERT INTO ContentSyncDB.dbo.aem_config (id,home,root,syncDownloadPath,aemBaseUrl,downloadPath,downloadPathInternal,threadPoolSize,created_date,updated_date,datasourseUsername,datasoursePassword,socketTimeout,connectionTimeout,connectionReqTimeout,smtpusername,smtppassword,contentRootPath) VALUES 
(1,'','user.home','user.home/sa/ExtractFiles/','http://localhost:4502','user.home/sa/ExtractFiles/Assets/','user.home/sa/ExtractFiles/Files/','10','2020-02-17 14:16:23.000','2020-02-17 14:16:23.000','root','password','60000','60000','60000','shorex@broadgateinfonet.co.uk','Shorex2020','/content/po/master_content/en_GB/excursions');
