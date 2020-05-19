create database ContentSyncDB;

CREATE TABLE ContentSyncDB.dbo.[data] (
	port varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Id varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MinimumAge varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	featured varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LongDescription varchar(8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	md5Message varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MealInfo varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DefaultDAMPath varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	WheelChairAccessible varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ShortDescription varchar(8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	status varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lastModifiedDate varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ExtractedDate datetime NULL,
	Image319LastModified varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Image1080LastModified varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Imagedata varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Imagepath1080 varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Imagepath319 varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	duration varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txMealInfo varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txAtAglance varchar(8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txItinerary varchar(8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txIncluded varchar(8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txImportantInformation varchar(8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txName varchar(8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	activityLevel varchar(8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	countrycode varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lastModifiedDateTime datetime NULL,
	destination varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	showLegalTandC varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	shorexIncluded varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txTransportType varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ;

CREATE TABLE ContentSyncDB.dbo.aem_config (
	id int NOT NULL,
	home varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	root varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	syncDownloadPath varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aemBaseUrl varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	downloadPath varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	downloadPathInternal varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	threadPoolSize varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	dburl varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_date datetime NULL,
	updated_date datetime NULL,
	datasourseUsername varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	datasoursePassword varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	socketTimeout varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	connectionTimeout varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	connectionReqTimeout varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	smtpusername varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	smtppassword varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	contentRootPath varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


CREATE TABLE ContentSyncDB.dbo.aemhistory (
	Id int IDENTITY(1,1) NOT NULL,
	StartDate datetime NULL,
	EndDate datetime NULL,
	Status varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	UpdatesFound varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	StartDatePretty varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	EndDatePretty varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__aemhisto__3214EC07CFB3DEFB PRIMARY KEY (Id)
) ;

CREATE TABLE ContentSyncDB.dbo.download_date (
	id int IDENTITY(1,1) NOT NULL,
	[date] timestamp(8) NULL,
	CONSTRAINT PK__download__3213E83FAB86D4B1 PRIMARY KEY (id)
) ;


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
) ;

