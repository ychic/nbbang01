
/* Drop Tables */
--
--DROP TABLE bankaccount CASCADE CONSTRAINTS;
--DROP TABLE banktoken CASCADE CONSTRAINTS;
--DROP TABLE calendarinfo CASCADE CONSTRAINTS;
--DROP TABLE chatmessage CASCADE CONSTRAINTS;
--DROP TABLE partyconfirminfo CASCADE CONSTRAINTS;
--DROP TABLE chat CASCADE CONSTRAINTS;
--DROP TABLE filter CASCADE CONSTRAINTS;
--DROP TABLE inquirycomment CASCADE CONSTRAINTS;
--DROP TABLE inquirybbs CASCADE CONSTRAINTS;
--DROP TABLE partymember CASCADE CONSTRAINTS;
--DROP TABLE partybbs CASCADE CONSTRAINTS;
--DROP TABLE report CASCADE CONSTRAINTS;
--DROP TABLE subscription CASCADE CONSTRAINTS;
--DROP TABLE subfolder CASCADE CONSTRAINTS;
--DROP TABLE token CASCADE CONSTRAINTS;
--DROP TABLE ussrcomment CASCADE CONSTRAINTS;
--DROP TABLE ussrlike CASCADE CONSTRAINTS;
--DROP TABLE ussrbbs CASCADE CONSTRAINTS;
--DROP TABLE member CASCADE CONSTRAINTS;
--
--
--
--/* Drop Sequences */
--
--DROP SEQUENCE SEQ_bankaccount_accountno;
--DROP SEQUENCE SEQ_calendarinfo_calno;
--DROP SEQUENCE SEQ_chatfinal_cfno;
--DROP SEQUENCE SEQ_chat_chatno;
--DROP SEQUENCE SEQ_comment_cmno;
--DROP SEQUENCE SEQ_comment_comno;
--DROP SEQUENCE SEQ_file_fno;
--DROP SEQUENCE SEQ_filter_filterno;
--DROP SEQUENCE SEQ_inquirybbs_inqno;
--DROP SEQUENCE SEQ_inquirycomment_comno;
--DROP SEQUENCE SEQ_kakao_kakaono;
--DROP SEQUENCE SEQ_like_likeno;
--DROP SEQUENCE SEQ_naver_naverno;
--DROP SEQUENCE SEQ_partybbs_partyno;
--DROP SEQUENCE SEQ_partyconfirminfo_confirmno;
--DROP SEQUENCE SEQ_partymember_pmno;
--DROP SEQUENCE SEQ_replier_replyno;
--DROP SEQUENCE SEQ_report_reportno;
--DROP SEQUENCE SEQ_subfolder_sfno;
--DROP SEQUENCE SEQ_subscription_subno;
--DROP SEQUENCE SEQ_token_tokenno;
--DROP SEQUENCE SEQ_ussrbbs_ussrno;
--DROP SEQUENCE SEQ_ussrcomment_comno;
--DROP SEQUENCE SEQ_ussrlike_likeno;
--
--
--
--
/* Create Sequences */

CREATE SEQUENCE SEQ_bankaccount_accountno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_calendarinfo_calno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_chatfinal_cfno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_chat_chatno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_comment_cmno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_comment_comno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_file_fno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_filter_filterno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_inquirybbs_inqno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_inquirycomment_comno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_kakao_kakaono INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_like_likeno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_naver_naverno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_partybbs_partyno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_partyconfirminfo_confirmno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_partymember_pmno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_replier_replyno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_report_reportno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_subfolder_sfno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_subscription_subno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_token_tokenno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ussrbbs_ussrno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ussrcomment_comno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ussrlike_likeno INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE bankaccount
(
	accountno number NOT NULL,
	accountid varchar2(20) NOT NULL,
	bankname nvarchar2(20) NOT NULL,
	email varchar2(40) NOT NULL,
	PRIMARY KEY (accountno)
);


CREATE TABLE banktoken
(
	access_token nvarchar2(400) NOT NULL,
	email varchar2(40) NOT NULL,
	user_seq_no number,
	user_ci nvarchar2(120),
	PRIMARY KEY (access_token)
);


CREATE TABLE calendarinfo
(
	calno number NOT NULL,
	calsubtitle nvarchar2(50) NOT NULL,
	calsubdate date NOT NULL,
	email varchar2(40) NOT NULL,
	PRIMARY KEY (calno)
);


CREATE TABLE chat
(
	chatno number NOT NULL,
	partyno number NOT NULL,
	chatpartnerid varchar2(40) NOT NULL,
	email varchar2(40) NOT NULL,
	PRIMARY KEY (chatno)
);


CREATE TABLE chatmessage
(
	chatno number NOT NULL,
	messageoriginfilename nvarchar2(30) NOT NULL,
	messagefilename nvarchar2(40) NOT NULL
);


CREATE TABLE filter
(
	filterno number NOT NULL,
	filterword nvarchar2(20) NOT NULL,
	PRIMARY KEY (filterno)
);


CREATE TABLE inquirybbs
(
	inqno number NOT NULL,
	inqtitle nvarchar2(50) NOT NULL,
	inqcontent nvarchar2(2000) NOT NULL,
	inqpostdate date DEFAULT SYSDATE NOT NULL,
	inqoriginfilenames nvarchar2(120),
	inqrealfilenames nvarchar2(240),
	email varchar2(40) NOT NULL,
	PRIMARY KEY (inqno)
);


CREATE TABLE inquirycomment
(
	comno number NOT NULL,
	comcontent nvarchar2(1000) NOT NULL,
	compostdate date DEFAULT SYSDATE NOT NULL,
	comoriginfilename nvarchar2(50),
	comfilename nvarchar2(60),
	inqno number NOT NULL,
	email varchar2(40) NOT NULL,
	PRIMARY KEY (comno)
);


CREATE TABLE member
(
	email varchar2(40) NOT NULL,
	password varchar2(20),
	name nvarchar2(10) NOT NULL,
	nickname nvarchar2(20) NOT NULL UNIQUE,
	birthdate nvarchar2(12) NOT NULL,
	gender char(5) NOT NULL,
	tel varchar2(13) NOT NULL,
	usertype char(5) NOT NULL,
	preference varchar2(50),
	authority varchar2(10) NOT NULL,
	registdate date DEFAULT SYSDATE NOT NULL,
	oringinprofile nvarchar2(25),
	profile_ nvarchar2(30),
	PRIMARY KEY (email)
);


CREATE TABLE partybbs
(
	partyno number NOT NULL,
	partytile nvarchar2(50) NOT NULL,
	partycontent nvarchar2(2000) NOT NULL,
	partypostdate date DEFAULT SYSDATE NOT NULL,
	partymaxcapacity number(1) NOT NULL,
	partyactivation char(5) DEFAULT 'true' NOT NULL,
	partyallotmentprice number NOT NULL,
	partycategoryname nvarchar2(30) NOT NULL,
	partymembership nvarchar2(30) NOT NULL,
	email varchar2(40) NOT NULL,
	PRIMARY KEY (partyno)
);


CREATE TABLE partyconfirminfo
(
	confirmno number NOT NULL,
	confirmpartyno number NOT NULL,
	conversationid1 varchar2(40) NOT NULL,
	conversationid2 varchar2(40) NOT NULL,
	chatno number NOT NULL,
	confirm char(5) NOT NULL,
	PRIMARY KEY (confirmno)
);


CREATE TABLE partymember
(
	pmno number NOT NULL,
	partyno number NOT NULL,
	pmmember varchar2(40) NOT NULL,
	partyleader char(1),
	PRIMARY KEY (pmno)
);


CREATE TABLE report
(
	reportno number NOT NULL,
	reportbbsno number NOT NULL,
	reportbbstable varchar2(20) NOT NULL,
	reportcontent nvarchar2(600) NOT NULL,
	reporttype varchar2(10) NOT NULL,
	reportregistdate date DEFAULT SYSDATE NOT NULL,
	reportid varchar2(40) NOT NULL,
	email varchar2(40) NOT NULL,
	PRIMARY KEY (reportno)
);


CREATE TABLE subfolder
(
	sfno number NOT NULL,
	sfname nvarchar2(30) NOT NULL,
	email varchar2(40) NOT NULL,
	PRIMARY KEY (sfno)
);


CREATE TABLE subscription
(
	subno number NOT NULL,
	subservice nvarchar2(20) NOT NULL,
	paymentday date NOT NULL,
	money number NOT NULL,
	sfno number NOT NULL,
	PRIMARY KEY (subno)
);


CREATE TABLE token
(
	tokenno number NOT NULL,
	tokenissuer varchar2(5) NOT NULL,
	access_token varchar2(20) NOT NULL,
	expires_in number NOT NULL,
	refresh_token varchar2(20) NOT NULL,
	refresh_token_expires_in number NOT NULL,
	token_type varchar2(20) NOT NULL,
	email varchar2(40) NOT NULL,
	PRIMARY KEY (tokenno)
);


CREATE TABLE ussrbbs
(
	ussrno number NOT NULL,
	ussrtitle nvarchar2(50) NOT NULL,
	ussrcontent nvarchar2(2000) NOT NULL,
	ussrpostdate date DEFAULT SYSDATE NOT NULL,
	ussroriginfilenames nvarchar2(120),
	ussrrealfilenames nvarchar2(240),
	ussrcategoryname nvarchar2(30) NOT NULL,
	email varchar2(40) NOT NULL,
	PRIMARY KEY (ussrno)
);


CREATE TABLE ussrcomment
(
	comno number NOT NULL,
	comcontent nvarchar2(1000) NOT NULL,
	compostdate date DEFAULT SYSDATE NOT NULL,
	comoriginfilename nvarchar2(50),
	comfilename nvarchar2(60),
	ussrno number NOT NULL,
	email varchar2(40) NOT NULL,
	PRIMARY KEY (comno)
);


CREATE TABLE ussrlike
(
	likeno number NOT NULL,
	ussrno number NOT NULL,
	email varchar2(40) NOT NULL,
	PRIMARY KEY (likeno)
);



/* Create Foreign Keys */

ALTER TABLE chatmessage
	ADD FOREIGN KEY (chatno)
	REFERENCES chat (chatno)
;


ALTER TABLE partyconfirminfo
	ADD FOREIGN KEY (chatno)
	REFERENCES chat (chatno)
;


ALTER TABLE inquirycomment
	ADD FOREIGN KEY (inqno)
	REFERENCES inquirybbs (inqno)
;


ALTER TABLE bankaccount
	ADD FOREIGN KEY (email)
	REFERENCES member (email)
;


ALTER TABLE banktoken
	ADD FOREIGN KEY (email)
	REFERENCES member (email)
;


ALTER TABLE calendarinfo
	ADD FOREIGN KEY (email)
	REFERENCES member (email)
;


ALTER TABLE chat
	ADD FOREIGN KEY (email)
	REFERENCES member (email)
;


ALTER TABLE inquirybbs
	ADD FOREIGN KEY (email)
	REFERENCES member (email)
;


ALTER TABLE inquirycomment
	ADD FOREIGN KEY (email)
	REFERENCES member (email)
;


ALTER TABLE partybbs
	ADD FOREIGN KEY (email)
	REFERENCES member (email)
;


ALTER TABLE report
	ADD FOREIGN KEY (email)
	REFERENCES member (email)
;


ALTER TABLE subfolder
	ADD FOREIGN KEY (email)
	REFERENCES member (email)
;


ALTER TABLE token
	ADD FOREIGN KEY (email)
	REFERENCES member (email)
;


ALTER TABLE ussrbbs
	ADD FOREIGN KEY (email)
	REFERENCES member (email)
;


ALTER TABLE ussrcomment
	ADD FOREIGN KEY (email)
	REFERENCES member (email)
;


ALTER TABLE ussrlike
	ADD FOREIGN KEY (email)
	REFERENCES member (email)
;


ALTER TABLE chat
	ADD FOREIGN KEY (partyno)
	REFERENCES partybbs (partyno)
;


ALTER TABLE partymember
	ADD FOREIGN KEY (partyno)
	REFERENCES partybbs (partyno)
;


ALTER TABLE subscription
	ADD FOREIGN KEY (sfno)
	REFERENCES subfolder (sfno)
;


ALTER TABLE ussrcomment
	ADD FOREIGN KEY (ussrno)
	REFERENCES ussrbbs (ussrno)
;


ALTER TABLE ussrlike
	ADD FOREIGN KEY (ussrno)
	REFERENCES ussrbbs (ussrno)
;



