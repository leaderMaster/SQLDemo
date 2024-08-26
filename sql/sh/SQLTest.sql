-- 解除锁定账户
ALTER USER SH ACCOUNT UNLOCK;

-- 修改用户密码
ALTER USER SH IDENTIFIED BY 123456;

-- 生成百万级别的数据文件, 用户: sh, 表: sales, 数据量: 92 万
SELECT count(*)
FROM (SELECT p.PROD_NAME                                  AS prod_name,
             c.CUST_FIRST_NAME || ' ' || c.CUST_LAST_NAME AS cus_name
      FROM PRODUCTS p,
           SALES s,
           CUSTOMERS c
      WHERE p.PROD_ID = s.PROD_ID
        AND s.CUST_ID = c.CUST_ID);