SELECT *
  FROM TB_PNO_PS

create table TB_PNO_PS(
PS_NO number primary key,
PS_MAIL varchar2(50) not null,
PS_NAME varchar2(50) not null,
PS_PASSWORD varchar2(100) not null);

create table TB_PNO_BD(
BD_NO number primary key,
BD_PS_NO number,
BD_DATE date not null,
BD_TITLE varchar2(100) not null,
BD_CONTENT varchar2(20) not null,
BD_TYPE varchar2(20) not null);

create table TB_PNO_SD(
SD_NO number primary key,
SD_PS_NO number,
SD_SDATE varchar2(20) not null,
SD_EDATE varchar2(20) not null,
SD_STIME varchar2(20) not null,
SD_ETIME varchar2(20) not null,
SD_ICON varchar2(20),
SD_MEMO varchar2(100));

create table TB_PNO_CT(
CT_NO primary key,
CT_MAIL varchar2(50) not null,
CT_NUMBER varchar2(20) not null,
CT_COUNT number not null,
CT_CERT boolean not null);

