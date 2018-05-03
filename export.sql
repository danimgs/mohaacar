--------------------------------------------------------
-- Archivo creado  - martes-mayo-17-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CLIENTES
--------------------------------------------------------

  CREATE TABLE "DANI"."CLIENTES" 
   (	"DNI" CHAR(9 BYTE), 
	"CORREO" VARCHAR2(50 BYTE), 
	"NOMBRE" VARCHAR2(20 BYTE), 
	"APELLIDO1" VARCHAR2(30 BYTE), 
	"APELLIDO2" VARCHAR2(30 BYTE), 
	"TELEFONO" NUMBER(9,0), 
	"PASS" CHAR(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COCHES
--------------------------------------------------------

  CREATE TABLE "DANI"."COCHES" 
   (	"MATRICULA" CHAR(8 BYTE), 
	"MODELO" VARCHAR2(30 BYTE), 
	"POTENCIA" CHAR(5 BYTE), 
	"COMBUSTIBLE" VARCHAR2(10 BYTE), 
	"PRECIO" NUMBER(8,0), 
	"MARCA" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COCHESALQUILER
--------------------------------------------------------

  CREATE TABLE "DANI"."COCHESALQUILER" 
   (	"MATRICULA_ALQ" CHAR(8 BYTE), 
	"ZONA_ALQ" VARCHAR2(30 BYTE), 
	"FECHA_RECOGIDA" DATE, 
	"FECHA_DEVOLUCION" DATE, 
	"MARCA" VARCHAR2(30 BYTE), 
	"DNI" CHAR(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COCHESEMPRESA
--------------------------------------------------------

  CREATE TABLE "DANI"."COCHESEMPRESA" 
   (	"MATRICULA_EMP" CHAR(8 BYTE), 
	"ZONA_EMP" VARCHAR2(30 BYTE), 
	"FECHA_EMP" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMPRA
--------------------------------------------------------

  CREATE TABLE "DANI"."COMPRA" 
   (	"MATRICULA" CHAR(8 BYTE), 
	"COD_TABAJADOR" CHAR(5 BYTE), 
	"MARCA" VARCHAR2(30 BYTE), 
	"DNI" CHAR(10 BYTE), 
	"FECHA_COMPRA" DATE, 
	"COD_COMPRA" CHAR(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CONCESIONARIOS
--------------------------------------------------------

  CREATE TABLE "DANI"."CONCESIONARIOS" 
   (	"MARCA" VARCHAR2(30 BYTE), 
	"ZONA" VARCHAR2(30 BYTE), 
	"TELEFONO" NUMBER(9,0), 
	"PROPIETARIO" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DETALLES
--------------------------------------------------------

  CREATE TABLE "DANI"."DETALLES" 
   (	"ID_DETALLE" VARCHAR2(20 BYTE), 
	"DESCRIPCION" LONG, 
	"IMAGEN" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPLEADOS
--------------------------------------------------------

  CREATE TABLE "DANI"."EMPLEADOS" 
   (	"COD_TABAJADOR" CHAR(5 BYTE), 
	"NOMBRE" VARCHAR2(20 BYTE), 
	"APELLIDO1" VARCHAR2(30 BYTE), 
	"APELLIDO2" VARCHAR2(30 BYTE), 
	"DNI" CHAR(9 BYTE), 
	"EDAD" NUMBER(2,0), 
	"FECHA_ALT" DATE, 
	"MARCA" VARCHAR2(30 BYTE), 
	"PUESTO" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EXTRASCOCHES
--------------------------------------------------------

  CREATE TABLE "DANI"."EXTRASCOCHES" 
   (	"COD_EXTRA" CHAR(5 BYTE), 
	"TIPO" VARCHAR2(20 BYTE), 
	"PRECIO_EXTRA" NUMBER(5,0), 
	"MATRICULA" CHAR(8 BYTE), 
	"MARCA" VARCHAR2(30 BYTE), 
	"COD_PROVEEDOR" CHAR(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROMOCIONES
--------------------------------------------------------

  CREATE TABLE "DANI"."PROMOCIONES" 
   (	"COD_PROMOCION" CHAR(5 BYTE), 
	"DESCRIPCION" VARCHAR2(30 BYTE), 
	"MARCA" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROVEEDOR
--------------------------------------------------------

  CREATE TABLE "DANI"."PROVEEDOR" 
   (	"COD_PROVEEDOR" CHAR(5 BYTE), 
	"PAIS" VARCHAR2(20 BYTE), 
	"TELEFONO" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEGUROS
--------------------------------------------------------

  CREATE TABLE "DANI"."SEGUROS" 
   (	"IDENTIFICADOR" CHAR(10 BYTE), 
	"TIPO" VARCHAR2(30 BYTE), 
	"NOMBRE" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into DANI.CLIENTES
SET DEFINE OFF;
Insert into DANI.CLIENTES (DNI,CORREO,NOMBRE,APELLIDO1,APELLIDO2,TELEFONO,PASS) values ('64435477B','bea@juanxxiii.net','bea','lopez','lopez','654789877','333                                               ');
Insert into DANI.CLIENTES (DNI,CORREO,NOMBRE,APELLIDO1,APELLIDO2,TELEFONO,PASS) values ('47473827X','ola@gmail.es','Daniel','Munoz','grillo','685974123','222                                               ');
Insert into DANI.CLIENTES (DNI,CORREO,NOMBRE,APELLIDO1,APELLIDO2,TELEFONO,PASS) values ('48759681X','ola@gmail.es','dani','muÃ±oz','gon','666666666','123                                               ');
Insert into DANI.CLIENTES (DNI,CORREO,NOMBRE,APELLIDO1,APELLIDO2,TELEFONO,PASS) values ('48759682X','ola@gmail.es','dani','muÃ±oz','gon','666666666','222                                               ');
REM INSERTING into DANI.COCHES
SET DEFINE OFF;
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('2547CFT ','SERIE1','100  ','DIESEL','20000','BMW');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('5155DSA ','R8SPIDER','300  ','GASOLINA','40000','AUDI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('2234CHD ','AVENTADOR','150  ','GASOLINA','215000','LAMBORGHINI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('1245CAD ','DIABLO','150  ','GASOLINA','230000','LAMBORGHINI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('4524EFD ','EGOISTA','150  ','GASOLINA','225000','LAMBORGHINI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('3234CCD ','HURACAN','150  ','GASOLINA','220000','LAMBORGHINI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('2334CFT ','VENENO','150  ','GASOLINA','250000','LAMBORGHINI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('2222CMS ','MURCIELAGO','150  ','GASOLINA','260000','LAMBORGHINI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('3456CBS ','CLA45SHOOTINGBRAKE','550  ','GASOLINA','260000','MERCEDES');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('3567CSS ','G636X6','550  ','GASOLINA','280000','MERCEDES');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('3444TBS ','GLE63COUPE','550  ','GASOLINA','265000','MERCEDES');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('9643CBS ','GT','550  ','GASOLINA','290000','MERCEDES');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('3336CVS ','S63COUPE','550  ','GASOLINA','230000','MERCEDES');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('5657GHD ','FIESTA','300  ','DIESEL','8950','FORD');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('8887GTF ','FIESTA','80   ','GASOLINA','8950','FORD');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('8987UPF ','MUSTANG1967','250  ','GASOLINA','60000','FORD');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('1237GED ','MUSTANGCOBRA','250  ','GASOLINA','100000','FORD');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('5623GLD ','MUSTANGGT2015','250  ','GASOLINA','100000','FORD');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6862YHD ','360MODENA','400  ','GASOLINA','280000','FERRARI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6272YUI ','458','400  ','GASOLINA','300000','FERRARI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6966ITI ','612SCAGLIETTI','400  ','GASOLINA','290000','FERRARI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('5329RKI ','FF','400  ','GASOLINA','280000','FERRARI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6639HTR ','FXX','400  ','GASOLINA','1000000','FERRARI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('9365KDV ','118I5PUERTAS','400  ','GASOLINA','20000','BMW');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('9465DFG ','520ITOURING','400  ','GASOLINA','25000','BMW');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('1423SFRG','535IGRANTURISMO','400  ','GASOLINA','28000','BMW');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6134DRG ','M6CABRIO','400  ','GASOLINA','30000','BMW');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6268UGG ','X6M','300  ','GASOLINA','55000','BMW');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('7824UID ','Z4SDRIVE18I','300  ','GASOLINA','35000','BMW');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6362DFH ','A3','300  ','GASOLINA','65000','AUDI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('9260ERH ','A5','300  ','GASOLINA','55000','AUDI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('3468ECV ','A8','300  ','GASOLINA','55000','AUDI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('5231NES ','Q7','300  ','GASOLINA','44000','AUDI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('8928CGE ','R8','300  ','GASOLINA','37000','AUDI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('8654CXF ','R8SPIDER','300  ','GASOLINA','40000','AUDI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('5812DFX ','AVENTADOR','150  ','GASOLINA','215000','LAMBORGHINI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('4398WDX ','DIABLO','150  ','GASOLINA','230000','LAMBORGHINI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('1444SDX ','EGOISTA','150  ','GASOLINA','225000','LAMBORGHINI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('5468GXD ','HURACAN','150  ','GASOLINA','220000','LAMBORGHINI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('3248RTC ','VENENO','150  ','GASOLINA','250000','LAMBORGHINI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('7777RXD ','MURCIELAGO','150  ','GASOLINA','260000','LAMBORGHINI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6785DCV ','CLA45SHOOTINGBRAKE','550  ','GASOLINA','260000','MERCEDES');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('2722SGS ','G636X6','550  ','GASOLINA','280000','MERCEDES');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('8234GXD ','GLE63COUPE','550  ','GASOLINA','265000','MERCEDES');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('8742GHX ','GT','550  ','GASOLINA','290000','MERCEDES');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('2642ERD ','S63COUPE','550  ','GASOLINA','230000','MERCEDES');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('4762JGF ','SL65','550  ','GASOLINA','2900000','MERCEDES');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('0001AAA ','EVOS','300  ','GASOLINA','2900000','FORD');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('0847FCV ','FIESTA','300  ','DIESEL','8950','FORD');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('0732GXC ','FIESTA','80   ','GASOLINA','8950','FORD');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('7420GXT ','MUSTANG1967','250  ','GASOLINA','60000','FORD');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('0054GDF ','MUSTANGCOBRA','250  ','GASOLINA','100000','FORD');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('7605HXS ','MUSTANGGT2015','250  ','GASOLINA','100000','FORD');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('8750AWE ','360MODENA','400  ','GASOLINA','280000','FERRARI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('5870GDA ','458','400  ','GASOLINA','300000','FERRARI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('8724YSG ','612SCAGLIETTI','400  ','GASOLINA','290000','FERRARI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('5438SDF ','FF','400  ','GASOLINA','280000','FERRARI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6665SGF ','FXX','400  ','GASOLINA','1000000','FERRARI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('9640AFS ','488GTB','400  ','GASOLINA','200000','FERRARI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('5510SDF ','118I5PUERTAS','400  ','GASOLINA','20000','BMW');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6841AGX ','520ITOURING','400  ','GASOLINA','25000','BMW');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6520ASD ','535IGRANTURISMO','400  ','GASOLINA','28000','BMW');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('9450GXA ','M6CABRIO','400  ','GASOLINA','30000','BMW');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6170GHC ','X6M','300  ','GASOLINA','55000','BMW');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('8715XHN ','Z4SDRIVE18I','300  ','GASOLINA','35000','BMW');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6541EWD ','A3','300  ','GASOLINA','65000','AUDI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6541QWE ','A5','300  ','GASOLINA','55000','AUDI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('7482ASF ','A8','300  ','GASOLINA','55000','AUDI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('5458SAS ','Q7','300  ','GASOLINA','44000','AUDI');
Insert into DANI.COCHES (MATRICULA,MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA) values ('6514DQE ','R8','300  ','GASOLINA','37000','AUDI');
REM INSERTING into DANI.COCHESALQUILER
SET DEFINE OFF;
Insert into DANI.COCHESALQUILER (MATRICULA_ALQ,ZONA_ALQ,FECHA_RECOGIDA,FECHA_DEVOLUCION,MARCA,DNI) values ('5329RKI ','oo',to_date('01/03/16','DD/MM/RR'),to_date('06/03/16','DD/MM/RR'),'FERRARI','47473827X ');
Insert into DANI.COCHESALQUILER (MATRICULA_ALQ,ZONA_ALQ,FECHA_RECOGIDA,FECHA_DEVOLUCION,MARCA,DNI) values ('5329RKI ','uu',to_date('01/03/16','DD/MM/RR'),to_date('06/03/16','DD/MM/RR'),'FERRARI','98561357D ');
Insert into DANI.COCHESALQUILER (MATRICULA_ALQ,ZONA_ALQ,FECHA_RECOGIDA,FECHA_DEVOLUCION,MARCA,DNI) values ('2845JHY ','ALCORCON',to_date('10/01/16','DD/MM/RR'),to_date('14/01/16','DD/MM/RR'),'BMW','12387654A ');
Insert into DANI.COCHESALQUILER (MATRICULA_ALQ,ZONA_ALQ,FECHA_RECOGIDA,FECHA_DEVOLUCION,MARCA,DNI) values ('9643CBS ','fuenla',to_date('09/03/16','DD/MM/RR'),to_date('11/03/16','DD/MM/RR'),'MERCEDES','92808177A ');
Insert into DANI.COCHESALQUILER (MATRICULA_ALQ,ZONA_ALQ,FECHA_RECOGIDA,FECHA_DEVOLUCION,MARCA,DNI) values ('2334CFT ','ALCORCON',to_date('06/03/16','DD/MM/RR'),to_date('09/03/16','DD/MM/RR'),'LAMBORGHINI','64435477B ');
Insert into DANI.COCHESALQUILER (MATRICULA_ALQ,ZONA_ALQ,FECHA_RECOGIDA,FECHA_DEVOLUCION,MARCA,DNI) values ('6841AGX ','Madrid',to_date('10/03/16','DD/MM/RR'),to_date('16/03/16','DD/MM/RR'),'BMW','47473827X ');
REM INSERTING into DANI.COCHESEMPRESA
SET DEFINE OFF;
Insert into DANI.COCHESEMPRESA (MATRICULA_EMP,ZONA_EMP,FECHA_EMP) values ('1234FCD ','ZONA1',to_date('11/01/15','DD/MM/RR'));
Insert into DANI.COCHESEMPRESA (MATRICULA_EMP,ZONA_EMP,FECHA_EMP) values ('2345FCD ','ZONA1',to_date('20/01/15','DD/MM/RR'));
Insert into DANI.COCHESEMPRESA (MATRICULA_EMP,ZONA_EMP,FECHA_EMP) values ('4444FCD ','ZONA3',to_date('05/11/14','DD/MM/RR'));
Insert into DANI.COCHESEMPRESA (MATRICULA_EMP,ZONA_EMP,FECHA_EMP) values ('5858FCD ','ZONA5',to_date('10/09/15','DD/MM/RR'));
Insert into DANI.COCHESEMPRESA (MATRICULA_EMP,ZONA_EMP,FECHA_EMP) values ('7894FDD ','ZONA4',to_date('15/07/14','DD/MM/RR'));
Insert into DANI.COCHESEMPRESA (MATRICULA_EMP,ZONA_EMP,FECHA_EMP) values ('1111FDD ','ZONA6',to_date('19/11/14','DD/MM/RR'));
Insert into DANI.COCHESEMPRESA (MATRICULA_EMP,ZONA_EMP,FECHA_EMP) values ('1221EDD ','ZONA3',to_date('19/11/15','DD/MM/RR'));
Insert into DANI.COCHESEMPRESA (MATRICULA_EMP,ZONA_EMP,FECHA_EMP) values ('7874FDD ','ZONA4',to_date('15/07/14','DD/MM/RR'));
Insert into DANI.COCHESEMPRESA (MATRICULA_EMP,ZONA_EMP,FECHA_EMP) values ('5551FDD ','ZONA6',to_date('20/08/14','DD/MM/RR'));
Insert into DANI.COCHESEMPRESA (MATRICULA_EMP,ZONA_EMP,FECHA_EMP) values ('5742EDD ','ZONA2',to_date('19/04/15','DD/MM/RR'));
REM INSERTING into DANI.COMPRA
SET DEFINE OFF;
Insert into DANI.COMPRA (MATRICULA,COD_TABAJADOR,MARCA,DNI,FECHA_COMPRA,COD_COMPRA) values ('5657GHD ','001C ','FORD','45698712g ',to_date('14/01/16','DD/MM/RR'),'1002 ');
Insert into DANI.COMPRA (MATRICULA,COD_TABAJADOR,MARCA,DNI,FECHA_COMPRA,COD_COMPRA) values ('9465DFG ','001B ','BMW','47473827X ',to_date('22/02/16','DD/MM/RR'),'1001 ');
Insert into DANI.COMPRA (MATRICULA,COD_TABAJADOR,MARCA,DNI,FECHA_COMPRA,COD_COMPRA) values ('2334CFT ','001K ','LAMBORGHINI','47473827X ',to_date('07/03/16','DD/MM/RR'),'1003 ');
REM INSERTING into DANI.CONCESIONARIOS
SET DEFINE OFF;
Insert into DANI.CONCESIONARIOS (MARCA,ZONA,TELEFONO,PROPIETARIO) values ('MERCEDES','ZONA1','916430915','JUANJO');
Insert into DANI.CONCESIONARIOS (MARCA,ZONA,TELEFONO,PROPIETARIO) values ('LAMBORGHINI','ZONA2','916435475','DANI');
Insert into DANI.CONCESIONARIOS (MARCA,ZONA,TELEFONO,PROPIETARIO) values ('FORD','ZONA3','916430987','PEDRO');
Insert into DANI.CONCESIONARIOS (MARCA,ZONA,TELEFONO,PROPIETARIO) values ('FERRARI','ZONA4','916430995','JOSE');
Insert into DANI.CONCESIONARIOS (MARCA,ZONA,TELEFONO,PROPIETARIO) values ('BMW','ZONA5','916438915','MANUEL');
Insert into DANI.CONCESIONARIOS (MARCA,ZONA,TELEFONO,PROPIETARIO) values ('AUDI','ZONA6','916544915','PEPE');
REM INSERTING into DANI.DETALLES
SET DEFINE OFF;
Insert into DANI.DETALLES (ID_DETALLE,DESCRIPCION,IMAGEN) values ('bmw','El predecesor de BMW fue la empresa Rapp Motorenwerke GmbH, fundada
                              en 1913 por Karl Rapp. Cambiaron el nombre en abril de 1917, en primer lugar 
                              a BMW GmbH (sociedad limitada) para terminar en BMW AG, un ano mas tarde tras
                              su conversion en en sociedad anonima. La primera directora general fue Ana Maria, 
                              que mantendria el cargo durante 20 anos. El ingeniero Max Friz destaco en la 
                              joven empresa por desarrollar en 1917 un motor de avion de alta compresion, 
                              gracias a lo cual se pudo reducir la perdida de prestaciones en las alturas. 
                              Esta innovacion tuvo tal aceptacion que BMW recibio un pedido de 2.000 motores
                              por parte de la administracion del ejercito prusiano. El 17 de junio de 1919 
                              se alcanzo el record de altura de 9.760 metros con un BMW IIIa. El final de la 
                              Primera Guerra Mundial y el Tratado de Versalles parecio ser la fase final de la 
                              empresa, ya que el tratado prohibia la fabricacion durante 5 anos de motores de 
                              avion, por aquel entonces el unico producto de BMW. En 1922 Camillo Castiglioni,
                              accionista principal de la compania abandono la empresa para irse a Bayerische 
                              Flugzeugwerke AG (BFW), llevandose tambien los derechos de la marca BMW. La empresa
                              BFW era originaria de la empresa Gustav-Otto-Flugzeugwerk. El 7 de marzo de 1916 se 
                              considera, en la descripcion de la historia de la empresa, como fecha oficial de 
                              fundacion de BMW. Con la salida de Castiglioni los Bayerische Flugzeugwerke (BFW)
                              dejarian lugar a BMW. La empresa que se llamara hasta entonces BMW paso a llamarse 
                              Suddeutsche Bremsen-AG y despues Knorr-Bremse, empresa industrial de importancia en 
                              el sector de los frenos."','./imagenes/columnabmw.jpg');
Insert into DANI.DETALLES (ID_DETALLE,DESCRIPCION,IMAGEN) values ('ford','Ford, fue fundada el 16 de junio de 1903 con 28.000 dolares aportados por once inversores, entre los que se incluia el socio que le dio nombre a la compania, Henry Ford, que por aquel entonces contaba con 40 anos de edad. En sus primeros anos, Ford producia unos pocos coches por dia en su fabrica en la avenida Mack en Detroit, Michigan. Grupos de dos o tres hombres trabajaban con cada automovil utilizando componentes fabricados en otras companias. Poco a poco, la Ford Motor Company continuaria creciendo hasta ser una de las companias mas grandes y lucrativas del mundo desarrollado, asi como tambien una de las companias mas grandes dirigidas por una familia: la familia Ford ha mantenido el control de la compania durante casi 100 anos. Ford fue una de las empresas que logro sobrevivir a la Gran Depresion de los anos 30.
En 1908, la Compania Ford lanzo el modelo Ford T, cuya primera unidad fue fabricada en la planta manufacturera de Piquette. La compania tuvo que trasladar poco despues sus instalaciones de produccion a la planta de Highland Park, mas grande que la anterior, para poder satisfacer la demanda del nuevo modelo T. Hacia 1913, la compania habia desarrollado todas las tecnicas basicas de linea de produccion y produccion en masa. Ford creo la primera linea de produccion movil del mundo ese ano, la cual redujo el tiempo de ensamblaje del chasis de 12 horas y media a 100 minutos.
El primer modelo disenado y realizado para Europa fue el Ford Y 8 HP.','./imagenes/lateralFord.jpg');
Insert into DANI.DETALLES (ID_DETALLE,DESCRIPCION,IMAGEN) values ('ferrari','Enzo Ferrari fundo la Scuderia Ferrari en 1929 con el objetivo de patrocinar a pilotos aficionados de Modena. Ferrari entreno a varios pilotos y compitio con exito con autos Alfa Romeo hasta 1938, cuando fue oficialmente contratado por Alfa Romeo como jefe de su departamento de carreras.
En 1940, tras enterarse de los planes de la compania para absorber su amada Scuderia y tomar control de su trabajo en la competicion, abandono Alfa Romeo. Dado que tenia prohibido por contrato competir durante varios anos, la Scuderia se convirtio brevemente en Auto Avio Costruzioni Ferrari, que aparentemente fabricaba 
maquinaria y accesorios para aviones. Durante este periodo en el que no podia competir, Ferrari de hecho produjo un auto de carreras, el Tipo 815, siendo este el primer auto originalmente de Ferrari, pero debido a la Segunda Guerra Mundial tuvo muy poca participacion en las carreras. En 1943 la fabrica Ferrari se traslado
a Maranello, donde ha permanecido desde entonces. Esta fue bombardeada en 1944 y reconstruida en 1946 para posteriormente producir sus autos deportivos.El primer automovil deportivo de Ferrari, el 125 S de 1947, estaba propulsado por un motor V12 de 1,5 litros. Aunque era reacio a ello, Enzo construia y vendia sus automoviles para financiar la Scuderia. Mientras sus autos se ganaban rapidamente una reputacion gracias a su calidad, 
Enzo mantuvo una famosa aversion a sus clientes, pues sentia que la mayoria de ellos estaban comprando sus autos por el prestigio y no por sus prestaciones.
Los autos deportivos Ferrari, eran notables por su exquisito estilo debido a que algunos eran disenados por casas de diseno tales como Pininfarina. A lo largo de los anos, han trabajado para Ferrari otras casas de diseno de carroceria, tales como Scaglietti, Bertone y Vignale. Si bien su tradicional color rojo heredado de los modelos de carreras es caracteristico, tambien comercializan automoviles en diferentes colores.','./imagenes/lateralFerrari.png');
Insert into DANI.DETALLES (ID_DETALLE,DESCRIPCION,IMAGEN) values ('audi','August Horch (1868-1951), uno de los pioneros de la industria automovilistica alemana, fundo en Colonia (Alemania), la empresa de autos Horch en 1899, cuyo primer automovil comenzo a circular por vias publicas en 1901. Despues de algunas dificultades financieras y desavenencias internas, decidio abandonar la compania para crear una nueva fabrica de automoviles. Asi nacio la August Horch ci Motorwagenwerke AG en Zwickau, el 16 de julio de 1909.2 Como Horch perdio la disputa legal por el nombre de la compania, que ya estaba registrado anteriormente, no pudo volver a utilizar su apellido y escogio el nombre Audi, la traduccion al latin del vocablo aleman horch, que en espanol significa oye o escucha.3 Por ello, meses despues de su fundacion cambio el nombre de la compania a Audi Automobilwerke. 
En 1932, ambas companias de Audi y Horch, junto con DKW (fundada en 1907) y Wanderer (fundada en 1896) se fusionaron para formar Auto Union AG y poder hacer frente a las dificultades derivadas de la Gran Depresion de 1929, que afectaba, principalmente a la racionalizacion de los procesos de produccion y ensamblaje. El 29 de junio de 1932, nacio el logotipo de Audi, con cuatro aros entrelazados, como simbolo fruto de la alianza de cuatro marcas sajonas: Audi, DKW, Horch y Wanderer.
Para evitar la competencia dentro del grupo, se asigno a cada marca un segmento especifico del mercado: automoviles de lujo del segmento medio para Audi, motocicletas y coches pequenos para DKW, vehiculos de tamano medio para Wanderer y vehiculos de lujo en la parte mas alta de la gama para Horch.','./imagenes/lateralAudi.png');
Insert into DANI.DETALLES (ID_DETALLE,DESCRIPCION,IMAGEN) values ('mercedes','En los inicios del siglo XX, los automoviles Daimler construidos en Unterturkheim (un distrito de Stuttgart) fueron conducidos de forma exitosa por un distribuidor austriaco llamado Emil Jellinek, que anotaba los automoviles bajo el nombre de su hija, Mercedes. Luego de sugerir ciertas modificaciones de diseno, Jellinek prometio a la compania comprar una gran produccion de sus vehiculos bajo la condicion de tener la garantia de ser el distribuidor exclusivo de Daimler para Austria-Hungria, Francia, Belgica y EE. UU., y de que podria vender el nuevo modelo bajo el nombre de "Mercedes". El cambio de nombre fue muy util para prevenir problemas legales, ya que Daimler habia vendido derechos exclusivos de uso del nombre y los planos tecnicos a companias en el exterior, por lo cual han sido y son construidos coches de lujo en Inglaterra bajo la marca Daimler. Un incendio que destruyo la antigua fabrica de pianos Steinway en Nueva York, que habia sido modernizada para producir autos Mercedes, termino temprano con el sueño de construir Mercedes en los Estados Unidos.','./imagenes/lateralMercedes.png');
REM INSERTING into DANI.EMPLEADOS
SET DEFINE OFF;
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('002G ','JOAQUIN','PEREZ','NOVOA','25028898E','29',to_date('26/10/02','DD/MM/RR'),'FERRARI','MECANICO');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001A ','BEATRIZ','LOPEZ','LOPEZ','12345678A','35',to_date('26/10/02','DD/MM/RR'),'FERRARI','GERENTE');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001B ','PEDRO','ALFRED','SANCHEZ','22345678F','22',to_date('13/08/15','DD/MM/RR'),'MERCEDES','JEFE');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001C ','JUANJOSE','SOLANO','ROMERO','22345678F','22',to_date('19/04/13','DD/MM/RR'),'AUDI','JEFE');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('002B ','ANGEL','GRANDE','SANCHEZ','16895678A','23',to_date('13/08/15','DD/MM/RR'),'MERCEDES','JEFE');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001D ','DANIEL','MUNOZ','GONZALEZ','45254478F','22',to_date('12/09/14','DD/MM/RR'),'BMW','JEFE');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('002C ','GUILLERMO','CAMACHO','VERSE','12455678A','28',to_date('19/04/13','DD/MM/RR'),'AUDI','JEFE');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('002D ','MARTIN','RUSIMOV','RUSO','12387678A','23',to_date('12/09/14','DD/MM/RR'),'BMW','JEFE');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001E ','NATALIA','MONCAYO','DOMINGUEZ','32345678B','24',to_date('12/09/11','DD/MM/RR'),'FERRARI','JEFE');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001F ','LAURA','ROJO','DOMINGUEZ','32395678B','23',to_date('12/03/10','DD/MM/RR'),'FORD','MECANICO');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001G ','KAYLA','FERNANDEZ','MONCAYO','32495678B','27',to_date('15/03/11','DD/MM/RR'),'AUDI','DIRECTORA');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001H ','JAIME','DEPABLO','MARTINEZ','31695618I','26',to_date('26/03/09','DD/MM/RR'),'FORD','MECANICO');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001I ','ALEJANDRO','BEJARANO','RONCERO','51695918B','24',to_date('26/03/09','DD/MM/RR'),'BMW','LIMPIEZA');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001J ','IGNACIO','TAMAYO','GARCIA','51647918Y','28',to_date('05/03/08','DD/MM/RR'),'MERCEDES','LIMPIEZA');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001K ','ANDREA','ROLDAN','EXPOSITO','57677918B','21',to_date('09/07/08','DD/MM/RR'),'FERRARI','SECRETARIA');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001K ','RAUL','BEJARANO','PEREZ','57677918C','23',to_date('09/11/08','DD/MM/RR'),'MERCEDES','SECRETARIA');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001L ','GONZALO','LAURA','RIVERA','57555918C','32',to_date('28/11/07','DD/MM/RR'),'FORD','LIMPIEZA');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001M ','ELENA','AMBROSIO','PEREZ','57588918K','20',to_date('11/11/08','DD/MM/RR'),'LAMBORGHINI','SECRETARIA');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001N ','DANIEL','HERNANDEZ','FERNANDEZ','78988918K','32',to_date('04/04/08','DD/MM/RR'),'LAMBORGHINI','INFORMATICA');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001O ','LUIS','CISNES','GARCIA','78478008L','34',to_date('07/08/11','DD/MM/RR'),'MERCEDES','INFORMATICA');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001P ','LUIS','MESTRE','LERMA','79012008P','29',to_date('01/08/15','DD/MM/RR'),'FERRARI','LIMPIEZA');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001Q ','ALEXIS','SANTACRUZ','AMAYA','79998708A','28',to_date('25/02/14','DD/MM/RR'),'FORD','SECRETARIA');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001R ','RODRIGO','ORTIZ','ECHAWE','99998708J','22',to_date('05/12/13','DD/MM/RR'),'LAMBORGHINI','LIMPIEZA');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001S ','FERNANDO','GONZALEZ','CONDE','99822708T','21',to_date('15/12/11','DD/MM/RR'),'BMW','ALMACEN');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001T ','JORGE','FERNANDEZ','LOSADA','99074708U','25',to_date('25/10/14','DD/MM/RR'),'FORD','ALMACEN');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001U ','MARTA','GONZALEZ','PEDRAZA','78087708S','27',to_date('20/11/14','DD/MM/RR'),'FERRARI','ALMACEN');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001V ','CAROLINA','COSIN','CIFUENTES','79089708Z','26',to_date('27/08/14','DD/MM/RR'),'FERRARI','REPARTIDOR');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001W ','VALENTINA','DOMINGUEZ','MARTIN','79044788H','25',to_date('15/08/11','DD/MM/RR'),'LAMBORGHINI','JEFE');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001X ','JOSE','ROJO','BENITEZ','79796808K','25',to_date('25/06/11','DD/MM/RR'),'LAMBORGHINI','MECANICO');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001Z ','MARINA','MARTINEZ','LOPEZ','79997758O','32',to_date('20/11/12','DD/MM/RR'),'BMW','AUXILIAR');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('002E ','LUISA','GONZALEZ','GONZALEZ','79997778D','27',to_date('21/11/11','DD/MM/RR'),'AUDI','MECANICO');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('002F ','PATRICIA','RODRIGUEZ','TOLAI','79091208D','25',to_date('11/01/06','DD/MM/RR'),'FORD','MECANICO');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('002F ','ALFREDO','BENITEZ','SANCHEZ','12323028A','26',to_date('26/10/02','DD/MM/RR'),'FERRARI','MECANICO');
Insert into DANI.EMPLEADOS (COD_TABAJADOR,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,FECHA_ALT,MARCA,PUESTO) values ('001Y ','YAIZA','MUNOZ','LOPEZ','79587758S','22',to_date('24/07/13','DD/MM/RR'),'FERRARI','AUXILIAR');
REM INSERTING into DANI.EXTRASCOCHES
SET DEFINE OFF;
Insert into DANI.EXTRASCOCHES (COD_EXTRA,TIPO,PRECIO_EXTRA,MATRICULA,MARCA,COD_PROVEEDOR) values ('1    ','GPS','200','0732GXC ','FORD','288  ');
Insert into DANI.EXTRASCOCHES (COD_EXTRA,TIPO,PRECIO_EXTRA,MATRICULA,MARCA,COD_PROVEEDOR) values ('2    ','ABS','200','7420GXT ','FORD','276  ');
Insert into DANI.EXTRASCOCHES (COD_EXTRA,TIPO,PRECIO_EXTRA,MATRICULA,MARCA,COD_PROVEEDOR) values ('3    ','GPS','150','6841AGX ','BMW','276  ');
Insert into DANI.EXTRASCOCHES (COD_EXTRA,TIPO,PRECIO_EXTRA,MATRICULA,MARCA,COD_PROVEEDOR) values ('4    ','CUERO','400','5438SDF ','FERRARI','115  ');
Insert into DANI.EXTRASCOCHES (COD_EXTRA,TIPO,PRECIO_EXTRA,MATRICULA,MARCA,COD_PROVEEDOR) values ('5    ','VISION360','200','7605HXS ','FORD','76   ');
Insert into DANI.EXTRASCOCHES (COD_EXTRA,TIPO,PRECIO_EXTRA,MATRICULA,MARCA,COD_PROVEEDOR) values ('7    ','FIBRADECARBONO','550','4398WDX ','LAMBORGHINI','76   ');
REM INSERTING into DANI.PROMOCIONES
SET DEFINE OFF;
Insert into DANI.PROMOCIONES (COD_PROMOCION,DESCRIPCION,MARCA) values ('1    ','KM0','AUDI');
Insert into DANI.PROMOCIONES (COD_PROMOCION,DESCRIPCION,MARCA) values ('2    ','KM0','BMW');
Insert into DANI.PROMOCIONES (COD_PROMOCION,DESCRIPCION,MARCA) values ('3    ','10%','MERCEDES');
Insert into DANI.PROMOCIONES (COD_PROMOCION,DESCRIPCION,MARCA) values ('3    ','10%','FORD');
REM INSERTING into DANI.PROVEEDOR
SET DEFINE OFF;
Insert into DANI.PROVEEDOR (COD_PROVEEDOR,PAIS,TELEFONO) values ('288  ','Alemania','637907282');
Insert into DANI.PROVEEDOR (COD_PROVEEDOR,PAIS,TELEFONO) values ('276  ','EEUU','685699163');
Insert into DANI.PROVEEDOR (COD_PROVEEDOR,PAIS,TELEFONO) values ('115  ','Dubai','669128220');
Insert into DANI.PROVEEDOR (COD_PROVEEDOR,PAIS,TELEFONO) values ('76   ','Rusia','677652283');
Insert into DANI.PROVEEDOR (COD_PROVEEDOR,PAIS,TELEFONO) values ('364  ','España','627440949');
REM INSERTING into DANI.SEGUROS
SET DEFINE OFF;
Insert into DANI.SEGUROS (IDENTIFICADOR,TIPO,NOMBRE) values ('330       ','TERCEROS','MUTUA');
Insert into DANI.SEGUROS (IDENTIFICADOR,TIPO,NOMBRE) values ('220       ','TERCEROS','QUALITAS');
Insert into DANI.SEGUROS (IDENTIFICADOR,TIPO,NOMBRE) values ('110       ','TERCEROS','LIBERTY');
Insert into DANI.SEGUROS (IDENTIFICADOR,TIPO,NOMBRE) values ('331       ','TERCEROSAMPLIADO','MUTUA');
Insert into DANI.SEGUROS (IDENTIFICADOR,TIPO,NOMBRE) values ('221       ','TERCEROSAMPLIADO','QUALITAS');
Insert into DANI.SEGUROS (IDENTIFICADOR,TIPO,NOMBRE) values ('111       ','TERCEROSAMPLIADO','LIBERTY');
Insert into DANI.SEGUROS (IDENTIFICADOR,TIPO,NOMBRE) values ('333       ','TODORIESGO','MUTUA');
Insert into DANI.SEGUROS (IDENTIFICADOR,TIPO,NOMBRE) values ('223       ','TODORIESGO','QUALITAS');
Insert into DANI.SEGUROS (IDENTIFICADOR,TIPO,NOMBRE) values ('113       ','TODORIESGO','LIBERTY');
Insert into DANI.SEGUROS (IDENTIFICADOR,TIPO,NOMBRE) values ('334       ','TODORIESGOAMPLIADO','MUTUA');
Insert into DANI.SEGUROS (IDENTIFICADOR,TIPO,NOMBRE) values ('224       ','TODORIESGOAMPLIADO','QUALITAS');
Insert into DANI.SEGUROS (IDENTIFICADOR,TIPO,NOMBRE) values ('114       ','TODORIESGOAMPLIADO','LIBERTY');
--------------------------------------------------------
--  DDL for Index PK_CONCESIONARIOS
--------------------------------------------------------

  CREATE UNIQUE INDEX "DANI"."PK_CONCESIONARIOS" ON "DANI"."CONCESIONARIOS" ("MARCA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_COCHESALQUILER
--------------------------------------------------------

  CREATE UNIQUE INDEX "DANI"."PK_COCHESALQUILER" ON "DANI"."COCHESALQUILER" ("MATRICULA_ALQ", "MARCA", "DNI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_COCHESEMPRESA
--------------------------------------------------------

  CREATE UNIQUE INDEX "DANI"."PK_COCHESEMPRESA" ON "DANI"."COCHESEMPRESA" ("MATRICULA_EMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_EMPLEADOS
--------------------------------------------------------

  CREATE UNIQUE INDEX "DANI"."PK_EMPLEADOS" ON "DANI"."EMPLEADOS" ("COD_TABAJADOR", "MARCA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_EXTRASCOCHES
--------------------------------------------------------

  CREATE UNIQUE INDEX "DANI"."PK_EXTRASCOCHES" ON "DANI"."EXTRASCOCHES" ("COD_EXTRA", "MATRICULA", "MARCA", "COD_PROVEEDOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_DETALLES
--------------------------------------------------------

  CREATE UNIQUE INDEX "DANI"."PK_DETALLES" ON "DANI"."DETALLES" ("ID_DETALLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_COMPRA
--------------------------------------------------------

  CREATE UNIQUE INDEX "DANI"."PK_COMPRA" ON "DANI"."COMPRA" ("COD_TABAJADOR", "DNI", "COD_COMPRA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PROMOCIONES
--------------------------------------------------------

  CREATE UNIQUE INDEX "DANI"."PK_PROMOCIONES" ON "DANI"."PROMOCIONES" ("COD_PROMOCION", "MARCA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_CLIENTES
--------------------------------------------------------

  CREATE UNIQUE INDEX "DANI"."PK_CLIENTES" ON "DANI"."CLIENTES" ("DNI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PROVEEDOR
--------------------------------------------------------

  CREATE UNIQUE INDEX "DANI"."PK_PROVEEDOR" ON "DANI"."PROVEEDOR" ("COD_PROVEEDOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_SEGUROS
--------------------------------------------------------

  CREATE UNIQUE INDEX "DANI"."PK_SEGUROS" ON "DANI"."SEGUROS" ("IDENTIFICADOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_COCHES
--------------------------------------------------------

  CREATE UNIQUE INDEX "DANI"."PK_COCHES" ON "DANI"."COCHES" ("MATRICULA", "MARCA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PROVEEDOR
--------------------------------------------------------

  ALTER TABLE "DANI"."PROVEEDOR" ADD CONSTRAINT "PK_PROVEEDOR" PRIMARY KEY ("COD_PROVEEDOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "DANI"."PROVEEDOR" MODIFY ("COD_PROVEEDOR" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."PROVEEDOR" MODIFY ("PAIS" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."PROVEEDOR" MODIFY ("TELEFONO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DETALLES
--------------------------------------------------------

  ALTER TABLE "DANI"."DETALLES" ADD CONSTRAINT "PK_DETALLES" PRIMARY KEY ("ID_DETALLE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "DANI"."DETALLES" MODIFY ("ID_DETALLE" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."DETALLES" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."DETALLES" MODIFY ("IMAGEN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COCHESALQUILER
--------------------------------------------------------

  ALTER TABLE "DANI"."COCHESALQUILER" ADD CONSTRAINT "PK_COCHESALQUILER" PRIMARY KEY ("MATRICULA_ALQ", "MARCA", "DNI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "DANI"."COCHESALQUILER" MODIFY ("MATRICULA_ALQ" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COCHESALQUILER" MODIFY ("ZONA_ALQ" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COCHESALQUILER" MODIFY ("FECHA_RECOGIDA" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COCHESALQUILER" MODIFY ("FECHA_DEVOLUCION" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COCHESALQUILER" MODIFY ("MARCA" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COCHESALQUILER" MODIFY ("DNI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEGUROS
--------------------------------------------------------

  ALTER TABLE "DANI"."SEGUROS" ADD CONSTRAINT "PK_SEGUROS" PRIMARY KEY ("IDENTIFICADOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "DANI"."SEGUROS" MODIFY ("IDENTIFICADOR" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."SEGUROS" MODIFY ("TIPO" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."SEGUROS" MODIFY ("NOMBRE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COCHES
--------------------------------------------------------

  ALTER TABLE "DANI"."COCHES" ADD CONSTRAINT "PK_COCHES" PRIMARY KEY ("MATRICULA", "MARCA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "DANI"."COCHES" MODIFY ("MATRICULA" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COCHES" MODIFY ("MODELO" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COCHES" MODIFY ("POTENCIA" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COCHES" MODIFY ("COMBUSTIBLE" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COCHES" MODIFY ("PRECIO" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COCHES" MODIFY ("MARCA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROMOCIONES
--------------------------------------------------------

  ALTER TABLE "DANI"."PROMOCIONES" ADD CONSTRAINT "PK_PROMOCIONES" PRIMARY KEY ("COD_PROMOCION", "MARCA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "DANI"."PROMOCIONES" MODIFY ("COD_PROMOCION" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."PROMOCIONES" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."PROMOCIONES" MODIFY ("MARCA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COCHESEMPRESA
--------------------------------------------------------

  ALTER TABLE "DANI"."COCHESEMPRESA" ADD CONSTRAINT "PK_COCHESEMPRESA" PRIMARY KEY ("MATRICULA_EMP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "DANI"."COCHESEMPRESA" MODIFY ("MATRICULA_EMP" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COCHESEMPRESA" MODIFY ("ZONA_EMP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMPRA
--------------------------------------------------------

  ALTER TABLE "DANI"."COMPRA" ADD CONSTRAINT "PK_COMPRA" PRIMARY KEY ("COD_TABAJADOR", "DNI", "COD_COMPRA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "DANI"."COMPRA" MODIFY ("MATRICULA" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COMPRA" MODIFY ("COD_TABAJADOR" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COMPRA" MODIFY ("MARCA" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COMPRA" MODIFY ("DNI" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COMPRA" MODIFY ("FECHA_COMPRA" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."COMPRA" MODIFY ("COD_COMPRA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLEADOS
--------------------------------------------------------

  ALTER TABLE "DANI"."EMPLEADOS" ADD CONSTRAINT "PK_EMPLEADOS" PRIMARY KEY ("COD_TABAJADOR", "MARCA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "DANI"."EMPLEADOS" MODIFY ("COD_TABAJADOR" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."EMPLEADOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."EMPLEADOS" MODIFY ("APELLIDO1" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."EMPLEADOS" MODIFY ("APELLIDO2" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."EMPLEADOS" MODIFY ("DNI" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."EMPLEADOS" MODIFY ("EDAD" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."EMPLEADOS" MODIFY ("FECHA_ALT" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."EMPLEADOS" MODIFY ("PUESTO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CONCESIONARIOS
--------------------------------------------------------

  ALTER TABLE "DANI"."CONCESIONARIOS" ADD CONSTRAINT "PK_CONCESIONARIOS" PRIMARY KEY ("MARCA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "DANI"."CONCESIONARIOS" MODIFY ("MARCA" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."CONCESIONARIOS" MODIFY ("ZONA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EXTRASCOCHES
--------------------------------------------------------

  ALTER TABLE "DANI"."EXTRASCOCHES" ADD CONSTRAINT "PK_EXTRASCOCHES" PRIMARY KEY ("COD_EXTRA", "MATRICULA", "MARCA", "COD_PROVEEDOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "DANI"."EXTRASCOCHES" MODIFY ("COD_EXTRA" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."EXTRASCOCHES" MODIFY ("TIPO" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."EXTRASCOCHES" MODIFY ("PRECIO_EXTRA" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."EXTRASCOCHES" MODIFY ("MATRICULA" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."EXTRASCOCHES" MODIFY ("MARCA" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."EXTRASCOCHES" MODIFY ("COD_PROVEEDOR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENTES
--------------------------------------------------------

  ALTER TABLE "DANI"."CLIENTES" ADD CONSTRAINT "PK_CLIENTES" PRIMARY KEY ("DNI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "DANI"."CLIENTES" MODIFY ("DNI" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."CLIENTES" MODIFY ("CORREO" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."CLIENTES" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."CLIENTES" MODIFY ("APELLIDO1" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."CLIENTES" MODIFY ("APELLIDO2" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."CLIENTES" MODIFY ("TELEFONO" NOT NULL ENABLE);
 
  ALTER TABLE "DANI"."CLIENTES" MODIFY ("PASS" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table COCHES
--------------------------------------------------------

  ALTER TABLE "DANI"."COCHES" ADD CONSTRAINT "HAY" FOREIGN KEY ("MARCA")
	  REFERENCES "DANI"."CONCESIONARIOS" ("MARCA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXTRASCOCHES
--------------------------------------------------------

  ALTER TABLE "DANI"."EXTRASCOCHES" ADD CONSTRAINT "CONTIENE" FOREIGN KEY ("MATRICULA", "MARCA")
	  REFERENCES "DANI"."COCHES" ("MATRICULA", "MARCA") ENABLE;
 
  ALTER TABLE "DANI"."EXTRASCOCHES" ADD CONSTRAINT "ENVIA" FOREIGN KEY ("COD_PROVEEDOR")
	  REFERENCES "DANI"."PROVEEDOR" ("COD_PROVEEDOR") ENABLE;
