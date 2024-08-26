load data
CHARACTERSET UTF8
infile 'C:/phone_info.txt'
append into table phone_info
Fields terminated by ","
(prefix,mobile,province,city,isp,areacode,postcode,provincecode,citycode,lng,lat)