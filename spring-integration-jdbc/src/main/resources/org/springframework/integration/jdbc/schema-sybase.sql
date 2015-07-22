-- Autogenerated: do not edit this file

CREATE TABLE INT_MESSAGE  (
	MESSAGE_ID CHAR(36),
	REGION VARCHAR(100),
	CREATED_DATE DATETIME NOT NULL,
	MESSAGE_BYTES IMAGE,
	constraint MESSAGE_PK primary key (MESSAGE_ID, REGION)
) LOCK DATAROWS;

CREATE INDEX INT_MESSAGE_IX1 ON INT_MESSAGE (CREATED_DATE);

CREATE TABLE INT_GROUP_TO_MESSAGE  (
	GROUP_KEY CHAR(36),
	MESSAGE_ID CHAR(36),
	REGION VARCHAR(100),
	constraint GROUP_TO_MESSAGE_PK primary key (GROUP_KEY, MESSAGE_ID, REGION)
) LOCK DATAROWS;

CREATE TABLE INT_MESSAGE_GROUP  (
	GROUP_KEY CHAR(36),
	REGION VARCHAR(100),
	MARKED BIGINT,
	COMPLETE BIGINT,
	LAST_RELEASED_SEQUENCE BIGINT,
	CREATED_DATE DATETIME NOT NULL,
	UPDATED_DATE DATETIME DEFAULT NULL,
	constraint MESSAGE_GROUP_PK primary key (GROUP_KEY, REGION)
) LOCK DATAROWS;
