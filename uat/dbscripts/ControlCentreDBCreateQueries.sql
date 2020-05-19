create database ControlCentreDB;

CREATE TABLE ControlCentreDB.dbo.shorex_user_details (
	user_id int IDENTITY(1,1) NOT NULL,
	alias_email_id varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_date datetime2(7) NULL,
	email_id varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_active bit NULL,
	last_modified_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_modified_date datetime2(7) NULL,
	last_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	password varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	role_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__shorex_u__B9BE370FB02BC173 PRIMARY KEY (user_id)
); 

CREATE TABLE ControlCentreDB.dbo.kiosk_status (
	kiosk_id int IDENTITY(1,1) NOT NULL,
	[domain] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lastmodifydate datetime2(7) NULL,
	status varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__kiosk_st__2CFA2687BB71B28D PRIMARY KEY (kiosk_id)
);


CREATE TABLE ControlCentreDB.dbo.admin_languages (
	id int NOT NULL,
	[language] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	language_locales varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__admin_la__3213E83F6B11C036 PRIMARY KEY (id)
);


CREATE TABLE ControlCentreDB.dbo.carousel_package_details (
	carousel_package_id int IDENTITY(1,1) NOT NULL,
	created_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_date datetime2(7) NULL,
	import_date datetime2(7) NULL,
	is_active bit NULL,
	last_modified_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_modified_date datetime2(7) NULL,
	manifest_data varchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	package_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__carousel__9D7D03942E91F0D9 PRIMARY KEY (carousel_package_id)
) ;



CREATE TABLE ControlCentreDB.dbo.carousel_image_details (
	carousel_image_id int IDENTITY(1,1) NOT NULL,
	name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_date datetime2(7) NULL,
	image_url varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_active bit NULL,
	last_modified_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_modified_date datetime2(7) NULL,
	carousel_package_id int NULL,
	CONSTRAINT PK__carousel__CC2E235F74E148A4 PRIMARY KEY (carousel_image_id)
) ;



ALTER TABLE ControlCentreDB.dbo.carousel_image_details ADD CONSTRAINT FKp6igspwt1o8tdfs1alpc51n98 FOREIGN KEY (carousel_package_id) REFERENCES ControlCentreDB.dbo.carousel_package_details(carousel_package_id) ;


CREATE TABLE ControlCentreDB.dbo.banner_package_details (
	banner_package_id int IDENTITY(1,1) NOT NULL,
	created_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_date datetime2(7) NULL,
	import_date datetime2(7) NULL,
	is_active bit NULL,
	last_modified_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_modified_date datetime2(7) NULL,
	name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	package_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__banner_p__CD0E298A35D5B427 PRIMARY KEY (banner_package_id)
) ;

CREATE TABLE ControlCentreDB.dbo.banner_image_details (
	banner_image_id int IDENTITY(1,1) NOT NULL,
	[image] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_date datetime2(7) NULL,
	image_url varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_active bit NULL,
	last_modified_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_modified_date datetime2(7) NULL,
	banner_package_id int NULL,
	CONSTRAINT PK__banner_i__7346DF7AFD7296C5 PRIMARY KEY (banner_image_id)
);


ALTER TABLE ControlCentreDB.dbo.banner_image_details ADD CONSTRAINT FK7a9khgg1c1o8pc0q2wo90jygj FOREIGN KEY (banner_package_id) REFERENCES ControlCentreDB.dbo.banner_package_details(banner_package_id) ;


CREATE TABLE ControlCentreDB.dbo.filter_sort_label_details (
	filter_sort_label_details_id int IDENTITY(1,1) NOT NULL,
	category_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	category_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_date datetime2(7) NULL,
	is_active bit NULL,
	item varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_modified_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_modified_date datetime2(7) NULL,
	compare_val varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__filter_s__0F3C5B13274C971A PRIMARY KEY (filter_sort_label_details_id)
);

CREATE TABLE ControlCentreDB.dbo.updated_language_list (
	id int NOT NULL,
	updated_language varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__updated___3213E83FD29E5A6C PRIMARY KEY (id)
);

CREATE TABLE ControlCentreDB.dbo.cc_config (
	config_id int NOT NULL,
	smtp_password varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	smtp_username varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__cc_confi__4AD1BFF1F2B1F9C0 PRIMARY KEY (config_id)
);

