-- Create table
create table CODE_LIBRARY
(
    codeno        VARCHAR2(100 CHAR) not null,
    itemno        VARCHAR2(100 CHAR) not null,
    itemname      VARCHAR2(250 CHAR),
    bankno        VARCHAR2(32 CHAR),
    sortno        VARCHAR2(32 CHAR),
    isinuse       VARCHAR2(18 CHAR),
    itemdescribe  VARCHAR2(800 CHAR),
    itemattribute VARCHAR2(800 CHAR),
    relativecode  VARCHAR2(1600 CHAR),
    attribute1    VARCHAR2(800 CHAR),
    attribute2    VARCHAR2(250 CHAR),
    attribute3    VARCHAR2(250 CHAR),
    attribute4    VARCHAR2(250 CHAR),
    attribute5    VARCHAR2(250 CHAR),
    attribute6    VARCHAR2(250 CHAR),
    attribute7    VARCHAR2(250 CHAR),
    attribute8    VARCHAR2(250 CHAR),
    inputuser     VARCHAR2(32 CHAR),
    inputorg      VARCHAR2(32 CHAR),
    inputtime     VARCHAR2(20 CHAR),
    updateuser    VARCHAR2(32 CHAR),
    updatetime    VARCHAR2(20 CHAR),
    remark        VARCHAR2(250 CHAR),
    helptext      VARCHAR2(250 CHAR)
);

-- Create/Recreate indexes 
create index IDX1_CODE_LIBRAY on CODE_LIBRARY (CODENO, SORTNO);

-- Create/Recreate primary, unique and foreign key constraints 
alter table CODE_LIBRARY add constraint PRIMARY_135 primary key (CODENO, ITEMNO);
