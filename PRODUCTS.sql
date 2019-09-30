ALTER TABLE SOOMANIB.PRODUCTS
 DROP PRIMARY KEY CASCADE;

DROP TABLE SOOMANIB.PRODUCTS CASCADE CONSTRAINTS;

CREATE TABLE SOOMANIB.PRODUCTS
(
  PRODUCT_ID   NUMBER                           NOT NULL,
  NAME         VARCHAR2(50 BYTE)                NOT NULL,
  CATEGORY     VARCHAR2(20 BYTE),
  PRICE        NUMBER                           NOT NULL,
  SUPPLIER_ID  NUMBER                           NOT NULL,
  QUANTITY     NUMBER                           NOT NULL
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


--  There is no statement for index SOOMANIB.SYS_C007556.
--  The object is created when the parent object is created.

ALTER TABLE SOOMANIB.PRODUCTS ADD (
  PRIMARY KEY
  (PRODUCT_ID)
  USING INDEX
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE);

ALTER TABLE SOOMANIB.PRODUCTS ADD (
  FOREIGN KEY (SUPPLIER_ID)
  REFERENCES SOOMANIB.SUPPLIERS (SUPPLIER_ID)
  ON DELETE CASCADE
  ENABLE VALIDATE);
