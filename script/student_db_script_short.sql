--------------------------------------------------------
--  File created - Monday-May-02-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type ADF_EX10_01_STUDENT
--------------------------------------------------------

  CREATE OR REPLACE TYPE "STUDENT"."ADF_EX10_01_STUDENT" AS OBJECT
 (STUDENT_ID	NUMBER
 ,SALUTATION	VARCHAR2(5)
 ,FIRST_NAME	VARCHAR2(25)
 ,LAST_NAME	VARCHAR2(25)
 ,PHONE	VARCHAR2(15)
 ,STREET_ADDRESS	VARCHAR2(50)
 ,ZIP	VARCHAR2(5)
 ,CITY	VARCHAR2(30)
 ,STATE	VARCHAR2(30)
 ,EMPLOYER	VARCHAR2(50)
 ,REGISTRATION_DATE	DATE
 ,MESSAGE VARCHAR2(2000)
 ,CONSTRUCTOR FUNCTION  ADF_EX10_01_STUDENT  RETURN SELF AS RESULT
 );

/
--------------------------------------------------------
--  DDL for Type ALERT
--------------------------------------------------------

  CREATE OR REPLACE TYPE "STUDENT"."ALERT" AS OBJECT
 (ALERT_ID	NUMBER
 ,CONSTRUCTOR FUNCTION  ALERT  RETURN SELF AS RESULT
 );

/
--------------------------------------------------------
--  DDL for Type FORMS_SYSTEM
--------------------------------------------------------

  CREATE OR REPLACE TYPE "STUDENT"."FORMS_SYSTEM" AS OBJECT
 (BLOCK_STATUS VARCHAR2(100),
    COORDINATION_OPERATION VARCHAR2(100),
    CURRENT_BLOCK VARCHAR2(100),
    CURRENT_DATETIME VARCHAR2(100),
    CURRENT_FORM VARCHAR2(100),
    CURRENT_ITEM VARCHAR2(100),
    CURRENT_VALUE VARCHAR2(100),
    CURSOR_BLOCK VARCHAR2(100),
    CURSOR_ITEM VARCHAR2(100),
    CURSOR_RECORD VARCHAR2(100),
    CURSOR_VALUE VARCHAR2(100),
    CUSTOM_ITEM_EVENT VARCHAR2(100),
    CUSTOM_ITEM_EVENT_PARAMETERS VARCHAR2(100),
    DATE_THRESHOLDDATE_THRESHOLD VARCHAR2(100),
    EFFECTIVE_DATE VARCHAR2(100),
    EVENT_WINDOW VARCHAR2(100),
    FORM_STATUS VARCHAR2(100),
    LAST_FORM VARCHAR2(100),
    LAST_QUERY VARCHAR2(100),
    LAST_RECORD VARCHAR2(100),
    MASTER_BLOCK VARCHAR2(100),
    MESSAGE_LEVEL VARCHAR2(100),
    MOUSE_BUTTON_PRESSED VARCHAR2(100),
    MOUSE_BUTTON_SHIFT_STATE VARCHAR2(100),
    MOUSE_CANVAS VARCHAR2(100),
    MOUSE_FORM VARCHAR2(100),
    MOUSE_ITEM VARCHAR2(100),
    MOUSE_RECORD VARCHAR2(100),
    MOUSE_RECORD_OFFSET VARCHAR2(100),
    MOUSE_X_POS VARCHAR2(100),
    MOUSE_Y_POS VARCHAR2(100),
    RECORD_STATUS VARCHAR2(100),
    SUPPRESS_WORKING VARCHAR2(100),
    TRIGGER_BLOCK VARCHAR2(100),
    TRIGGER_ITEM VARCHAR2(100),
    TRIGGER_RECORD VARCHAR2(100),
    DoDATEDo VARCHAR2(100),
    DoDATETIMEDo VARCHAR2(100),
    DoDBDATEDo VARCHAR2(100),
    DoDBDATETIMEDo VARCHAR2(100),
    DoDBTIMEDo VARCHAR2(100),
    DoTIMEDo VARCHAR2(100)
 ,CONSTRUCTOR FUNCTION  FORMS_SYSTEM  RETURN SELF AS RESULT
 );

/
--------------------------------------------------------
--  DDL for Type STUDENTOBJ
--------------------------------------------------------

  CREATE OR REPLACE TYPE "STUDENT"."STUDENTOBJ" AS OBJECT
 (student_id	VARCHAR2(500)
 ,first_name	VARCHAR2(500)
 ,last_name	VARCHAR2(500)
 ,phone	VARCHAR2(500)
 ,CONSTRUCTOR FUNCTION  STUDENTOBJ  RETURN SELF AS RESULT
 );

/
--------------------------------------------------------
--  DDL for Type STUDENTOBJ_LIST
--------------------------------------------------------

  CREATE OR REPLACE TYPE "STUDENT"."STUDENTOBJ_LIST" AS TABLE OF STUDENTOBJ;

/
--------------------------------------------------------
--  DDL for Sequence COURSE_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT"."COURSE_NO_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 457 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INSTRUCTOR_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT"."INSTRUCTOR_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 115 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PS_TXN_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT"."PS_TXN_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 50 START WITH 5401 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SECTION_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT"."SECTION_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 169 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STUDENT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT"."STUDENT_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 401 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table COURSE
--------------------------------------------------------

  CREATE TABLE "STUDENT"."COURSE" 
   (	"COURSE_NO" NUMBER(38,0), 
	"DESCRIPTION" VARCHAR2(50 BYTE), 
	"COST" NUMBER(9,2), 
	"PREREQUISITE" NUMBER(8,0), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "STUDENT"."COURSE"."COURSE_NO" IS 'The unique ID for a course.';
   COMMENT ON COLUMN "STUDENT"."COURSE"."DESCRIPTION" IS 'The full name for this course.';
   COMMENT ON COLUMN "STUDENT"."COURSE"."COST" IS 'The dollar amount charged for enrollment in this course.';
   COMMENT ON COLUMN "STUDENT"."COURSE"."PREREQUISITE" IS 'The ID number of the course which must be taken as a prerequisite to this course.';
   COMMENT ON COLUMN "STUDENT"."COURSE"."CREATED_BY" IS 'Audit column - indicates user who inserted data.';
   COMMENT ON COLUMN "STUDENT"."COURSE"."CREATED_DATE" IS 'Audit column - indicates date of insert.';
   COMMENT ON COLUMN "STUDENT"."COURSE"."MODIFIED_BY" IS 'Audit column - indicates who made last update.';
   COMMENT ON COLUMN "STUDENT"."COURSE"."MODIFIED_DATE" IS 'Audit column - date of last update.';
   COMMENT ON TABLE "STUDENT"."COURSE"  IS 'Information for a course.';
--------------------------------------------------------
--  DDL for Table ENROLLMENT
--------------------------------------------------------

  CREATE TABLE "STUDENT"."ENROLLMENT" 
   (	"STUDENT_ID" NUMBER(8,0), 
	"SECTION_ID" NUMBER(8,0), 
	"ENROLL_DATE" DATE, 
	"FINAL_GRADE" NUMBER(3,0), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "STUDENT"."ENROLLMENT"."STUDENT_ID" IS 'The unique ID for a student.';
   COMMENT ON COLUMN "STUDENT"."ENROLLMENT"."SECTION_ID" IS 'The unique ID for a section.';
   COMMENT ON COLUMN "STUDENT"."ENROLLMENT"."ENROLL_DATE" IS 'The date this student registered for this section.';
   COMMENT ON COLUMN "STUDENT"."ENROLLMENT"."FINAL_GRADE" IS 'The final grade given to this student for all work in this section (class).';
   COMMENT ON COLUMN "STUDENT"."ENROLLMENT"."CREATED_BY" IS 'Audit column - indicates user who inserted data.';
   COMMENT ON COLUMN "STUDENT"."ENROLLMENT"."CREATED_DATE" IS 'Audit column - indicates date of insert.';
   COMMENT ON COLUMN "STUDENT"."ENROLLMENT"."MODIFIED_BY" IS 'Audit column - indicates who made last update.';
   COMMENT ON COLUMN "STUDENT"."ENROLLMENT"."MODIFIED_DATE" IS 'Audit column - date of last update.';
   COMMENT ON TABLE "STUDENT"."ENROLLMENT"  IS 'Information for a student registered for a particular section (class).';
--------------------------------------------------------
--  DDL for Table GRADE
--------------------------------------------------------

  CREATE TABLE "STUDENT"."GRADE" 
   (	"STUDENT_ID" NUMBER(8,0), 
	"SECTION_ID" NUMBER(8,0), 
	"GRADE_TYPE_CODE" CHAR(2 BYTE), 
	"GRADE_CODE_OCCURRENCE" NUMBER(38,0), 
	"NUMERIC_GRADE" NUMBER(3,0) DEFAULT 0, 
	"COMMENTS" VARCHAR2(2000 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "STUDENT"."GRADE"."STUDENT_ID" IS 'The unique ID for the student.';
   COMMENT ON COLUMN "STUDENT"."GRADE"."SECTION_ID" IS 'The unique ID for a section.';
   COMMENT ON COLUMN "STUDENT"."GRADE"."GRADE_TYPE_CODE" IS 'The code which identifies a category of grade.';
   COMMENT ON COLUMN "STUDENT"."GRADE"."GRADE_CODE_OCCURRENCE" IS 'The sequence number of one grade type for one section. For example, there could be multiple assignments numbered 1, 2, 3, etc.';
   COMMENT ON COLUMN "STUDENT"."GRADE"."NUMERIC_GRADE" IS 'Numeric grade value, i.e. 70, 75.';
   COMMENT ON COLUMN "STUDENT"."GRADE"."COMMENTS" IS 'Instructor''s comments on this grade.';
   COMMENT ON COLUMN "STUDENT"."GRADE"."CREATED_BY" IS 'Audit column - indicates user who inserted data.';
   COMMENT ON COLUMN "STUDENT"."GRADE"."CREATED_DATE" IS 'Audit column - indicates date of insert.';
   COMMENT ON COLUMN "STUDENT"."GRADE"."MODIFIED_BY" IS 'Audit column - indicates who made last update.';
   COMMENT ON COLUMN "STUDENT"."GRADE"."MODIFIED_DATE" IS 'Audit column - date of last update.';
   COMMENT ON TABLE "STUDENT"."GRADE"  IS 'The individual grades a student received for a particular section(class).';
--------------------------------------------------------
--  DDL for Table GRADE_CONVERSION
--------------------------------------------------------

  CREATE TABLE "STUDENT"."GRADE_CONVERSION" 
   (	"LETTER_GRADE" VARCHAR2(2 BYTE), 
	"GRADE_POINT" NUMBER(3,2) DEFAULT 0, 
	"MAX_GRADE" NUMBER(3,0), 
	"MIN_GRADE" NUMBER(3,0), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "STUDENT"."GRADE_CONVERSION"."LETTER_GRADE" IS 'The unique grade as a letter (A, A-, B, B+, etc.).';
   COMMENT ON COLUMN "STUDENT"."GRADE_CONVERSION"."GRADE_POINT" IS 'The number grade on a scale from 0 (F) to 4 (A).';
   COMMENT ON COLUMN "STUDENT"."GRADE_CONVERSION"."MAX_GRADE" IS 'The highest grade number which makes this letter grade.';
   COMMENT ON COLUMN "STUDENT"."GRADE_CONVERSION"."MIN_GRADE" IS 'The lowest grade number which makes this letter grade.';
   COMMENT ON COLUMN "STUDENT"."GRADE_CONVERSION"."CREATED_BY" IS 'Audit column - indicates user who inserted data.';
   COMMENT ON COLUMN "STUDENT"."GRADE_CONVERSION"."CREATED_DATE" IS 'Audit column - indicates date of insert.';
   COMMENT ON COLUMN "STUDENT"."GRADE_CONVERSION"."MODIFIED_BY" IS 'Audit column - indicates who made last update.';
   COMMENT ON COLUMN "STUDENT"."GRADE_CONVERSION"."MODIFIED_DATE" IS 'Audit column - date of last update.';
   COMMENT ON TABLE "STUDENT"."GRADE_CONVERSION"  IS 'Converts a number grade to a letter grade.';
--------------------------------------------------------
--  DDL for Table GRADE_TYPE
--------------------------------------------------------

  CREATE TABLE "STUDENT"."GRADE_TYPE" 
   (	"GRADE_TYPE_CODE" CHAR(2 BYTE), 
	"DESCRIPTION" VARCHAR2(50 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE"."GRADE_TYPE_CODE" IS 'The unique code which identifies a category of grade, i.e. MT, HW.';
   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE"."DESCRIPTION" IS 'The description for this code, i.e. Midterm, Homework.';
   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE"."CREATED_BY" IS 'Audit column - indicates user who inserted data.';
   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE"."CREATED_DATE" IS 'Audit column - indicates date of insert.';
   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE"."MODIFIED_BY" IS 'Audit column - indicates who made last update.';
   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE"."MODIFIED_DATE" IS 'Audit column - date of last update.';
   COMMENT ON TABLE "STUDENT"."GRADE_TYPE"  IS 'Lookup table of a grade types (code) and its description.';
--------------------------------------------------------
--  DDL for Table GRADE_TYPE_WEIGHT
--------------------------------------------------------

  CREATE TABLE "STUDENT"."GRADE_TYPE_WEIGHT" 
   (	"SECTION_ID" NUMBER(8,0), 
	"GRADE_TYPE_CODE" CHAR(2 BYTE), 
	"NUMBER_PER_SECTION" NUMBER(3,0), 
	"PERCENT_OF_FINAL_GRADE" NUMBER(3,0), 
	"DROP_LOWEST" CHAR(1 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE_WEIGHT"."SECTION_ID" IS 'The unique section ID for a section.';
   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE_WEIGHT"."GRADE_TYPE_CODE" IS 'The code which identifies a category of grade.';
   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE_WEIGHT"."NUMBER_PER_SECTION" IS 'How many of these grade types can be used in this section.  That is, there may be 3 quizzes.';
   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE_WEIGHT"."PERCENT_OF_FINAL_GRADE" IS 'The precentage this category of grade contributes to the final grade.';
   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE_WEIGHT"."DROP_LOWEST" IS 'Is the lowest grade in this type removed when determining the final grade? (Y/N)';
   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE_WEIGHT"."CREATED_BY" IS 'Audit column - indicates user who inserted data.';
   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE_WEIGHT"."CREATED_DATE" IS 'Audit column - indicates date of insert.';
   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE_WEIGHT"."MODIFIED_BY" IS 'Audit column - indicates who made last update.';
   COMMENT ON COLUMN "STUDENT"."GRADE_TYPE_WEIGHT"."MODIFIED_DATE" IS 'Audit column - date of last update.';
   COMMENT ON TABLE "STUDENT"."GRADE_TYPE_WEIGHT"  IS 'Information on how the final grade for a particular section is computed.  For example, the midterm constitutes 50%, the quiz 10% and the final examination 40% of the final grade.';
--------------------------------------------------------
--  DDL for Table INSTRUCTOR
--------------------------------------------------------

  CREATE TABLE "STUDENT"."INSTRUCTOR" 
   (	"INSTRUCTOR_ID" NUMBER(8,0), 
	"SALUTATION" VARCHAR2(5 BYTE), 
	"FIRST_NAME" VARCHAR2(25 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"STREET_ADDRESS" VARCHAR2(50 BYTE), 
	"ZIP" VARCHAR2(5 BYTE), 
	"PHONE" VARCHAR2(15 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "STUDENT"."INSTRUCTOR"."INSTRUCTOR_ID" IS 'The unique ID for an instructor.';
   COMMENT ON COLUMN "STUDENT"."INSTRUCTOR"."SALUTATION" IS 'This instructor''s title (Mr., Ms., Dr., Rev., etc.)';
   COMMENT ON COLUMN "STUDENT"."INSTRUCTOR"."FIRST_NAME" IS 'This instructor''s first name.';
   COMMENT ON COLUMN "STUDENT"."INSTRUCTOR"."LAST_NAME" IS 'This instructor''s last name';
   COMMENT ON COLUMN "STUDENT"."INSTRUCTOR"."STREET_ADDRESS" IS 'This Instructor''s street address.';
   COMMENT ON COLUMN "STUDENT"."INSTRUCTOR"."ZIP" IS 'The unique zip code number for this instructor.';
   COMMENT ON COLUMN "STUDENT"."INSTRUCTOR"."PHONE" IS 'The phone number for this instructor including area code.';
   COMMENT ON COLUMN "STUDENT"."INSTRUCTOR"."CREATED_BY" IS 'Audit column - indicates user who inserted data.';
   COMMENT ON COLUMN "STUDENT"."INSTRUCTOR"."CREATED_DATE" IS 'Audit column - indicates date of insert.';
   COMMENT ON COLUMN "STUDENT"."INSTRUCTOR"."MODIFIED_BY" IS 'Audit column - indicates who made last update.';
   COMMENT ON COLUMN "STUDENT"."INSTRUCTOR"."MODIFIED_DATE" IS 'Audit column - date of last update.';
   COMMENT ON TABLE "STUDENT"."INSTRUCTOR"  IS 'Profile information for an instructor.';
--------------------------------------------------------
--  DDL for Table PS_TXN
--------------------------------------------------------

  CREATE TABLE "STUDENT"."PS_TXN" 
   (	"ID" NUMBER(20,0), 
	"PARENTID" NUMBER(20,0), 
	"COLLID" NUMBER(10,0), 
	"CONTENT" BLOB, 
	"CREATION_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("CONTENT") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table SECTION
--------------------------------------------------------

  CREATE TABLE "STUDENT"."SECTION" 
   (	"SECTION_ID" NUMBER(8,0), 
	"COURSE_NO" NUMBER(8,0), 
	"SECTION_NO" NUMBER(3,0), 
	"START_DATE_TIME" DATE, 
	"LOCATION" VARCHAR2(50 BYTE), 
	"INSTRUCTOR_ID" NUMBER(8,0), 
	"CAPACITY" NUMBER(3,0), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "STUDENT"."SECTION"."SECTION_ID" IS 'The unique ID for a section.';
   COMMENT ON COLUMN "STUDENT"."SECTION"."COURSE_NO" IS 'The course number for which this is a section.';
   COMMENT ON COLUMN "STUDENT"."SECTION"."SECTION_NO" IS 'The individual section number within this course.';
   COMMENT ON COLUMN "STUDENT"."SECTION"."START_DATE_TIME" IS 'The date and time on which this section meets.';
   COMMENT ON COLUMN "STUDENT"."SECTION"."LOCATION" IS 'The meeting room for the section.';
   COMMENT ON COLUMN "STUDENT"."SECTION"."INSTRUCTOR_ID" IS 'The ID number of the instructor who teaches this section.';
   COMMENT ON COLUMN "STUDENT"."SECTION"."CAPACITY" IS 'The maximum number of students allowed in this section.';
   COMMENT ON COLUMN "STUDENT"."SECTION"."CREATED_BY" IS 'Audit column - indicates user who inserted data.';
   COMMENT ON COLUMN "STUDENT"."SECTION"."CREATED_DATE" IS 'Audit column - indicates date of insert.';
   COMMENT ON COLUMN "STUDENT"."SECTION"."MODIFIED_BY" IS 'Audit column - indicates who made last update.';
   COMMENT ON COLUMN "STUDENT"."SECTION"."MODIFIED_DATE" IS 'Audit column - date of last update.';
   COMMENT ON TABLE "STUDENT"."SECTION"  IS 'Information for an individual section (class) of a particular course.';
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "STUDENT"."STUDENT" 
   (	"STUDENT_ID" NUMBER(8,0), 
	"SALUTATION" VARCHAR2(5 BYTE), 
	"FIRST_NAME" VARCHAR2(25 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"STREET_ADDRESS" VARCHAR2(50 BYTE), 
	"ZIP" VARCHAR2(5 BYTE), 
	"PHONE" VARCHAR2(15 BYTE), 
	"EMPLOYER" VARCHAR2(50 BYTE), 
	"REGISTRATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "STUDENT"."STUDENT"  IS 'Profile information for a student.';
--------------------------------------------------------
--  DDL for Table ZIPCODE
--------------------------------------------------------

  CREATE TABLE "STUDENT"."ZIPCODE" 
   (	"ZIP" VARCHAR2(5 BYTE), 
	"CITY" VARCHAR2(25 BYTE), 
	"STATE" VARCHAR2(2 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "STUDENT"."ZIPCODE"."ZIP" IS 'The zip code number, unique for a city and state.';
   COMMENT ON COLUMN "STUDENT"."ZIPCODE"."CITY" IS 'The city name for this zip code.';
   COMMENT ON COLUMN "STUDENT"."ZIPCODE"."STATE" IS 'The postal abbreviation for the US state.';
   COMMENT ON COLUMN "STUDENT"."ZIPCODE"."CREATED_BY" IS 'Audit column - indicates user who inserted data.';
   COMMENT ON COLUMN "STUDENT"."ZIPCODE"."CREATED_DATE" IS 'Audit column - indicates date of insert.';
   COMMENT ON COLUMN "STUDENT"."ZIPCODE"."MODIFIED_BY" IS 'Audit column - indicates who made last update.';
   COMMENT ON COLUMN "STUDENT"."ZIPCODE"."MODIFIED_DATE" IS 'Audit column - date of last update.';
   COMMENT ON TABLE "STUDENT"."ZIPCODE"  IS 'City, state and zip code information.';
--------------------------------------------------------
--  DDL for View V_EX01_01_STUDENT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "STUDENT"."V_EX01_01_STUDENT" ("STUDENT_ID", "SALUTATION", "FIRST_NAME", "LAST_NAME", "PHONE", "STREET_ADDRESS", "ZIP", "CITY", "STATE", "EMPLOYER", "REGISTRATION_DATE", "ENROLL_NOW", "ROWIDASPK") AS 
  select 
	student.student_id       		student_id,
	student.salutation       		salutation,
	student.first_name       		first_name,
	student.last_name        		last_name,
	student.phone            		phone,
	student.street_address   		street_address,
	student.zip              		zip,
	null                     		city,
	null                     		state,
	student.employer         		employer,
	student.registration_date		registration_date,
	null                     		enroll_now,
  student.rowid               rowidaspk
from student_test student;
--------------------------------------------------------
--  DDL for View V_EX10_01_STUDENT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "STUDENT"."V_EX10_01_STUDENT" ("STUDENT_ID", "SALUTATION", "FIRST_NAME", "LAST_NAME", "PHONE", "STREET_ADDRESS", "ZIP", "CITY", "STATE", "EMPLOYER", "REGISTRATION_DATE", "EXIT") AS 
  select student.student_id as student_id,
	student.salutation as salutation,
	student.first_name as first_name,
	student.last_name as last_name,
	student.phone as phone,
	student.street_address as street_address,
	student.zip as zip,
	null as city,
	null as state,
	student.employer as employer,
	student.registration_date as registration_date,
	null as exit
from student student;
--------------------------------------------------------
--  DDL for View V_QAFE_FORM1_COURSE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "STUDENT"."V_QAFE_FORM1_COURSE" ("PREREQUISITE", "COURSE_NO", "DESCRIPTION", "COST", "CREATED_BY", "CREATED_DATE", "MODIFIED_BY", "MODIFIED_DATE") AS 
  select 
	course.prerequisite 		prerequisite,
	course.course_no    		course_no,
	course.description  		description,
	course.cost         		cost,
	course.created_by   		created_by,
	course.created_date 		created_date,
	course.modified_by  		modified_by,
	course.modified_date		modified_date
from course course;
--------------------------------------------------------
--  DDL for View V_QAFE_FORM2_COURSE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "STUDENT"."V_QAFE_FORM2_COURSE" ("COURSE_NO", "DESCRIPTION", "COST", "PREREQUISITE", "CREATED_BY", "CREATED_DATE", "MODIFIED_BY", "MODIFIED_DATE") AS 
  select 
	course.course_no    		course_no,
	course.description  		description,
	course.cost         		cost,
	course.prerequisite 		prerequisite,
	course.created_by   		created_by,
	course.created_date 		created_date,
	course.modified_by  		modified_by,
	course.modified_date		modified_date
from course course;
--------------------------------------------------------
--  DDL for View V_QAFE_FORM2_INSTRUCTOR
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "STUDENT"."V_QAFE_FORM2_INSTRUCTOR" ("CREATED_BY", "FIRST_NAME", "LAST_NAME", "INSTRUCTOR_ID", "CREATED_DATE", "MODIFIED_BY", "MODIFIED_DATE", "SALUTATION", "STREET_ADDRESS", "ZIP", "PHONE") AS 
  select 
	instructor.created_by    		created_by,
	instructor.first_name    		first_name,
	instructor.last_name     		last_name,
	instructor.instructor_id 		instructor_id,
	instructor.created_date  		created_date,
	instructor.modified_by   		modified_by,
	instructor.modified_date 		modified_date,
	instructor.salutation    		salutation,
	instructor.street_address		street_address,
	instructor.zip           		zip,
	instructor.phone         		phone
from instructor instructor;
--------------------------------------------------------
--  DDL for View V_QAFE_FORM2_SECTION
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "STUDENT"."V_QAFE_FORM2_SECTION" ("SECTION_ID", "COURSE_NO", "SECTION_NO", "START_DATE_TIME", "LOCATION", "INSTRUCTOR_ID", "CAPACITY", "CREATED_BY", "CREATED_DATE", "MODIFIED_BY", "MODIFIED_DATE") AS 
  select 
	section.section_id     		section_id,
	section.course_no      		course_no,
	section.section_no     		section_no,
	section.start_date_time		start_date_time,
	section.location       		location,
	section.instructor_id  		instructor_id,
	section.capacity       		capacity,
	section.created_by     		created_by,
	section.created_date   		created_date,
	section.modified_by    		modified_by,
	section.modified_date  		modified_date
from section section;
--------------------------------------------------------
--  DDL for View V_QAFE_FORM2_STUDENT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "STUDENT"."V_QAFE_FORM2_STUDENT" ("STUDENT_ID", "SALUTATION", "REGISTRATION_DATE", "CREATED_BY", "CREATED_DATE", "MODIFIED_BY", "MODIFIED_DATE", "FIRST_NAME", "LAST_NAME", "STREET_ADDRESS", "ZIP", "PHONE", "EMPLOYER") AS 
  select 
	student.student_id       		student_id,
	student.salutation       		salutation,
	student.registration_date		registration_date,
	student.created_by       		created_by,
	student.created_date     		created_date,
	student.modified_by      		modified_by,
	student.modified_date    		modified_date,
	student.first_name       		first_name,
	student.last_name        		last_name,
	student.street_address   		street_address,
	student.zip              		zip,
	student.phone            		phone,
	student.employer         		employer
from student student;
REM INSERTING into STUDENT.COURSE
SET DEFINE OFF;
Insert into STUDENT.COURSE (COURSE_NO,DESCRIPTION,COST,PREREQUISITE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (456,'Dutch Grammar',40,null,'Qafe',to_date('29-APR-16','DD-MON-RR'),'Qafe',to_date('29-APR-16','DD-MON-RR'));
Insert into STUDENT.COURSE (COURSE_NO,DESCRIPTION,COST,PREREQUISITE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (454,'English Grammar',30,null,'Qafe',to_date('29-APR-16','DD-MON-RR'),'Qafe',to_date('29-APR-16','DD-MON-RR'));
Insert into STUDENT.COURSE (COURSE_NO,DESCRIPTION,COST,PREREQUISITE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (455,'Mathematics',20,null,'Qafe',to_date('29-APR-16','DD-MON-RR'),'Qafe',to_date('29-APR-16','DD-MON-RR'));
REM INSERTING into STUDENT.ENROLLMENT
SET DEFINE OFF;
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (215,146,to_date('13-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (215,156,to_date('13-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (216,154,to_date('13-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (217,86,to_date('13-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (218,90,to_date('13-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (220,119,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (221,104,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (223,104,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (223,119,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (224,89,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (225,89,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (227,89,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (227,96,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (228,148,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (229,111,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (230,86,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (232,91,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (232,147,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (232,149,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (233,90,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (233,112,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (234,137,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (235,83,to_date('16-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (214,156,to_date('13-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
Insert into STUDENT.ENROLLMENT (STUDENT_ID,SECTION_ID,ENROLL_DATE,FINAL_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (215,135,to_date('13-FEB-99','DD-MON-RR'),null,'DSCHERER',to_date('14-DEC-99','DD-MON-RR'),'BROSENZW',to_date('05-JAN-00','DD-MON-RR'));
REM INSERTING into STUDENT.GRADE
SET DEFINE OFF;
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,133,'PA',6,80,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,133,'PA',7,70,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,133,'PA',8,70,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,133,'PA',9,80,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,133,'PA',10,90,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,133,'PA',11,85,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,133,'PA',12,75,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,133,'PJ',1,90,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,142,'FI',1,85,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,142,'HM',1,90,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,142,'HM',2,99,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,142,'HM',3,82,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,142,'HM',4,82,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,142,'MT',1,90,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,142,'PA',1,85,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,142,'QZ',1,90,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,142,'QZ',2,84,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,142,'QZ',3,97,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (111,142,'QZ',4,97,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (112,95,'FI',1,84,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (112,95,'HM',1,83,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (112,95,'HM',2,83,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (112,95,'HM',3,83,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (112,95,'HM',4,73,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (112,95,'MT',1,77,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (112,95,'PA',1,90,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (112,95,'QZ',1,91,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (112,95,'QZ',2,90,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (178,135,'QZ',1,91,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (178,135,'QZ',2,75,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (178,135,'QZ',3,98,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
Insert into STUDENT.GRADE (STUDENT_ID,SECTION_ID,GRADE_TYPE_CODE,GRADE_CODE_OCCURRENCE,NUMERIC_GRADE,COMMENTS,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (178,135,'QZ',4,98,null,'CBRENNAN',to_date('11-FEB-00','DD-MON-RR'),'JAYCAF',to_date('11-FEB-00','DD-MON-RR'));
REM INSERTING into STUDENT.GRADE_CONVERSION
SET DEFINE OFF;
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('A ',4,96,93,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('A+',4.3,100,97,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('A-',3.7,92,90,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('AU',0,1,1,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('B ',3,86,83,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('B+',3.3,89,87,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('B-',2.7,82,80,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('C ',2,76,73,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('C+',2.3,79,77,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('C-',1.7,72,70,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('D ',1,66,63,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('D+',1.3,69,67,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('D-',0.7,62,60,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('F ',0,59,2,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
Insert into STUDENT.GRADE_CONVERSION (LETTER_GRADE,GRADE_POINT,MAX_GRADE,MIN_GRADE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('IN',0,0,0,'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'),'BMOTIVAL',to_date('01-JAN-93','DD-MON-RR'));
REM INSERTING into STUDENT.GRADE_TYPE
SET DEFINE OFF;
Insert into STUDENT.GRADE_TYPE (GRADE_TYPE_CODE,DESCRIPTION,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('FI','Final','MCAFFREY',to_date('31-DEC-98','DD-MON-RR'),'MCAFFREY',to_date('31-DEC-98','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE (GRADE_TYPE_CODE,DESCRIPTION,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('HM','Homework','MCAFFREY',to_date('31-DEC-98','DD-MON-RR'),'MCAFFREY',to_date('31-DEC-98','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE (GRADE_TYPE_CODE,DESCRIPTION,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('MT','Midterm','MCAFFREY',to_date('31-DEC-98','DD-MON-RR'),'MCAFFREY',to_date('31-DEC-98','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE (GRADE_TYPE_CODE,DESCRIPTION,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('PA','Participation','MCAFFREY',to_date('31-DEC-98','DD-MON-RR'),'MCAFFREY',to_date('31-DEC-98','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE (GRADE_TYPE_CODE,DESCRIPTION,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('PJ','Project','MCAFFREY',to_date('31-DEC-98','DD-MON-RR'),'MCAFFREY',to_date('31-DEC-98','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE (GRADE_TYPE_CODE,DESCRIPTION,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('QZ','Quiz','MCAFFREY',to_date('31-DEC-98','DD-MON-RR'),'MCAFFREY',to_date('31-DEC-98','DD-MON-RR'));
REM INSERTING into STUDENT.GRADE_TYPE_WEIGHT
SET DEFINE OFF;
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (106,'HM',4,20,'Y','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (106,'MT',1,20,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (106,'PA',1,10,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (106,'QZ',4,20,'Y','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (107,'FI',1,50,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (107,'HM',4,10,'Y','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (107,'MT',1,25,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (107,'PA',1,5,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (107,'QZ',2,10,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (108,'FI',1,50,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (108,'HM',4,10,'Y','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (108,'MT',1,25,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (108,'PA',1,5,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (108,'QZ',2,10,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (109,'FI',1,50,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (109,'HM',4,10,'Y','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (109,'MT',1,25,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (109,'PA',1,5,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (109,'QZ',2,10,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (110,'FI',1,30,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (110,'HM',4,20,'Y','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (110,'MT',1,20,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (105,'QZ',2,10,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
Insert into STUDENT.GRADE_TYPE_WEIGHT (SECTION_ID,GRADE_TYPE_CODE,NUMBER_PER_SECTION,PERCENT_OF_FINAL_GRADE,DROP_LOWEST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (106,'FI',1,30,'N','CBRENNAN',to_date('09-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-APR-99','DD-MON-RR'));
REM INSERTING into STUDENT.INSTRUCTOR
SET DEFINE OFF;
Insert into STUDENT.INSTRUCTOR (INSTRUCTOR_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (101,'Mr','Fernand','Hanks','100 East 87th','11510','2125551212','ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'QAFE',to_date('29-APR-16','DD-MON-RR'));
Insert into STUDENT.INSTRUCTOR (INSTRUCTOR_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (102,'Mr','Tom','Wojick','518 West 120th','10025','2125551212','ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'ESILVEST',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.INSTRUCTOR (INSTRUCTOR_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (103,'Ms','Nina','Schorin','210 West 101st','10025','2125551212','ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'ESILVEST',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.INSTRUCTOR (INSTRUCTOR_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (104,'Mr','Gary','Pertez','34 Sixth Ave','10035','2125551212','ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'ESILVEST',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.INSTRUCTOR (INSTRUCTOR_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (105,'Ms','Anita','Morris','34 Maiden Lane','10015','2125551212','ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'ESILVEST',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.INSTRUCTOR (INSTRUCTOR_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (106,'Rev','Todd','Smythe','210 West 101st','10025','2125551212','ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'ESILVEST',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.INSTRUCTOR (INSTRUCTOR_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (107,'Dr','Marilyn','Frantzen','254 Bleeker','10005','2125551212','ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'ESILVEST',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.INSTRUCTOR (INSTRUCTOR_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (108,'Mr','Charles','Lowry','518 West 120th','10025','2125551213','ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'ESILVEST',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.INSTRUCTOR (INSTRUCTOR_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (109,'Hon','Rick','Chow','57 10th Avenue','10015','2125551212','ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'QAFE',to_date('29-APR-16','DD-MON-RR'));
Insert into STUDENT.INSTRUCTOR (INSTRUCTOR_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (114,'Mr.','Jesse','Thomasson','1 Main Streeet','10015','0612345678','QAFE',to_date('29-APR-16','DD-MON-RR'),'QAFE',to_date('29-APR-16','DD-MON-RR'));
REM INSERTING into STUDENT.PS_TXN
SET DEFINE OFF;
Insert into STUDENT.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,4401,to_date('19-NOV-15','DD-MON-RR'));
Insert into STUDENT.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,1,to_date('15-JAN-14','DD-MON-RR'));
Insert into STUDENT.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,1051,to_date('18-SEP-15','DD-MON-RR'));
Insert into STUDENT.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,2301,to_date('23-SEP-15','DD-MON-RR'));
Insert into STUDENT.PS_TXN (ID,PARENTID,COLLID,CREATION_DATE) values (1,-1,3351,to_date('05-OCT-15','DD-MON-RR'));
REM INSERTING into STUDENT.SECTION
SET DEFINE OFF;
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (79,350,3,to_date('14-APR-99','DD-MON-RR'),'L509',107,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (80,10,2,to_date('24-APR-99','DD-MON-RR'),'L214',102,15,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (81,20,2,to_date('24-JUL-99','DD-MON-RR'),'L210',103,15,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (83,20,7,to_date('11-JUN-99','DD-MON-RR'),'L509',105,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (84,20,8,to_date('11-JUN-99','DD-MON-RR'),'L210',106,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (85,25,1,to_date('14-JUL-99','DD-MON-RR'),'M311',107,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (86,25,2,to_date('10-JUN-99','DD-MON-RR'),'L210',108,15,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (87,25,3,to_date('14-APR-99','DD-MON-RR'),'L507',101,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (90,25,6,to_date('12-JUN-99','DD-MON-RR'),'L509',104,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (91,25,7,to_date('12-JUN-99','DD-MON-RR'),'L210',105,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (92,25,8,to_date('13-JUN-99','DD-MON-RR'),'L509',106,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (93,25,9,to_date('13-JUN-99','DD-MON-RR'),'L507',107,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (94,146,2,to_date('24-JUL-99','DD-MON-RR'),'L507',102,15,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (95,147,1,to_date('14-APR-99','DD-MON-RR'),'L509',103,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (96,204,1,to_date('14-APR-99','DD-MON-RR'),'L210',104,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (98,220,1,to_date('15-APR-99','DD-MON-RR'),'L509',106,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (100,230,2,to_date('09-JUN-99','DD-MON-RR'),'L214',108,15,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (101,240,1,to_date('16-APR-99','DD-MON-RR'),'L509',101,10,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (103,310,1,to_date('29-APR-99','DD-MON-RR'),'L507',103,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (104,330,1,to_date('14-JUL-99','DD-MON-RR'),'L511',104,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (106,350,2,to_date('03-JUN-99','DD-MON-RR'),'L214',106,15,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (168,454,4,to_date('28-MAY-16','DD-MON-RR'),'Presentation Room',107,200,'QAFE',to_date('29-APR-16','DD-MON-RR'),'QAFE',to_date('29-APR-16','DD-MON-RR'));
REM INSERTING into STUDENT.STUDENT
SET DEFINE OFF;
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (217,'Mr.','Jeffrey','Citron','PO Box 1091','07024','201-555-5555','Mitsukoshi USA Inc.',to_date('05-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('05-FEB-99','DD-MON-RR'),'BROSENZW',to_date('08-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (221,'Ms.','Sheradha','Malone2','91-41 23rd Ave. 1st Floor','11369','718-555-5555','Board Utilities',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (223,'Mr.','Frank','Pace','13 Burlington Dr.','10025','203-555-5555','Board Utilities',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (224,'Mr.','M.','Diokno','44-20 64th St #6L','11377','718-555-5555','Natnl Bank Hungary',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (225,'Mr.','Edgar','Moffat','172 Lincoln St','07042','201-555-5555','OPEIU',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (227,'Ms.','Bessie','Heedles','932 Carnegie Ave.','07060','201-555-5555','Ogilvy & Bernard',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (228,'Mr.','Mohamed','Valentine','35-33 83rd St. #D 12','11372','718-555-5555','Omni Devel.& Markt.',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (229,'Ms.','Adrienne','Lopez','755 Anderson Ave. #3-25','07010','201-555-5555','P&S 3-401',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (238,'Mr.5','Abe','Snowe','1620 Cambridge Rd.','48104','517-555-5555','Seligman Harris',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (240,'Ms.','Tom','Scrittorale','27 Arrowhead Wy.','06820','203-555-5555','Sibney Advertising',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (241,'Mr.2','Joseph','Yourish','185 St. Marks Ave.','11238','718-555-5555','Simpson, Thatcher',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (242,'Mr.','Daniel','Ordes','117 Knapp Ave.','07011','201-555-5555','St.Colg.Optometry',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (243,'Mr.','Bharat','Roberts','175 Oakland Ave.','07306','201-555-5555','Steinhauer,Sheiman',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (244,'Ms.','Sarah','Wilson','457 77th St.','11209','718-555-5555','Thacher, Proffitt',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (245,'Mr.','Irv','Dalvi','1504 Harmon Cove Towers','07094','201-555-5555','Thacher, Proffitt',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (247,'Mr.','Frank','Bunnell','43 Lindstrom Rd.','06902','203-555-5555','The Plaza Penn Hotel',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (248,'Ms.','Tamara','Zapulla','818 E. Ridgewood Ave.','07450','201-555-5555','Thyssen Stuttgart',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (250,'Mr.','Evan','Fielding','194-07 58th Ave.','11365','718-555-5555','Toronto Neuenstadt',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (251,'Ms.','Catherine','Frangopoulos','2270 41st Street','11105','718-555-5555','U.N.D.P.',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (252,'Ms.','Nana','Barogh','4131 Hampton St.','11373','718-555-5555','U.N.D.P.',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (214,'Ms.','Yvonne','Williams','80-20 4th Ave.  #A3','11209','718-555-5555','Iarriott Hotels',to_date('05-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('05-FEB-99','DD-MON-RR'),'BROSENZW',to_date('08-FEB-99','DD-MON-RR'));
Insert into STUDENT.STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (215,'Mr.','Reynaldo','Chatman','9925 42nd Ave. #3B','11368','718-555-5555','Iarriott Hotels',to_date('05-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('05-FEB-99','DD-MON-RR'),'BROSENZW',to_date('08-FEB-99','DD-MON-RR'));
REM INSERTING into STUDENT.ZIPCODE
SET DEFINE OFF;
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11101','Long Island City','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11102','Astoria','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11103','Astoria','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11104','Sunnyside','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11105','Astoria','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11106','Long Island City','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11201','Brooklyn','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11203','Brooklyn','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11204','Brooklyn','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11205','Brooklyn','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11206','Brooklyn','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11207','Brooklyn','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11208','Brooklyn','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11209','Brooklyn','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11210','Brooklyn','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11211','Brooklyn','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11212','Brooklyn','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11213','Brooklyn','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11214','Brooklyn','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11215','Brooklyn','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
Insert into STUDENT.ZIPCODE (ZIP,CITY,STATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('11050','Fort Washington','NY','AMORRISO',to_date('03-AUG-99','DD-MON-RR'),'AMORRISO',to_date('24-NOV-99','DD-MON-RR'));
REM INSERTING into STUDENT.V_EX01_01_STUDENT
SET DEFINE OFF;
REM INSERTING into STUDENT.V_EX10_01_STUDENT
SET DEFINE OFF;
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (217,'Mr.','Jeffrey','Citron','201-555-5555','PO Box 1091','07024',null,null,'Mitsukoshi USA Inc.',to_date('05-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (221,'Ms.','Sheradha','Malone2','718-555-5555','91-41 23rd Ave. 1st Floor','11369',null,null,'Board Utilities',to_date('08-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (223,'Mr.','Frank','Pace','203-555-5555','13 Burlington Dr.','10025',null,null,'Board Utilities',to_date('08-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (224,'Mr.','M.','Diokno','718-555-5555','44-20 64th St #6L','11377',null,null,'Natnl Bank Hungary',to_date('08-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (225,'Mr.','Edgar','Moffat','201-555-5555','172 Lincoln St','07042',null,null,'OPEIU',to_date('08-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (227,'Ms.','Bessie','Heedles','201-555-5555','932 Carnegie Ave.','07060',null,null,'Ogilvy & Bernard',to_date('08-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (228,'Mr.','Mohamed','Valentine','718-555-5555','35-33 83rd St. #D 12','11372',null,null,'Omni Devel.& Markt.',to_date('08-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (229,'Ms.','Adrienne','Lopez','201-555-5555','755 Anderson Ave. #3-25','07010',null,null,'P&S 3-401',to_date('08-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (238,'Mr.5','Abe','Snowe','517-555-5555','1620 Cambridge Rd.','48104',null,null,'Seligman Harris',to_date('08-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (240,'Ms.','Tom','Scrittorale','203-555-5555','27 Arrowhead Wy.','06820',null,null,'Sibney Advertising',to_date('11-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (241,'Mr.2','Joseph','Yourish','718-555-5555','185 St. Marks Ave.','11238',null,null,'Simpson, Thatcher',to_date('11-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (242,'Mr.','Daniel','Ordes','201-555-5555','117 Knapp Ave.','07011',null,null,'St.Colg.Optometry',to_date('11-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (243,'Mr.','Bharat','Roberts','201-555-5555','175 Oakland Ave.','07306',null,null,'Steinhauer,Sheiman',to_date('11-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (212,'Ms.','Barbara','Robichaud','212-555-5555','132 S Mountain View Dr.','10965',null,null,'Man.School Music',to_date('05-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (214,'Ms.','Yvonne','Williams','718-555-5555','80-20 4th Ave.  #A3','11209',null,null,'Iarriott Hotels',to_date('05-FEB-99','DD-MON-RR'),null);
Insert into STUDENT.V_EX10_01_STUDENT (STUDENT_ID,SALUTATION,FIRST_NAME,LAST_NAME,PHONE,STREET_ADDRESS,ZIP,CITY,STATE,EMPLOYER,REGISTRATION_DATE,EXIT) values (215,'Mr.','Reynaldo','Chatman','718-555-5555','9925 42nd Ave. #3B','11368',null,null,'Iarriott Hotels',to_date('05-FEB-99','DD-MON-RR'),null);
REM INSERTING into STUDENT.V_QAFE_FORM1_COURSE
SET DEFINE OFF;
Insert into STUDENT.V_QAFE_FORM1_COURSE (PREREQUISITE,COURSE_NO,DESCRIPTION,COST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (null,456,'Dutch Grammar',40,'Qafe',to_date('29-APR-16','DD-MON-RR'),'Qafe',to_date('29-APR-16','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM1_COURSE (PREREQUISITE,COURSE_NO,DESCRIPTION,COST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (null,454,'English Grammar',30,'Qafe',to_date('29-APR-16','DD-MON-RR'),'Qafe',to_date('29-APR-16','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM1_COURSE (PREREQUISITE,COURSE_NO,DESCRIPTION,COST,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (null,455,'Mathematics',20,'Qafe',to_date('29-APR-16','DD-MON-RR'),'Qafe',to_date('29-APR-16','DD-MON-RR'));
REM INSERTING into STUDENT.V_QAFE_FORM2_COURSE
SET DEFINE OFF;
Insert into STUDENT.V_QAFE_FORM2_COURSE (COURSE_NO,DESCRIPTION,COST,PREREQUISITE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (456,'Dutch Grammar',40,null,'Qafe',to_date('29-APR-16','DD-MON-RR'),'Qafe',to_date('29-APR-16','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_COURSE (COURSE_NO,DESCRIPTION,COST,PREREQUISITE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (454,'English Grammar',30,null,'Qafe',to_date('29-APR-16','DD-MON-RR'),'Qafe',to_date('29-APR-16','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_COURSE (COURSE_NO,DESCRIPTION,COST,PREREQUISITE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (455,'Mathematics',20,null,'Qafe',to_date('29-APR-16','DD-MON-RR'),'Qafe',to_date('29-APR-16','DD-MON-RR'));
REM INSERTING into STUDENT.V_QAFE_FORM2_INSTRUCTOR
SET DEFINE OFF;
Insert into STUDENT.V_QAFE_FORM2_INSTRUCTOR (CREATED_BY,FIRST_NAME,LAST_NAME,INSTRUCTOR_ID,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,SALUTATION,STREET_ADDRESS,ZIP,PHONE) values ('ESILVEST','Fernand','Hanks',101,to_date('02-JAN-99','DD-MON-RR'),'QAFE',to_date('29-APR-16','DD-MON-RR'),'Mr','100 East 87th','11510','2125551212');
Insert into STUDENT.V_QAFE_FORM2_INSTRUCTOR (CREATED_BY,FIRST_NAME,LAST_NAME,INSTRUCTOR_ID,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,SALUTATION,STREET_ADDRESS,ZIP,PHONE) values ('ESILVEST','Tom','Wojick',102,to_date('02-JAN-99','DD-MON-RR'),'ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'Mr','518 West 120th','10025','2125551212');
Insert into STUDENT.V_QAFE_FORM2_INSTRUCTOR (CREATED_BY,FIRST_NAME,LAST_NAME,INSTRUCTOR_ID,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,SALUTATION,STREET_ADDRESS,ZIP,PHONE) values ('ESILVEST','Nina','Schorin',103,to_date('02-JAN-99','DD-MON-RR'),'ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'Ms','210 West 101st','10025','2125551212');
Insert into STUDENT.V_QAFE_FORM2_INSTRUCTOR (CREATED_BY,FIRST_NAME,LAST_NAME,INSTRUCTOR_ID,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,SALUTATION,STREET_ADDRESS,ZIP,PHONE) values ('ESILVEST','Gary','Pertez',104,to_date('02-JAN-99','DD-MON-RR'),'ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'Mr','34 Sixth Ave','10035','2125551212');
Insert into STUDENT.V_QAFE_FORM2_INSTRUCTOR (CREATED_BY,FIRST_NAME,LAST_NAME,INSTRUCTOR_ID,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,SALUTATION,STREET_ADDRESS,ZIP,PHONE) values ('ESILVEST','Anita','Morris',105,to_date('02-JAN-99','DD-MON-RR'),'ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'Ms','34 Maiden Lane','10015','2125551212');
Insert into STUDENT.V_QAFE_FORM2_INSTRUCTOR (CREATED_BY,FIRST_NAME,LAST_NAME,INSTRUCTOR_ID,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,SALUTATION,STREET_ADDRESS,ZIP,PHONE) values ('ESILVEST','Todd','Smythe',106,to_date('02-JAN-99','DD-MON-RR'),'ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'Rev','210 West 101st','10025','2125551212');
Insert into STUDENT.V_QAFE_FORM2_INSTRUCTOR (CREATED_BY,FIRST_NAME,LAST_NAME,INSTRUCTOR_ID,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,SALUTATION,STREET_ADDRESS,ZIP,PHONE) values ('ESILVEST','Marilyn','Frantzen',107,to_date('02-JAN-99','DD-MON-RR'),'ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'Dr','254 Bleeker','10005','2125551212');
Insert into STUDENT.V_QAFE_FORM2_INSTRUCTOR (CREATED_BY,FIRST_NAME,LAST_NAME,INSTRUCTOR_ID,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,SALUTATION,STREET_ADDRESS,ZIP,PHONE) values ('ESILVEST','Charles','Lowry',108,to_date('02-JAN-99','DD-MON-RR'),'ESILVEST',to_date('02-JAN-99','DD-MON-RR'),'Mr','518 West 120th','10025','2125551213');
Insert into STUDENT.V_QAFE_FORM2_INSTRUCTOR (CREATED_BY,FIRST_NAME,LAST_NAME,INSTRUCTOR_ID,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,SALUTATION,STREET_ADDRESS,ZIP,PHONE) values ('ESILVEST','Rick','Chow',109,to_date('02-JAN-99','DD-MON-RR'),'QAFE',to_date('29-APR-16','DD-MON-RR'),'Hon','57 10th Avenue','10015','2125551212');
Insert into STUDENT.V_QAFE_FORM2_INSTRUCTOR (CREATED_BY,FIRST_NAME,LAST_NAME,INSTRUCTOR_ID,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,SALUTATION,STREET_ADDRESS,ZIP,PHONE) values ('QAFE','Jesse','Thomasson',114,to_date('29-APR-16','DD-MON-RR'),'QAFE',to_date('29-APR-16','DD-MON-RR'),'Mr.','1 Main Streeet','10015','0612345678');
REM INSERTING into STUDENT.V_QAFE_FORM2_SECTION
SET DEFINE OFF;
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (79,350,3,to_date('14-APR-99','DD-MON-RR'),'L509',107,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (80,10,2,to_date('24-APR-99','DD-MON-RR'),'L214',102,15,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (81,20,2,to_date('24-JUL-99','DD-MON-RR'),'L210',103,15,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (83,20,7,to_date('11-JUN-99','DD-MON-RR'),'L509',105,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (84,20,8,to_date('11-JUN-99','DD-MON-RR'),'L210',106,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (85,25,1,to_date('14-JUL-99','DD-MON-RR'),'M311',107,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (86,25,2,to_date('10-JUN-99','DD-MON-RR'),'L210',108,15,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (87,25,3,to_date('14-APR-99','DD-MON-RR'),'L507',101,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (90,25,6,to_date('12-JUN-99','DD-MON-RR'),'L509',104,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (91,25,7,to_date('12-JUN-99','DD-MON-RR'),'L210',105,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (92,25,8,to_date('13-JUN-99','DD-MON-RR'),'L509',106,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (93,25,9,to_date('13-JUN-99','DD-MON-RR'),'L507',107,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (94,146,2,to_date('24-JUL-99','DD-MON-RR'),'L507',102,15,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (95,147,1,to_date('14-APR-99','DD-MON-RR'),'L509',103,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (96,204,1,to_date('14-APR-99','DD-MON-RR'),'L210',104,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (98,220,1,to_date('15-APR-99','DD-MON-RR'),'L509',106,25,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (100,230,2,to_date('09-JUN-99','DD-MON-RR'),'L214',108,15,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (101,240,1,to_date('16-APR-99','DD-MON-RR'),'L509',101,10,'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'),'CBRENNAN',to_date('02-JAN-99','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (167,454,3,to_date('14-MAY-16','DD-MON-RR'),'Presentation Room',106,200,'QAFE',to_date('29-APR-16','DD-MON-RR'),'QAFE',to_date('29-APR-16','DD-MON-RR'));
Insert into STUDENT.V_QAFE_FORM2_SECTION (SECTION_ID,COURSE_NO,SECTION_NO,START_DATE_TIME,LOCATION,INSTRUCTOR_ID,CAPACITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (168,454,4,to_date('28-MAY-16','DD-MON-RR'),'Presentation Room',107,200,'QAFE',to_date('29-APR-16','DD-MON-RR'),'QAFE',to_date('29-APR-16','DD-MON-RR'));
REM INSERTING into STUDENT.V_QAFE_FORM2_STUDENT
SET DEFINE OFF;
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (217,'Mr.',to_date('05-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('05-FEB-99','DD-MON-RR'),'BROSENZW',to_date('08-FEB-99','DD-MON-RR'),'Jeffrey','Citron','PO Box 1091','07024','201-555-5555','Mitsukoshi USA Inc.');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (221,'Ms.',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'),'Sheradha','Malone2','91-41 23rd Ave. 1st Floor','11369','718-555-5555','Board Utilities');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (223,'Mr.',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'),'Frank','Pace','13 Burlington Dr.','10025','203-555-5555','Board Utilities');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (224,'Mr.',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'),'M.','Diokno','44-20 64th St #6L','11377','718-555-5555','Natnl Bank Hungary');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (225,'Mr.',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'),'Edgar','Moffat','172 Lincoln St','07042','201-555-5555','OPEIU');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (227,'Ms.',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'),'Bessie','Heedles','932 Carnegie Ave.','07060','201-555-5555','Ogilvy & Bernard');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (228,'Mr.',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'),'Mohamed','Valentine','35-33 83rd St. #D 12','11372','718-555-5555','Omni Devel.& Markt.');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (229,'Ms.',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'),'Adrienne','Lopez','755 Anderson Ave. #3-25','07010','201-555-5555','P&S 3-401');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (238,'Mr.5',to_date('08-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('08-FEB-99','DD-MON-RR'),'BROSENZW',to_date('11-FEB-99','DD-MON-RR'),'Abe','Snowe','1620 Cambridge Rd.','48104','517-555-5555','Seligman Harris');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (240,'Ms.',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'),'Tom','Scrittorale','27 Arrowhead Wy.','06820','203-555-5555','Sibney Advertising');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (241,'Mr.2',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'),'Joseph','Yourish','185 St. Marks Ave.','11238','718-555-5555','Simpson, Thatcher');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (242,'Mr.',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'),'Daniel','Ordes','117 Knapp Ave.','07011','201-555-5555','St.Colg.Optometry');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (243,'Mr.',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'),'Bharat','Roberts','175 Oakland Ave.','07306','201-555-5555','Steinhauer,Sheiman');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (244,'Ms.',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'),'Sarah','Wilson','457 77th St.','11209','718-555-5555','Thacher, Proffitt');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (245,'Mr.',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'),'Irv','Dalvi','1504 Harmon Cove Towers','07094','201-555-5555','Thacher, Proffitt');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (247,'Mr.',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'),'Frank','Bunnell','43 Lindstrom Rd.','06902','203-555-5555','The Plaza Penn Hotel');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (248,'Ms.',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'),'Tamara','Zapulla','818 E. Ridgewood Ave.','07450','201-555-5555','Thyssen Stuttgart');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (250,'Mr.',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'),'Evan','Fielding','194-07 58th Ave.','11365','718-555-5555','Toronto Neuenstadt');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (251,'Ms.',to_date('11-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('11-FEB-99','DD-MON-RR'),'BROSENZW',to_date('14-FEB-99','DD-MON-RR'),'Catherine','Frangopoulos','2270 41st Street','11105','718-555-5555','U.N.D.P.');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (214,'Ms.',to_date('05-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('05-FEB-99','DD-MON-RR'),'BROSENZW',to_date('08-FEB-99','DD-MON-RR'),'Yvonne','Williams','80-20 4th Ave.  #A3','11209','718-555-5555','Iarriott Hotels');
Insert into STUDENT.V_QAFE_FORM2_STUDENT (STUDENT_ID,SALUTATION,REGISTRATION_DATE,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,FIRST_NAME,LAST_NAME,STREET_ADDRESS,ZIP,PHONE,EMPLOYER) values (215,'Mr.',to_date('05-FEB-99','DD-MON-RR'),'BROSENZWEIG',to_date('05-FEB-99','DD-MON-RR'),'BROSENZW',to_date('08-FEB-99','DD-MON-RR'),'Reynaldo','Chatman','9925 42nd Ave. #3B','11368','718-555-5555','Iarriott Hotels');
--------------------------------------------------------
--  DDL for Index CRSE_CRSE_FK_I
--------------------------------------------------------

  CREATE INDEX "STUDENT"."CRSE_CRSE_FK_I" ON "STUDENT"."COURSE" ("PREREQUISITE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CRSE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT"."CRSE_PK" ON "STUDENT"."COURSE" ("COURSE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ENR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT"."ENR_PK" ON "STUDENT"."ENROLLMENT" ("STUDENT_ID", "SECTION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ENR_SECT_FK_I
--------------------------------------------------------

  CREATE INDEX "STUDENT"."ENR_SECT_FK_I" ON "STUDENT"."ENROLLMENT" ("SECTION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GRCON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT"."GRCON_PK" ON "STUDENT"."GRADE_CONVERSION" ("LETTER_GRADE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GRTW_GRTYP_FK_I
--------------------------------------------------------

  CREATE INDEX "STUDENT"."GRTW_GRTYP_FK_I" ON "STUDENT"."GRADE_TYPE_WEIGHT" ("GRADE_TYPE_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GRTW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT"."GRTW_PK" ON "STUDENT"."GRADE_TYPE_WEIGHT" ("SECTION_ID", "GRADE_TYPE_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GRTYP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT"."GRTYP_PK" ON "STUDENT"."GRADE_TYPE" ("GRADE_TYPE_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GR_GRTW_FK_I
--------------------------------------------------------

  CREATE INDEX "STUDENT"."GR_GRTW_FK_I" ON "STUDENT"."GRADE" ("SECTION_ID", "GRADE_TYPE_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT"."GR_PK" ON "STUDENT"."GRADE" ("STUDENT_ID", "SECTION_ID", "GRADE_TYPE_CODE", "GRADE_CODE_OCCURRENCE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT"."INST_PK" ON "STUDENT"."INSTRUCTOR" ("INSTRUCTOR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INST_ZIP_FK_I
--------------------------------------------------------

  CREATE INDEX "STUDENT"."INST_ZIP_FK_I" ON "STUDENT"."INSTRUCTOR" ("ZIP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PS_TXN_IDX
--------------------------------------------------------

  CREATE INDEX "STUDENT"."PS_TXN_IDX" ON "STUDENT"."PS_TXN" ("COLLID", "ID") REVERSE 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SECT_CRSE_FK_I
--------------------------------------------------------

  CREATE INDEX "STUDENT"."SECT_CRSE_FK_I" ON "STUDENT"."SECTION" ("COURSE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SECT_INST_FK_I
--------------------------------------------------------

  CREATE INDEX "STUDENT"."SECT_INST_FK_I" ON "STUDENT"."SECTION" ("INSTRUCTOR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SECT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT"."SECT_PK" ON "STUDENT"."SECTION" ("SECTION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SECT_SECT2_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT"."SECT_SECT2_UK" ON "STUDENT"."SECTION" ("SECTION_NO", "COURSE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index STU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT"."STU_PK" ON "STUDENT"."STUDENT" ("STUDENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index STU_ZIP_FK_I
--------------------------------------------------------

  CREATE INDEX "STUDENT"."STU_ZIP_FK_I" ON "STUDENT"."STUDENT" ("ZIP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ZIP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT"."ZIP_PK" ON "STUDENT"."ZIPCODE" ("ZIP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table COURSE
--------------------------------------------------------

  ALTER TABLE "STUDENT"."COURSE" MODIFY ("COURSE_NO" CONSTRAINT "CRSE_COURSE_NO_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."COURSE" ADD CONSTRAINT "CRSE_CREATED_BY_NNULL" CHECK ("CREATED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."COURSE" ADD CONSTRAINT "CRSE_DESCRIPTION_NNULL" CHECK ("DESCRIPTION" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."COURSE" ADD CONSTRAINT "CRSE_MODIFIED_DATE_NNULL" CHECK ("MODIFIED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."COURSE" ADD CONSTRAINT "CRSE_MODIFIED_BY_NNULL" CHECK ("MODIFIED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."COURSE" ADD CONSTRAINT "CRSE_CREATED_DATE_NNULL" CHECK ("CREATED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."COURSE" ADD CONSTRAINT "CRSE_PK" PRIMARY KEY ("COURSE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ENROLLMENT
--------------------------------------------------------

  ALTER TABLE "STUDENT"."ENROLLMENT" MODIFY ("STUDENT_ID" CONSTRAINT "ENR_STUDENT_ID_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."ENROLLMENT" MODIFY ("SECTION_ID" CONSTRAINT "ENR_SECTION_ID_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."ENROLLMENT" ADD CONSTRAINT "ENR_CREATED_DATE_NNULL" CHECK ("CREATED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."ENROLLMENT" ADD CONSTRAINT "ENR_CREATED_BY_NNULL" CHECK ("CREATED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."ENROLLMENT" ADD CONSTRAINT "ENR_MODIFIED_BY_NNULL" CHECK ("MODIFIED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."ENROLLMENT" ADD CONSTRAINT "ENR_ENROLL_DATE_NNULL" CHECK ("ENROLL_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."ENROLLMENT" ADD CONSTRAINT "ENR_MODIFIED_DATE_NNULL" CHECK ("MODIFIED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."ENROLLMENT" ADD CONSTRAINT "ENR_PK" PRIMARY KEY ("STUDENT_ID", "SECTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GRADE
--------------------------------------------------------

  ALTER TABLE "STUDENT"."GRADE" MODIFY ("STUDENT_ID" CONSTRAINT "GR_STUDENT_ID_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."GRADE" MODIFY ("SECTION_ID" CONSTRAINT "GR_SECTION_ID_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."GRADE" MODIFY ("GRADE_TYPE_CODE" CONSTRAINT "GR_GRADE_TYPE_CODE_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."GRADE" MODIFY ("GRADE_CODE_OCCURRENCE" CONSTRAINT "GR_GRADE_CODE_OCCURRENCE_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."GRADE" ADD CONSTRAINT "GR_MODIFIED_BY_NNULL" CHECK ("MODIFIED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE" ADD CONSTRAINT "GR_CREATED_BY_NNULL" CHECK ("CREATED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE" ADD CONSTRAINT "GR_CREATED_DATE_NNULL" CHECK ("CREATED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE" ADD CONSTRAINT "GR_MODIFIED_DATE_NNULL" CHECK ("MODIFIED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE" ADD CONSTRAINT "GR_PK" PRIMARY KEY ("STUDENT_ID", "SECTION_ID", "GRADE_TYPE_CODE", "GRADE_CODE_OCCURRENCE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GRADE_CONVERSION
--------------------------------------------------------

  ALTER TABLE "STUDENT"."GRADE_CONVERSION" MODIFY ("LETTER_GRADE" CONSTRAINT "GRCON_LETTER_GRADE_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."GRADE_CONVERSION" ADD CONSTRAINT "GRCON_CREATED_BY_NNULL" CHECK ("CREATED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_CONVERSION" ADD CONSTRAINT "GRCON_GRADE_POINT_NNULL" CHECK ("GRADE_POINT" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_CONVERSION" ADD CONSTRAINT "GRCON_CREATED_DATE_NNULL" CHECK ("CREATED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_CONVERSION" ADD CONSTRAINT "GRCON_MIN_GRADE_NNULL" CHECK ("MIN_GRADE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_CONVERSION" ADD CONSTRAINT "GRCON_MODIFIED_BY_NNULL" CHECK ("MODIFIED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_CONVERSION" ADD CONSTRAINT "GRCON_MODIFIED_DATE_NNULL" CHECK ("MODIFIED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_CONVERSION" ADD CONSTRAINT "GRCON_MAX_GRADE_NNULL" CHECK ("MAX_GRADE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_CONVERSION" ADD CONSTRAINT "GRCON_PK" PRIMARY KEY ("LETTER_GRADE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GRADE_TYPE
--------------------------------------------------------

  ALTER TABLE "STUDENT"."GRADE_TYPE" MODIFY ("GRADE_TYPE_CODE" CONSTRAINT "GRTYP_GRADE_TYPE_CODE_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."GRADE_TYPE" ADD CONSTRAINT "GRTYP_GRADE_TYPE_CODE_LENGTH" CHECK (LENGTH(grade_type_code)=2) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_TYPE" ADD CONSTRAINT "GRTYP_CREATED_DATE_NNULL" CHECK ("CREATED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_TYPE" ADD CONSTRAINT "GRTYP_CREATED_BY_NNULL" CHECK ("CREATED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_TYPE" ADD CONSTRAINT "GRTYP_DESCRIPTION_NNULL" CHECK ("DESCRIPTION" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_TYPE" ADD CONSTRAINT "GRTYP_MODIFIED_DATE_NNULL" CHECK ("MODIFIED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_TYPE" ADD CONSTRAINT "GRTYP_MODIFIED_BY_NNULL" CHECK ("MODIFIED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_TYPE" ADD CONSTRAINT "GRTYP_PK" PRIMARY KEY ("GRADE_TYPE_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GRADE_TYPE_WEIGHT
--------------------------------------------------------

  ALTER TABLE "STUDENT"."GRADE_TYPE_WEIGHT" MODIFY ("SECTION_ID" CONSTRAINT "GRTW_SECTION_ID_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."GRADE_TYPE_WEIGHT" MODIFY ("GRADE_TYPE_CODE" CONSTRAINT "GRTW_GRADE_TYPE_CODE_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."GRADE_TYPE_WEIGHT" ADD CONSTRAINT "GRTW_MODIFIED_DATE_NNULL" CHECK ("MODIFIED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_TYPE_WEIGHT" ADD CONSTRAINT "GRTW_DROP_LOWEST_NNULL" CHECK ("DROP_LOWEST" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_TYPE_WEIGHT" ADD CONSTRAINT "GRTW_CREATED_BY_NNULL" CHECK ("CREATED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_TYPE_WEIGHT" ADD CONSTRAINT "GRTW_MODIFIED_BY_NNULL" CHECK ("MODIFIED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_TYPE_WEIGHT" ADD CONSTRAINT "GRTW_CREATED_DATE_NNULL" CHECK ("CREATED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_TYPE_WEIGHT" ADD CONSTRAINT "GRTW_PCT_OF_FINAL_GRADE_NNULL" CHECK ("PERCENT_OF_FINAL_GRADE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_TYPE_WEIGHT" ADD CONSTRAINT "GRTW_NUMBER_PER_SECTION_NNULL" CHECK ("NUMBER_PER_SECTION" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."GRADE_TYPE_WEIGHT" ADD CONSTRAINT "GRTW_PK" PRIMARY KEY ("SECTION_ID", "GRADE_TYPE_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INSTRUCTOR
--------------------------------------------------------

  ALTER TABLE "STUDENT"."INSTRUCTOR" ADD CONSTRAINT "INST_MODFIED_BY_NNULL" CHECK ("MODIFIED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."INSTRUCTOR" MODIFY ("INSTRUCTOR_ID" CONSTRAINT "INST_INSTRUCTOR_ID_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."INSTRUCTOR" ADD CONSTRAINT "INST_MODIFIED_DATE_NNULL" CHECK ("MODIFIED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."INSTRUCTOR" ADD CONSTRAINT "INST_CREATED_DATE_NNULL" CHECK ("CREATED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."INSTRUCTOR" ADD CONSTRAINT "INST_CREATED_BY_NNULL" CHECK ("CREATED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."INSTRUCTOR" ADD CONSTRAINT "INST_PK" PRIMARY KEY ("INSTRUCTOR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PS_TXN
--------------------------------------------------------

  ALTER TABLE "STUDENT"."PS_TXN" ADD CONSTRAINT "PS_TXN_PK" PRIMARY KEY ("COLLID", "ID")
  USING INDEX REVERSE PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SECTION
--------------------------------------------------------

  ALTER TABLE "STUDENT"."SECTION" MODIFY ("SECTION_ID" CONSTRAINT "SECT_SECTION_ID_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."SECTION" ADD CONSTRAINT "SECT_COURSE_NO_NNULL" CHECK ("COURSE_NO" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."SECTION" ADD CONSTRAINT "SECT_CREATED_BY_NNULL" CHECK ("CREATED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."SECTION" ADD CONSTRAINT "SECT_MODIFIED_DATE_NNULL" CHECK ("MODIFIED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."SECTION" ADD CONSTRAINT "SECT_INSTRUCTOR_ID_NNULL" CHECK ("INSTRUCTOR_ID" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."SECTION" ADD CONSTRAINT "SECT_SECTION_NO_NNULL" CHECK ("SECTION_NO" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."SECTION" ADD CONSTRAINT "SECT_MODIFIED_BY_NNULL" CHECK ("MODIFIED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."SECTION" ADD CONSTRAINT "SECT_CREATED_DATE_NNULL" CHECK ("CREATED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."SECTION" ADD CONSTRAINT "SECT_PK" PRIMARY KEY ("SECTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "STUDENT"."SECTION" ADD CONSTRAINT "SECT_SECT2_UK" UNIQUE ("SECTION_NO", "COURSE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "STUDENT"."STUDENT" MODIFY ("STUDENT_ID" CONSTRAINT "STU_STUDENT_ID_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."STUDENT" ADD CONSTRAINT "STU_PK" PRIMARY KEY ("STUDENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ZIPCODE
--------------------------------------------------------

  ALTER TABLE "STUDENT"."ZIPCODE" MODIFY ("ZIP" CONSTRAINT "ZIP_ZIP_NNULL" NOT NULL ENABLE);
  ALTER TABLE "STUDENT"."ZIPCODE" ADD CONSTRAINT "ZIP_CREATED_DATE_NNULL" CHECK ("CREATED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."ZIPCODE" ADD CONSTRAINT "ZIP_CREATED_BY_NNULL" CHECK ("CREATED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."ZIPCODE" ADD CONSTRAINT "ZIP_MODIFIED_BY_NNULL" CHECK ("MODIFIED_BY" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."ZIPCODE" ADD CONSTRAINT "ZIP_MODIFIED_DATE_NNULL" CHECK ("MODIFIED_DATE" IS NOT NULL) ENABLE;
  ALTER TABLE "STUDENT"."ZIPCODE" ADD CONSTRAINT "ZIP_PK" PRIMARY KEY ("ZIP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COURSE
--------------------------------------------------------

  ALTER TABLE "STUDENT"."COURSE" ADD CONSTRAINT "CRSE_CRSE_FK" FOREIGN KEY ("PREREQUISITE")
	  REFERENCES "STUDENT"."COURSE" ("COURSE_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GRADE
--------------------------------------------------------

  ALTER TABLE "STUDENT"."GRADE" ADD CONSTRAINT "GR_ENR_FK" FOREIGN KEY ("STUDENT_ID", "SECTION_ID")
	  REFERENCES "STUDENT"."ENROLLMENT" ("STUDENT_ID", "SECTION_ID") ENABLE;
  ALTER TABLE "STUDENT"."GRADE" ADD CONSTRAINT "GR_GRTW_FK" FOREIGN KEY ("SECTION_ID", "GRADE_TYPE_CODE")
	  REFERENCES "STUDENT"."GRADE_TYPE_WEIGHT" ("SECTION_ID", "GRADE_TYPE_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INSTRUCTOR
--------------------------------------------------------

  ALTER TABLE "STUDENT"."INSTRUCTOR" ADD CONSTRAINT "INST_ZIP_FK" FOREIGN KEY ("ZIP")
	  REFERENCES "STUDENT"."ZIPCODE" ("ZIP") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "STUDENT"."STUDENT" ADD CONSTRAINT "STU_ZIP_FK" FOREIGN KEY ("ZIP")
	  REFERENCES "STUDENT"."ZIPCODE" ("ZIP") ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_STUDENT_BEFORE_INSERT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "STUDENT"."TRIGGER_STUDENT_BEFORE_INSERT" 
before insert ON STUDENT.STUDENT
for each row
begin
  if (:new.First_NAME is null) then
    --The -20101 is a custom error code can be any number below the -20000
    raise_application_error(-20101, 'FIRST_NAME must not be empty, please fill in. Value try to insert is: ' || :new.First_NAME || CHR(13));
  end if;
end;
/
ALTER TRIGGER "STUDENT"."TRIGGER_STUDENT_BEFORE_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_STUDENT_BEFORE_UPDATE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "STUDENT"."TRIGGER_STUDENT_BEFORE_UPDATE" 
before update ON STUDENT.STUDENT
for each row
begin
  if (:new.First_NAME is null) then
    --The -20101 is a custom error code can be any number below the -20000
    raise_application_error(-20101, 'FIRST_NAME must not be empty, please fill in. Value try to insert is: ' || :new.First_NAME || CHR(13));
  end if;
end;
/
ALTER TRIGGER "STUDENT"."TRIGGER_STUDENT_BEFORE_UPDATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger V_EX01_01_STUDENT_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "STUDENT"."V_EX01_01_STUDENT_TRG" 
instead of insert or update or delete
on v_ex01_01_student
for each row
begin
if inserting
then
insert into student_test
	(student_id,
	salutation,
	first_name,
	last_name,
	phone,
	street_address,
	zip,
	employer,
	registration_date)
values
	(:new.student_id,
	:new.salutation,
	:new.first_name,
	:new.last_name,
	:new.phone,
	:new.street_address,
	:new.zip,
	:new.employer,
	:new.registration_date)
  returning rowid into rowidaspk;
--NON-BASE-TABLE ITEMS [city, state, enroll_now, exit]
end if;

if updating
then
update student_test set
	student_id       		= :new.student_id,
	salutation       		= :new.salutation,
	first_name       		= :new.first_name,
	last_name        		= :new.last_name,
	phone            		= :new.phone,
	street_address   		= :new.street_address,
	zip              		= :new.zip,
	employer         		= :new.employer,
	registration_date		= :new.registration_date
--No primary key defined, TODO: create proper 'where' clause
where rowid       		= :new.rowidaspk;
--NON-BASE-TABLE ITEMS [city, state, enroll_now, exit]
end if;

if deleting
then
delete from student_test
--No primary key defined, TODO: create proper 'where' clause
where rowid       		= :new.rowidaspk;
--NON-BASE-TABLE ITEMS [city, state, enroll_now, exit]
end if;

end v_ex01_01_student_trg;
/
ALTER TRIGGER "STUDENT"."V_EX01_01_STUDENT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger V_EX10_01_STUDENT_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "STUDENT"."V_EX10_01_STUDENT_TRG" 
instead of insert or update or delete
on v_ex10_01_student
for each row
begin
if inserting
then
insert into student
	(student_id,
	salutation,
	first_name,
	last_name,
	phone,
	street_address,
	zip,
	employer,
	registration_date)
values
	(:new.student_id,
	:new.salutation,
	:new.first_name,
	:new.last_name,
	:new.phone,
	:new.street_address,
	:new.zip,
	:new.employer,
	:new.registration_date);
--NON-BASE-TABLE ITEMS [city, state, exit]
end if;

if updating
then
update student set
	student_id = :new.student_id,
	salutation = :new.salutation,
	first_name = :new.first_name,
	last_name = :new.last_name,
	phone = :new.phone,
	street_address = :new.street_address,
	zip = :new.zip,
	employer = :new.employer,
	registration_date = :new.registration_date
where student_id = :old.student_id;
--NON-BASE-TABLE ITEMS [city, state, exit]
end if;

if deleting
then
delete from student
where student_id = :old.student_id;
--NON-BASE-TABLE ITEMS [city, state, exit]
end if;

end v_ex10_01_student_trg;
/
ALTER TRIGGER "STUDENT"."V_EX10_01_STUDENT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger V_QAFE_FORM1_COURSE_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "STUDENT"."V_QAFE_FORM1_COURSE_TRG" 
instead of insert or update or delete
on v_qafe_form1_course
for each row
begin
/*
Original Oracle Forms code for the PRE-INSERT trigger of block: "COURSE" in form: "QAFE_FORM1"

:created_date := sysdate;
:created_by := :global.user_id;
:modified_date := sysdate;
:modified_by := :global.user_id;
:course_no := course_no_seq.nextval;
*/
if inserting
then
insert into course
	(prerequisite,
	course_no,
	description,
	cost,
	created_by,
	created_date,
	modified_by,
	modified_date)
values
	(:new.prerequisite,
	:new.course_no,
	:new.description,
	:new.cost,
	:new.created_by,
	:new.created_date,
	:new.modified_by,
	:new.modified_date);
end if;

/*
Original Oracle Forms code for the PRE-UPDATE trigger of block: "COURSE" in form: "QAFE_FORM1"

:modified_date := sysdate;
:modified_by := :global.user_id;
*/
if updating
then
update course set
	prerequisite 		= :new.prerequisite,
	course_no    		= :new.course_no,
	description  		= :new.description,
	cost         		= :new.cost,
	created_by   		= :new.created_by,
	created_date 		= :new.created_date,
	modified_by  		= :new.modified_by,
	modified_date		= :new.modified_date
--No primary key defined, TODO: create proper 'where' clause
where 1 = 0;
end if;

if deleting
then
delete from course
--No primary key defined, TODO: create proper 'where' clause
where 1 = 0;
end if;

end v_qafe_form1_course_trg;
/
ALTER TRIGGER "STUDENT"."V_QAFE_FORM1_COURSE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger V_QAFE_FORM2_INSTRUCTOR_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "STUDENT"."V_QAFE_FORM2_INSTRUCTOR_TRG" 
instead of insert or update or delete
on v_qafe_form2_instructor
for each row
begin
/*
Original Oracle Forms code for the PRE-INSERT trigger of block: "INSTRUCTOR" in form: "QAFE_FORM2"

:instructor.instructor_id := instructor_id_seq.nextval;
:instructor.created_by := :global.user_id;
:instructor.modified_by := :global.user_id;
:instructor.created_date := sysdate;
:instructor.modified_date := sysdate;
*/
if inserting
then
insert into instructor
	(created_by,
	first_name,
	last_name,
	instructor_id,
	created_date,
	modified_by,
	modified_date,
	salutation,
	street_address,
	zip,
	phone)
values
	(:new.created_by,
	:new.first_name,
	:new.last_name,
	:new.instructor_id,
	:new.created_date,
	:new.modified_by,
	:new.modified_date,
	:new.salutation,
	:new.street_address,
	:new.zip,
	:new.phone);
--NON-BASE-TABLE ITEMS [push_button1, push_button2]
end if;

/*
Original Oracle Forms code for the PRE-UPDATE trigger of block: "INSTRUCTOR" in form: "QAFE_FORM2"

:instructor.modified_by := :global.user_id;
:instructor.modified_date := sysdate;
*/
if updating
then
update instructor set
	created_by    		= :new.created_by,
	first_name    		= :new.first_name,
	last_name     		= :new.last_name,
	instructor_id 		= :new.instructor_id,
	created_date  		= :new.created_date,
	modified_by   		= :new.modified_by,
	modified_date 		= :new.modified_date,
	salutation    		= :new.salutation,
	street_address		= :new.street_address,
	zip           		= :new.zip,
	phone         		= :new.phone
--No primary key defined, TODO: create proper 'where' clause
where 1 = 0;
--NON-BASE-TABLE ITEMS [push_button1, push_button2]
end if;

if deleting
then
delete from instructor
--No primary key defined, TODO: create proper 'where' clause
where 1 = 0;
--NON-BASE-TABLE ITEMS [push_button1, push_button2]
end if;

end v_qafe_form2_instructor_trg;
/
ALTER TRIGGER "STUDENT"."V_QAFE_FORM2_INSTRUCTOR_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger V_QAFE_FORM2_STUDENT_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "STUDENT"."V_QAFE_FORM2_STUDENT_TRG" 
instead of insert or update or delete
on v_qafe_form2_student
for each row
begin
if inserting
then
insert into student
	(student_id,
	salutation,
	registration_date,
	created_by,
	created_date,
	modified_by,
	modified_date,
	first_name,
	last_name,
	street_address,
	zip,
	phone,
	employer)
values
	(:new.student_id,
	:new.salutation,
	:new.registration_date,
	:new.created_by,
	:new.created_date,
	:new.modified_by,
	:new.modified_date,
	:new.first_name,
	:new.last_name,
	:new.street_address,
	:new.zip,
	:new.phone,
	:new.employer);
--NON-BASE-TABLE ITEMS [push_button4]
end if;

if updating
then
update student set
	student_id       		= :new.student_id,
	salutation       		= :new.salutation,
	registration_date		= :new.registration_date,
	created_by       		= :new.created_by,
	created_date     		= :new.created_date,
	modified_by      		= :new.modified_by,
	modified_date    		= :new.modified_date,
	first_name       		= :new.first_name,
	last_name        		= :new.last_name,
	street_address   		= :new.street_address,
	zip              		= :new.zip,
	phone            		= :new.phone,
	employer         		= :new.employer
--No primary key defined, TODO: create proper 'where' clause
where 1 = 0;
--NON-BASE-TABLE ITEMS [push_button4]
end if;

if deleting
then
delete from student
--No primary key defined, TODO: create proper 'where' clause
where 1 = 0;
--NON-BASE-TABLE ITEMS [push_button4]
end if;

end v_qafe_form2_student_trg;
/
ALTER TRIGGER "STUDENT"."V_QAFE_FORM2_STUDENT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Package ADF_EX10_01_TRIGGERS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "STUDENT"."ADF_EX10_01_TRIGGERS" AS 
procedure STUDENT_POSTQ (P_STUDENT IN OUT ADF_EX10_01_STUDENT) ;
procedure STUDENT_ZIP_WVI (P_STUDENT IN OUT ADF_EX10_01_STUDENT) ;
procedure STUDENT_EXIT_WBP;
END  ADF_EX10_01_TRIGGERS;

/
--------------------------------------------------------
--  DDL for Package STUDENTPKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "STUDENT"."STUDENTPKG" IS
 PROCEDURE GETDATA(STUDENT_LIST OUT STUDENTOBJ_LIST);
END;

/
--------------------------------------------------------
--  DDL for Package Body ADF_EX10_01_TRIGGERS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "STUDENT"."ADF_EX10_01_TRIGGERS" AS 

  --Object created to handle System Variables
--  P_SYSTEM FORMS_SYSTEM := FORMS_SYSTEM();

  ALERT_BUTTON1 NUMBER := 1;
  ALERT_BUTTON2 NUMBER := 2;
  ALERT_BUTTON3 NUMBER := 3;

-- This stored procedure is created 
-- to compile and the the script.
PROCEDURE Message(message IN VARCHAR2) IS
BEGIN
  NULL;
END;

-- This stored procedure is created 
-- to compile and the the script.
PROCEDURE Copy(src IN VARCHAR2, dest IN VARCHAR2) IS
BEGIN
  NULL;
END;

-- This stored procedure is created 
-- to compile and the the script.
FUNCTION Name_In(var IN VARCHAR2)RETURN VARCHAR2 IS
BEGIN
  RETURN var;
END;


-- This stored procedure is created 
-- to compile and the the script.
FUNCTION  MESSAGE_TEXT RETURN VARCHAR2 IS
  res VARCHAR2(10) := '' ;
BEGIN
  RETURN res;
END;

-- This stored procedure is created 
-- to compile and the the script.
FUNCTION  MESSAGE_TYPE RETURN VARCHAR2 IS
   res VARCHAR2(10) := '' ;
BEGIN
  RETURN res;
END;

-- This stored procedure is created 
-- to compile and the the script.
FUNCTION  Show_Alert(alert IN VARCHAR2) RETURN NUMBER IS
  res NUMBER := 0;
BEGIN
  RETURN res;
END;

-- This stored procedure is created
-- to compile and the the script.
FUNCTION  Show_Alert(alert in ALERT) RETURN NUMBER IS
  res NUMBER := 0;
BEGIN
  RETURN res;
END;

-- This stored procedure is created
-- to compile and the the script.
FUNCTION  Find_Alert(alert_name IN VARCHAR2) RETURN ALERT IS
  res ALERT;
BEGIN
  RETURN res;
END;




/* 
 * This is created for trigger:
 * STUDENT
 * POST-QUERY
 */
procedure STUDENT_POSTQ (P_STUDENT IN OUT ADF_EX10_01_STUDENT)  is 
 begin 		SELECT city, state
INTO P_STUDENT.CITY, P_STUDENT.STATE
FROM zipcode
WHERE zipcode.zip = P_STUDENT.ZIP; 
 end;



/* 
 * This is created for trigger:
 * Block name: STUDENT
 * Item Name: ZIP
 * Trigger name: WHEN-VALIDATE-ITEM
 */
procedure STUDENT_ZIP_WVI (P_STUDENT IN OUT ADF_EX10_01_STUDENT)  is 
 begin 		DECLARE
	CURSOR c_get_zip is SELECT city, state
											FROM zipcode
											WHERE zipcode.zip = P_STUDENT.ZIP;
	v_invalid BOOLEAN;
	x number;
BEGIN
	OPEN c_get_zip;
	FETCH c_get_zip INTO P_STUDENT.CITY, P_STUDENT.STATE;
	v_invalid := c_get_zip%NOTFOUND;
	IF v_invalid THEN
		P_STUDENT.MESSAGE := 'THIS ZIPCODE DOES NOT EXIST IN THE DATABASE.'; --MESSAGE('This Zipcode does not exist in the database.');
		RETURN;
	END IF;
END; 
 end;



/* 
 * This is created for trigger:
 * Block name: STUDENT
 * Item Name: EXIT
 * Trigger name: WHEN-BUTTON-PRESSED
 */
procedure STUDENT_EXIT_WBP is 
 begin 		null;
 end;

END  ADF_EX10_01_TRIGGERS;

/
--------------------------------------------------------
--  DDL for Package Body STUDENT
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "STUDENT"."STUDENT" IS
PROCEDURE GETDATA(OUT STUDENTS STUDENTOBJ) IS
BEGIN
     DBMS_OUTPUT.PUT_LINE(P_VAR);
END;
END STUDENT;

/
--------------------------------------------------------
--  DDL for Package Body STUDENTPKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "STUDENT"."STUDENTPKG" IS
PROCEDURE GETDATA(STUDENT_LIST OUT STUDENTOBJ_LIST) 
IS
STUDENT STUDENTOBJ;
CURSOR templates is
      select student_id, first_name, last_name, phone from student;
BEGIN
   STUDENT_LIST := STUDENTOBJ_LIST();   
    FOR student_rec IN templates LOOP   
      STUDENT := STUDENTOBJ(null,null,null,null);
      STUDENT.student_id := student_rec.student_id;
      STUDENT.first_name := student_rec.first_name;
      STUDENT.last_name := student_rec.last_name;
      STUDENT.phone := student_rec.phone;
      STUDENT_LIST.extend;
      STUDENT_LIST(STUDENT_LIST.last) := STUDENT;
    END LOOP;
END;
END STUDENTPKG;

/
