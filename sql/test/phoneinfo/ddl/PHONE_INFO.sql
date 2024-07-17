-- Create table
create table PHONE_INFO
(
    prefix       VARCHAR2(10),
    mobile       VARCHAR2(10) not null,
    province     VARCHAR2(40),
    city         VARCHAR2(40),
    isp          VARCHAR2(40),
    areacode     VARCHAR2(40),
    postcode     VARCHAR2(40),
    provincecode VARCHAR2(40),
    citycode     VARCHAR2(40),
    lng          VARCHAR2(40),
    lat          VARCHAR2(40)
);

-- Add comments to the table 
comment on table PHONE_INFO is '手机号对应的地址表';

-- Add comments to the columns 
comment on column PHONE_INFO.prefix is '号段前三位';
comment on column PHONE_INFO.mobile is '号段(前7位)';
comment on column PHONE_INFO.province is '省';
comment on column PHONE_INFO.city is '市';
comment on column PHONE_INFO.isp is '运营商';
comment on column PHONE_INFO.areacode is '区号';
comment on column PHONE_INFO.postcode is '邮政编码';
comment on column PHONE_INFO.provincecode is '省行政区划代码';
comment on column PHONE_INFO.citycode is '市行政区划代码';
comment on column PHONE_INFO.lng is '市经度';
comment on column PHONE_INFO.lat is '市纬度';

-- Create/Recreate primary, unique and foreign key constraints 
alter table PHONE_INFO add constraint 前七位 primary key (MOBILE);