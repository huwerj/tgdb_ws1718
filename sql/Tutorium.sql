--------------------------------------------------------
--  Datei erstellt -Montag-September-25-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACCOUNT
--------------------------------------------------------

  CREATE TABLE "ACCOUNT" 
   (	"ACCOUNT_ID" NUMBER(38,0), 
	"SURNAME" VARCHAR2(32), 
	"FORENAME" VARCHAR2(32), 
	"EMAIL" VARCHAR2(32), 
	"C_DATE" DATE, 
	"U_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table ACC_VEHIC
--------------------------------------------------------

  CREATE TABLE "ACC_VEHIC" 
   (	"ACC_VEHIC_ID" NUMBER(38,0), 
	"ACCOUNT_ID" NUMBER(38,0), 
	"VEHICLE_ID" NUMBER(38,0), 
	"IDENTICATOR" VARCHAR2(16), 
	"ALIAS" VARCHAR2(32), 
	"BUY_PRICE" NUMBER(38,2), 
	"BUY_KILOMETER" NUMBER(38,3), 
	"SOLD_PRICE" NUMBER(38,2), 
	"SOLD_KILOMETER" NUMBER(38,3), 
	"REGISTRATION" DATE, 
	"CHECKOUT" DATE, 
	"DEFAULT_GAS_STATION" NUMBER(38,0), 
	"C_DATE" DATE, 
	"D_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table ADDRESS
--------------------------------------------------------

  CREATE TABLE "ADDRESS" 
   (	"ADDRESS_ID" NUMBER(38,0), 
	"PLZ" NUMBER(5,0), 
	"CITY" VARCHAR2(32)
   ) ;
--------------------------------------------------------
--  DDL for Table COUNTRY
--------------------------------------------------------

  CREATE TABLE "COUNTRY" 
   (	"COUNTRY_ID" NUMBER(38,0), 
	"COUNTRY_NAME" VARCHAR2(32), 
	"DUTY_AMOUNT" NUMBER(3,2)
   ) ;
--------------------------------------------------------
--  DDL for Table GAS
--------------------------------------------------------

  CREATE TABLE "GAS" 
   (	"GAS_ID" NUMBER(38,0), 
	"GAS_NAME" VARCHAR2(32)
   ) ;
--------------------------------------------------------
--  DDL for Table GAS_STATION
--------------------------------------------------------

  CREATE TABLE "GAS_STATION" 
   (	"GAS_STATION_ID" NUMBER(38,0), 
	"PROVIDER_ID" NUMBER(38,0), 
	"COUNTRY_ID" NUMBER(38,0), 
	"ADDRESS_ID" NUMBER(38,0), 
	"STREET" VARCHAR2(32)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCER
--------------------------------------------------------

  CREATE TABLE "PRODUCER" 
   (	"PRODUCER_ID" NUMBER(38,0), 
	"PRODUCER_NAME" VARCHAR2(32)
   ) ;
--------------------------------------------------------
--  DDL for Table PROVIDER
--------------------------------------------------------

  CREATE TABLE "PROVIDER" 
   (	"PROVIDER_ID" NUMBER(38,0), 
	"PROVIDER_NAME" VARCHAR2(32)
   ) ;
--------------------------------------------------------
--  DDL for Table RECEIPT
--------------------------------------------------------

  CREATE TABLE "RECEIPT" 
   (	"RECEIPT_ID" NUMBER(38,0), 
	"ACCOUNT_ID" NUMBER(38,0), 
	"ACC_VEHIC_ID" NUMBER(38,0), 
	"DUTY_AMOUNT" NUMBER(3,2), 
	"GAS_ID" NUMBER(38,0), 
	"GAS_STATION_ID" NUMBER(38,0), 
	"PRICE_L" NUMBER(3,2), 
	"KILOMETER" NUMBER(7,2), 
	"LITER" NUMBER(7,2), 
	"RECEIPT_DATE" DATE, 
	"C_DATE" DATE, 
	"U_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table VEHICLE
--------------------------------------------------------

  CREATE TABLE "VEHICLE" 
   (	"VEHICLE_ID" NUMBER(38,0), 
	"VEHICLE_TYPE_ID" NUMBER(38,0), 
	"PRODUCER_ID" NUMBER(38,0), 
	"VERSION" VARCHAR2(32), 
	"DEFAULT_GAS_ID" NUMBER(38,0), 
	"PS" NUMBER(3,0), 
	"BUILD_YEAR" DATE, 
	"DOORS" NUMBER(1,0), 
	"C_DATE" DATE, 
	"U_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table VEHICLE_TYPE
--------------------------------------------------------

  CREATE TABLE "VEHICLE_TYPE" 
   (	"VEHICLE_TYPE_ID" NUMBER(38,0), 
	"VEHICLE_TYPE_NAME" VARCHAR2(32)
   ) ;
REM INSERTING into ACCOUNT
SET DEFINE OFF;
Insert into ACCOUNT (ACCOUNT_ID,SURNAME,FORENAME,EMAIL,C_DATE,U_DATE) values ('1','Pesch','Markus','peschm@fh-trier.de',to_date('15.09.17','DD.MM.RR'),to_date('15.09.17','DD.MM.RR'));
Insert into ACCOUNT (ACCOUNT_ID,SURNAME,FORENAME,EMAIL,C_DATE,U_DATE) values ('2','Mustermann','Max','mustermannm@fh-trier.de',to_date('11.09.17','DD.MM.RR'),to_date('12.09.17','DD.MM.RR'));
Insert into ACCOUNT (ACCOUNT_ID,SURNAME,FORENAME,EMAIL,C_DATE,U_DATE) values ('3','McKinnock','Hugo','mckinnockh@fh-trier.de',to_date('07.09.17','DD.MM.RR'),to_date('07.09.17','DD.MM.RR'));
Insert into ACCOUNT (ACCOUNT_ID,SURNAME,FORENAME,EMAIL,C_DATE,U_DATE) values ('4','Meier','Thorsten','meiert@fh-trier.de',to_date('19.09.17','DD.MM.RR'),to_date('19.09.17','DD.MM.RR'));
Insert into ACCOUNT (ACCOUNT_ID,SURNAME,FORENAME,EMAIL,C_DATE,U_DATE) values ('5','Greifburger','Hilde','greifburgerh@fh-trier.de',to_date('16.09.17','DD.MM.RR'),to_date('17.09.17','DD.MM.RR'));
Insert into ACCOUNT (ACCOUNT_ID,SURNAME,FORENAME,EMAIL,C_DATE,U_DATE) values ('6','Raschek','Volker','raschekv@fh-trier.de',to_date('06.09.17','DD.MM.RR'),to_date('09.09.17','DD.MM.RR'));
Insert into ACCOUNT (ACCOUNT_ID,SURNAME,FORENAME,EMAIL,C_DATE,U_DATE) values ('7','Mertens','Hubert','huberm@fh-trier.de',to_date('10.09.17','DD.MM.RR'),to_date('12.09.17','DD.MM.RR'));
Insert into ACCOUNT (ACCOUNT_ID,SURNAME,FORENAME,EMAIL,C_DATE,U_DATE) values ('8','Simpson','Bart','simpsonb@fh-trier.de',to_date('14.09.17','DD.MM.RR'),to_date('16.09.17','DD.MM.RR'));
Insert into ACCOUNT (ACCOUNT_ID,SURNAME,FORENAME,EMAIL,C_DATE,U_DATE) values ('9','Molitor','Magret','molitorm@fh-trier.de',to_date('01.09.17','DD.MM.RR'),to_date('14.09.17','DD.MM.RR'));
REM INSERTING into ACC_VEHIC
SET DEFINE OFF;
Insert into ACC_VEHIC (ACC_VEHIC_ID,ACCOUNT_ID,VEHICLE_ID,IDENTICATOR,ALIAS,BUY_PRICE,BUY_KILOMETER,SOLD_PRICE,SOLD_KILOMETER,REGISTRATION,CHECKOUT,DEFAULT_GAS_STATION,C_DATE,D_DATE) values ('1','1','1',null,null,'1900',null,null,null,to_date('21.09.17','DD.MM.RR'),null,'1',to_date('19.09.17','DD.MM.RR'),to_date('19.09.17','DD.MM.RR'));
Insert into ACC_VEHIC (ACC_VEHIC_ID,ACCOUNT_ID,VEHICLE_ID,IDENTICATOR,ALIAS,BUY_PRICE,BUY_KILOMETER,SOLD_PRICE,SOLD_KILOMETER,REGISTRATION,CHECKOUT,DEFAULT_GAS_STATION,C_DATE,D_DATE) values ('2','1','12','TR:LL:9','Renner','4000','1650',null,null,to_date('15.09.17','DD.MM.RR'),null,'3',to_date('15.09.17','DD.MM.RR'),to_date('10.09.17','DD.MM.RR'));
REM INSERTING into ADDRESS
SET DEFINE OFF;
Insert into ADDRESS (ADDRESS_ID,PLZ,CITY) values ('1','54292','Trier');
Insert into ADDRESS (ADDRESS_ID,PLZ,CITY) values ('2','54293','Trier');
Insert into ADDRESS (ADDRESS_ID,PLZ,CITY) values ('3','50259','Köln');
Insert into ADDRESS (ADDRESS_ID,PLZ,CITY) values ('4','50672','Köln');
Insert into ADDRESS (ADDRESS_ID,PLZ,CITY) values ('5','50678','Köln');
Insert into ADDRESS (ADDRESS_ID,PLZ,CITY) values ('6','54290','Trier');
Insert into ADDRESS (ADDRESS_ID,PLZ,CITY) values ('7','53879','Euskirchen');
Insert into ADDRESS (ADDRESS_ID,PLZ,CITY) values ('8','53881','Euskirchen');
Insert into ADDRESS (ADDRESS_ID,PLZ,CITY) values ('9','56823','Büchel');
Insert into ADDRESS (ADDRESS_ID,PLZ,CITY) values ('10','54634','Bitburg');
Insert into ADDRESS (ADDRESS_ID,PLZ,CITY) values ('11','54296','Trier');
Insert into ADDRESS (ADDRESS_ID,PLZ,CITY) values ('12','54294','Trier');
REM INSERTING into COUNTRY
SET DEFINE OFF;
Insert into COUNTRY (COUNTRY_ID,COUNTRY_NAME,DUTY_AMOUNT) values ('1','Deutschland','0,19');
Insert into COUNTRY (COUNTRY_ID,COUNTRY_NAME,DUTY_AMOUNT) values ('2','Belgien','0,17');
Insert into COUNTRY (COUNTRY_ID,COUNTRY_NAME,DUTY_AMOUNT) values ('3','Luxemburg','0,09');
Insert into COUNTRY (COUNTRY_ID,COUNTRY_NAME,DUTY_AMOUNT) values ('4','Frankreich','0,21');
REM INSERTING into GAS
SET DEFINE OFF;
Insert into GAS (GAS_ID,GAS_NAME) values ('3','Benzin 104');
Insert into GAS (GAS_ID,GAS_NAME) values ('1','Benzin 95');
Insert into GAS (GAS_ID,GAS_NAME) values ('2','Benzin 98');
Insert into GAS (GAS_ID,GAS_NAME) values ('4','Diesel');
REM INSERTING into GAS_STATION
SET DEFINE OFF;
Insert into GAS_STATION (GAS_STATION_ID,PROVIDER_ID,COUNTRY_ID,ADDRESS_ID,STREET) values ('1','2','1','1','Ruwerer Straße 35');
Insert into GAS_STATION (GAS_STATION_ID,PROVIDER_ID,COUNTRY_ID,ADDRESS_ID,STREET) values ('2','1','1','1','Zurmainerstraße 150');
Insert into GAS_STATION (GAS_STATION_ID,PROVIDER_ID,COUNTRY_ID,ADDRESS_ID,STREET) values ('3','6','1','1','Zurmainerstraße 155-157');
Insert into GAS_STATION (GAS_STATION_ID,PROVIDER_ID,COUNTRY_ID,ADDRESS_ID,STREET) values ('4','4','1','6','Kaiserstraße 30-31');
Insert into GAS_STATION (GAS_STATION_ID,PROVIDER_ID,COUNTRY_ID,ADDRESS_ID,STREET) values ('5','2','1','6','Ostallee 22');
Insert into GAS_STATION (GAS_STATION_ID,PROVIDER_ID,COUNTRY_ID,ADDRESS_ID,STREET) values ('6','6','1','11','Kohlenstraße 51');
Insert into GAS_STATION (GAS_STATION_ID,PROVIDER_ID,COUNTRY_ID,ADDRESS_ID,STREET) values ('7','6','1','2','Servaisstraße 1');
Insert into GAS_STATION (GAS_STATION_ID,PROVIDER_ID,COUNTRY_ID,ADDRESS_ID,STREET) values ('8','6','1','12','Eurener Straße 92');
Insert into GAS_STATION (GAS_STATION_ID,PROVIDER_ID,COUNTRY_ID,ADDRESS_ID,STREET) values ('9','1','1','6','St.-Barbara-Ufer 42');
REM INSERTING into PRODUCER
SET DEFINE OFF;
Insert into PRODUCER (PRODUCER_ID,PRODUCER_NAME) values ('2','BMW');
Insert into PRODUCER (PRODUCER_ID,PRODUCER_NAME) values ('6','Ferrari');
Insert into PRODUCER (PRODUCER_ID,PRODUCER_NAME) values ('10','Ford');
Insert into PRODUCER (PRODUCER_ID,PRODUCER_NAME) values ('8','MAN');
Insert into PRODUCER (PRODUCER_ID,PRODUCER_NAME) values ('13','Moto Guzzi');
Insert into PRODUCER (PRODUCER_ID,PRODUCER_NAME) values ('9','Open');
Insert into PRODUCER (PRODUCER_ID,PRODUCER_NAME) values ('12','Peugeot');
Insert into PRODUCER (PRODUCER_ID,PRODUCER_NAME) values ('5','Porsche');
Insert into PRODUCER (PRODUCER_ID,PRODUCER_NAME) values ('7','Skoda');
Insert into PRODUCER (PRODUCER_ID,PRODUCER_NAME) values ('3','Toyota');
Insert into PRODUCER (PRODUCER_ID,PRODUCER_NAME) values ('1','VW');
Insert into PRODUCER (PRODUCER_ID,PRODUCER_NAME) values ('4','Volvo');
REM INSERTING into PROVIDER
SET DEFINE OFF;
Insert into PROVIDER (PROVIDER_ID,PROVIDER_NAME) values ('2','Aral');
Insert into PROVIDER (PROVIDER_ID,PROVIDER_NAME) values ('3','BP');
Insert into PROVIDER (PROVIDER_ID,PROVIDER_NAME) values ('5','ED');
Insert into PROVIDER (PROVIDER_ID,PROVIDER_NAME) values ('4','Esso');
Insert into PROVIDER (PROVIDER_ID,PROVIDER_NAME) values ('1','Shell');
Insert into PROVIDER (PROVIDER_ID,PROVIDER_NAME) values ('6','Total');
REM INSERTING into RECEIPT
SET DEFINE OFF;
REM INSERTING into VEHICLE
SET DEFINE OFF;
Insert into VEHICLE (VEHICLE_ID,VEHICLE_TYPE_ID,PRODUCER_ID,VERSION,DEFAULT_GAS_ID,PS,BUILD_YEAR,DOORS,C_DATE,U_DATE) values ('1','1','1','Golf 3','1','75',to_date('18.08.94','DD.MM.RR'),'5',to_date('15.09.17','DD.MM.RR'),to_date('15.09.17','DD.MM.RR'));
Insert into VEHICLE (VEHICLE_ID,VEHICLE_TYPE_ID,PRODUCER_ID,VERSION,DEFAULT_GAS_ID,PS,BUILD_YEAR,DOORS,C_DATE,U_DATE) values ('2','1','2','Golf 5','2','120',to_date('15.09.06','DD.MM.RR'),'3',to_date('15.09.17','DD.MM.RR'),to_date('15.09.17','DD.MM.RR'));
Insert into VEHICLE (VEHICLE_ID,VEHICLE_TYPE_ID,PRODUCER_ID,VERSION,DEFAULT_GAS_ID,PS,BUILD_YEAR,DOORS,C_DATE,U_DATE) values ('3','1','12','108','2','125',to_date('07.07.16','DD.MM.RR'),'3',to_date('18.09.17','DD.MM.RR'),to_date('19.09.17','DD.MM.RR'));
Insert into VEHICLE (VEHICLE_ID,VEHICLE_TYPE_ID,PRODUCER_ID,VERSION,DEFAULT_GAS_ID,PS,BUILD_YEAR,DOORS,C_DATE,U_DATE) values ('4','1','12','2008 SUV','3','215',to_date('07.06.15','DD.MM.RR'),'5',to_date('18.06.17','DD.MM.RR'),to_date('12.07.17','DD.MM.RR'));
Insert into VEHICLE (VEHICLE_ID,VEHICLE_TYPE_ID,PRODUCER_ID,VERSION,DEFAULT_GAS_ID,PS,BUILD_YEAR,DOORS,C_DATE,U_DATE) values ('5','1','12','208 GTI','3','260',to_date('09.02.14','DD.MM.RR'),'3',to_date('15.02.16','DD.MM.RR'),to_date('15.02.16','DD.MM.RR'));
Insert into VEHICLE (VEHICLE_ID,VEHICLE_TYPE_ID,PRODUCER_ID,VERSION,DEFAULT_GAS_ID,PS,BUILD_YEAR,DOORS,C_DATE,U_DATE) values ('6','1','12','508 RXH','4','160',to_date('12.12.15','DD.MM.RR'),'5',to_date('16.03.17','DD.MM.RR'),to_date('16.03.17','DD.MM.RR'));
Insert into VEHICLE (VEHICLE_ID,VEHICLE_TYPE_ID,PRODUCER_ID,VERSION,DEFAULT_GAS_ID,PS,BUILD_YEAR,DOORS,C_DATE,U_DATE) values ('7','1','12','Boxer Kombi','4','220',to_date('19.04.13','DD.MM.RR'),'5',to_date('18.08.16','DD.MM.RR'),to_date('18.09.16','DD.MM.RR'));
Insert into VEHICLE (VEHICLE_ID,VEHICLE_TYPE_ID,PRODUCER_ID,VERSION,DEFAULT_GAS_ID,PS,BUILD_YEAR,DOORS,C_DATE,U_DATE) values ('8','1','5','911','3','360',to_date('19.05.16','DD.MM.RR'),'2',to_date('06.06.16','DD.MM.RR'),to_date('09.07.16','DD.MM.RR'));
Insert into VEHICLE (VEHICLE_ID,VEHICLE_TYPE_ID,PRODUCER_ID,VERSION,DEFAULT_GAS_ID,PS,BUILD_YEAR,DOORS,C_DATE,U_DATE) values ('9','1','5','Panamera','3','420',to_date('09.09.14','DD.MM.RR'),'5',to_date('09.04.15','DD.MM.RR'),to_date('09.04.15','DD.MM.RR'));
Insert into VEHICLE (VEHICLE_ID,VEHICLE_TYPE_ID,PRODUCER_ID,VERSION,DEFAULT_GAS_ID,PS,BUILD_YEAR,DOORS,C_DATE,U_DATE) values ('10','1','10','Fiesta','2','75',to_date('03.03.15','DD.MM.RR'),'5',to_date('06.10.16','DD.MM.RR'),to_date('06.10.16','DD.MM.RR'));
Insert into VEHICLE (VEHICLE_ID,VEHICLE_TYPE_ID,PRODUCER_ID,VERSION,DEFAULT_GAS_ID,PS,BUILD_YEAR,DOORS,C_DATE,U_DATE) values ('11','1','10','Mondeo','4','140',to_date('29.06.16','DD.MM.RR'),'5',to_date('04.10.17','DD.MM.RR'),to_date('04.10.17','DD.MM.RR'));
Insert into VEHICLE (VEHICLE_ID,VEHICLE_TYPE_ID,PRODUCER_ID,VERSION,DEFAULT_GAS_ID,PS,BUILD_YEAR,DOORS,C_DATE,U_DATE) values ('12','2','8','TGX','4','590',to_date('27.03.14','DD.MM.RR'),'2',to_date('08.08.15','DD.MM.RR'),to_date('08.08.15','DD.MM.RR'));
Insert into VEHICLE (VEHICLE_ID,VEHICLE_TYPE_ID,PRODUCER_ID,VERSION,DEFAULT_GAS_ID,PS,BUILD_YEAR,DOORS,C_DATE,U_DATE) values ('13','4','13','V11','2','95',to_date('06.04.99','DD.MM.RR'),null,to_date('16.12.03','DD.MM.RR'),to_date('16.12.03','DD.MM.RR'));
REM INSERTING into VEHICLE_TYPE
SET DEFINE OFF;
Insert into VEHICLE_TYPE (VEHICLE_TYPE_ID,VEHICLE_TYPE_NAME) values ('2','LKW');
Insert into VEHICLE_TYPE (VEHICLE_TYPE_ID,VEHICLE_TYPE_NAME) values ('4','Motorrad');
Insert into VEHICLE_TYPE (VEHICLE_TYPE_ID,VEHICLE_TYPE_NAME) values ('1','PKW');
Insert into VEHICLE_TYPE (VEHICLE_TYPE_ID,VEHICLE_TYPE_NAME) values ('5','Quad');
Insert into VEHICLE_TYPE (VEHICLE_TYPE_ID,VEHICLE_TYPE_NAME) values ('3','Traktor');
--------------------------------------------------------
--  DDL for Index COUNTRY_PK_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "COUNTRY_PK_IDX" ON "COUNTRY" ("COUNTRY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ACCOUNT_PK_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ACCOUNT_PK_IDX" ON "ACCOUNT" ("ACCOUNT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RECEIPT_PK_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "RECEIPT_PK_IDX" ON "RECEIPT" ("RECEIPT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index VEHICLE_TYPE_PK_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VEHICLE_TYPE_PK_IDX" ON "VEHICLE_TYPE" ("VEHICLE_TYPE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index GAS_UN_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "GAS_UN_IDX" ON "GAS" ("GAS_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index PROVIDER_UN_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROVIDER_UN_IDX" ON "PROVIDER" ("PROVIDER_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index PRODUCER_UN_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRODUCER_UN_IDX" ON "PRODUCER" ("PRODUCER_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index PRODUCER_PK_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRODUCER_PK_IDX" ON "PRODUCER" ("PRODUCER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index GAS_PK_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "GAS_PK_IDX" ON "GAS" ("GAS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PROVIDER_PK_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROVIDER_PK_IDX" ON "PROVIDER" ("PROVIDER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index COUNTRY_UN_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "COUNTRY_UN_IDX" ON "COUNTRY" ("COUNTRY_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index VEHICLE_TYPE_UN_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VEHICLE_TYPE_UN_IDX" ON "VEHICLE_TYPE" ("VEHICLE_TYPE_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index VEHICLE_PK_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "VEHICLE_PK_IDX" ON "VEHICLE" ("VEHICLE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ACCOUNT_UN_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ACCOUNT_UN_IDX" ON "ACCOUNT" ("EMAIL") 
  ;
--------------------------------------------------------
--  DDL for Index ADDRESS_PK_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADDRESS_PK_IDX" ON "ADDRESS" ("ADDRESS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ACC_VEHIC_PK_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ACC_VEHIC_PK_IDX" ON "ACC_VEHIC" ("ACC_VEHIC_ID") 
  ;
--------------------------------------------------------
--  DDL for Index GAS_STATION_PK_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "GAS_STATION_PK_IDX" ON "GAS_STATION" ("GAS_STATION_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table PRODUCER
--------------------------------------------------------

  ALTER TABLE "PRODUCER" ADD CONSTRAINT "PRODUCER_PK" PRIMARY KEY ("PRODUCER_ID")
  USING INDEX (CREATE UNIQUE INDEX "PRODUCER_PK_IDX" ON "PRODUCER" ("PRODUCER_ID") 
  )  ENABLE;
  ALTER TABLE "PRODUCER" MODIFY ("PRODUCER_ID" NOT NULL ENABLE);
  ALTER TABLE "PRODUCER" MODIFY ("PRODUCER_NAME" NOT NULL ENABLE);
  ALTER TABLE "PRODUCER" ADD CONSTRAINT "PRODUCER_UN" UNIQUE ("PRODUCER_NAME")
  USING INDEX (CREATE UNIQUE INDEX "PRODUCER_UN_IDX" ON "PRODUCER" ("PRODUCER_NAME") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table ACCOUNT
--------------------------------------------------------

  ALTER TABLE "ACCOUNT" ADD CONSTRAINT "ACCOUNT_UK" UNIQUE ("EMAIL")
  USING INDEX (CREATE UNIQUE INDEX "ACCOUNT_UN_IDX" ON "ACCOUNT" ("EMAIL") 
  )  ENABLE;
  ALTER TABLE "ACCOUNT" ADD CONSTRAINT "ACCOUNT_PK" PRIMARY KEY ("ACCOUNT_ID")
  USING INDEX (CREATE UNIQUE INDEX "ACCOUNT_PK_IDX" ON "ACCOUNT" ("ACCOUNT_ID") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table VEHICLE
--------------------------------------------------------

  ALTER TABLE "VEHICLE" MODIFY ("VEHICLE_ID" NOT NULL ENABLE);
  ALTER TABLE "VEHICLE" MODIFY ("VEHICLE_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "VEHICLE" MODIFY ("PRODUCER_ID" NOT NULL ENABLE);
  ALTER TABLE "VEHICLE" MODIFY ("C_DATE" NOT NULL ENABLE);
  ALTER TABLE "VEHICLE" MODIFY ("U_DATE" NOT NULL ENABLE);
  ALTER TABLE "VEHICLE" ADD CONSTRAINT "VEHICLE_PK" PRIMARY KEY ("VEHICLE_ID")
  USING INDEX (CREATE UNIQUE INDEX "VEHICLE_PK_IDX" ON "VEHICLE" ("VEHICLE_ID") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROVIDER
--------------------------------------------------------

  ALTER TABLE "PROVIDER" MODIFY ("PROVIDER_ID" NOT NULL ENABLE);
  ALTER TABLE "PROVIDER" MODIFY ("PROVIDER_NAME" NOT NULL ENABLE);
  ALTER TABLE "PROVIDER" ADD CONSTRAINT "PROVIDER_UN" UNIQUE ("PROVIDER_NAME")
  USING INDEX (CREATE UNIQUE INDEX "PROVIDER_UN_IDX" ON "PROVIDER" ("PROVIDER_NAME") 
  )  ENABLE;
  ALTER TABLE "PROVIDER" ADD CONSTRAINT "PROVIDER_PK" PRIMARY KEY ("PROVIDER_ID")
  USING INDEX (CREATE UNIQUE INDEX "PROVIDER_PK_IDX" ON "PROVIDER" ("PROVIDER_ID") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table COUNTRY
--------------------------------------------------------

  ALTER TABLE "COUNTRY" ADD CONSTRAINT "COUNTRY_PK" PRIMARY KEY ("COUNTRY_ID")
  USING INDEX (CREATE UNIQUE INDEX "COUNTRY_PK_IDX" ON "COUNTRY" ("COUNTRY_ID") 
  )  ENABLE;
  ALTER TABLE "COUNTRY" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
  ALTER TABLE "COUNTRY" MODIFY ("DUTY_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "COUNTRY" ADD CONSTRAINT "COUNTRY_UN" UNIQUE ("COUNTRY_NAME")
  USING INDEX (CREATE UNIQUE INDEX "COUNTRY_UN_IDX" ON "COUNTRY" ("COUNTRY_NAME") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table GAS_STATION
--------------------------------------------------------

  ALTER TABLE "GAS_STATION" ADD CONSTRAINT "GAS_STATION_PK" PRIMARY KEY ("GAS_STATION_ID")
  USING INDEX (CREATE UNIQUE INDEX "GAS_STATION_PK_IDX" ON "GAS_STATION" ("GAS_STATION_ID") 
  )  ENABLE;
  ALTER TABLE "GAS_STATION" MODIFY ("GAS_STATION_ID" NOT NULL ENABLE);
  ALTER TABLE "GAS_STATION" MODIFY ("PROVIDER_ID" NOT NULL ENABLE);
  ALTER TABLE "GAS_STATION" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
  ALTER TABLE "GAS_STATION" MODIFY ("ADDRESS_ID" NOT NULL ENABLE);
  ALTER TABLE "GAS_STATION" MODIFY ("STREET" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VEHICLE_TYPE
--------------------------------------------------------

  ALTER TABLE "VEHICLE_TYPE" ADD CONSTRAINT "VEHICLE_TYPE_PK" PRIMARY KEY ("VEHICLE_TYPE_ID")
  USING INDEX (CREATE UNIQUE INDEX "VEHICLE_TYPE_PK_IDX" ON "VEHICLE_TYPE" ("VEHICLE_TYPE_ID") 
  )  ENABLE;
  ALTER TABLE "VEHICLE_TYPE" MODIFY ("VEHICLE_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "VEHICLE_TYPE" MODIFY ("VEHICLE_TYPE_NAME" NOT NULL ENABLE);
  ALTER TABLE "VEHICLE_TYPE" ADD CONSTRAINT "VEHICLE_TYPE_UN" UNIQUE ("VEHICLE_TYPE_NAME")
  USING INDEX (CREATE UNIQUE INDEX "VEHICLE_TYPE_UN_IDX" ON "VEHICLE_TYPE" ("VEHICLE_TYPE_NAME") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECEIPT
--------------------------------------------------------

  ALTER TABLE "RECEIPT" ADD CONSTRAINT "RECEIPT_PK" PRIMARY KEY ("RECEIPT_ID")
  USING INDEX (CREATE UNIQUE INDEX "RECEIPT_PK_IDX" ON "RECEIPT" ("RECEIPT_ID") 
  )  ENABLE;
  ALTER TABLE "RECEIPT" MODIFY ("RECEIPT_ID" NOT NULL ENABLE);
  ALTER TABLE "RECEIPT" MODIFY ("ACCOUNT_ID" NOT NULL ENABLE);
  ALTER TABLE "RECEIPT" MODIFY ("ACC_VEHIC_ID" NOT NULL ENABLE);
  ALTER TABLE "RECEIPT" MODIFY ("DUTY_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "RECEIPT" MODIFY ("GAS_ID" NOT NULL ENABLE);
  ALTER TABLE "RECEIPT" MODIFY ("GAS_STATION_ID" NOT NULL ENABLE);
  ALTER TABLE "RECEIPT" MODIFY ("PRICE_L" NOT NULL ENABLE);
  ALTER TABLE "RECEIPT" MODIFY ("KILOMETER" NOT NULL ENABLE);
  ALTER TABLE "RECEIPT" MODIFY ("LITER" NOT NULL ENABLE);
  ALTER TABLE "RECEIPT" MODIFY ("C_DATE" NOT NULL ENABLE);
  ALTER TABLE "RECEIPT" MODIFY ("U_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ACC_VEHIC
--------------------------------------------------------

  ALTER TABLE "ACC_VEHIC" MODIFY ("D_DATE" NOT NULL ENABLE);
  ALTER TABLE "ACC_VEHIC" MODIFY ("C_DATE" NOT NULL ENABLE);
  ALTER TABLE "ACC_VEHIC" ADD CONSTRAINT "ACC_VEHIC_PK" PRIMARY KEY ("ACC_VEHIC_ID")
  USING INDEX (CREATE UNIQUE INDEX "ACC_VEHIC_PK_IDX" ON "ACC_VEHIC" ("ACC_VEHIC_ID") 
  )  ENABLE;
  ALTER TABLE "ACC_VEHIC" MODIFY ("ACC_VEHIC_ID" NOT NULL ENABLE);
  ALTER TABLE "ACC_VEHIC" MODIFY ("ACCOUNT_ID" NOT NULL ENABLE);
  ALTER TABLE "ACC_VEHIC" MODIFY ("VEHICLE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADDRESS
--------------------------------------------------------

  ALTER TABLE "ADDRESS" MODIFY ("ADDRESS_ID" NOT NULL ENABLE);
  ALTER TABLE "ADDRESS" MODIFY ("PLZ" NOT NULL ENABLE);
  ALTER TABLE "ADDRESS" MODIFY ("CITY" NOT NULL ENABLE);
  ALTER TABLE "ADDRESS" ADD CONSTRAINT "ADDRESS_PK" PRIMARY KEY ("ADDRESS_ID")
  USING INDEX (CREATE UNIQUE INDEX "ADDRESS_PK_IDX" ON "ADDRESS" ("ADDRESS_ID") 
  )  ENABLE;
--------------------------------------------------------
--  Constraints for Table GAS
--------------------------------------------------------

  ALTER TABLE "GAS" ADD CONSTRAINT "GAS_PK" PRIMARY KEY ("GAS_ID")
  USING INDEX (CREATE UNIQUE INDEX "GAS_PK_IDX" ON "GAS" ("GAS_ID") 
  )  ENABLE;
  ALTER TABLE "GAS" MODIFY ("GAS_ID" NOT NULL ENABLE);
  ALTER TABLE "GAS" MODIFY ("GAS_NAME" NOT NULL ENABLE);
  ALTER TABLE "GAS" ADD CONSTRAINT "GAS_UN" UNIQUE ("GAS_NAME")
  USING INDEX (CREATE UNIQUE INDEX "GAS_UN_IDX" ON "GAS" ("GAS_NAME") 
  )  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ACC_VEHIC
--------------------------------------------------------

  ALTER TABLE "ACC_VEHIC" ADD CONSTRAINT "ACC_VEHIC_ACCOUNT_FK" FOREIGN KEY ("ACCOUNT_ID")
	  REFERENCES "ACCOUNT" ("ACCOUNT_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ACC_VEHIC" ADD CONSTRAINT "ACC_VEHIC_GAS_STATION_FK" FOREIGN KEY ("DEFAULT_GAS_STATION")
	  REFERENCES "GAS_STATION" ("GAS_STATION_ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "ACC_VEHIC" ADD CONSTRAINT "ACC_VEHIC_VEHICLE_FK" FOREIGN KEY ("VEHICLE_ID")
	  REFERENCES "VEHICLE" ("VEHICLE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GAS_STATION
--------------------------------------------------------

  ALTER TABLE "GAS_STATION" ADD CONSTRAINT "GAS_STATION_ADDRESS_FK" FOREIGN KEY ("ADDRESS_ID")
	  REFERENCES "ADDRESS" ("ADDRESS_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "GAS_STATION" ADD CONSTRAINT "GAS_STATION_COUNTRY_FK" FOREIGN KEY ("COUNTRY_ID")
	  REFERENCES "COUNTRY" ("COUNTRY_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "GAS_STATION" ADD CONSTRAINT "GAS_STATION_PROVIDER_FK" FOREIGN KEY ("PROVIDER_ID")
	  REFERENCES "PROVIDER" ("PROVIDER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECEIPT
--------------------------------------------------------

  ALTER TABLE "RECEIPT" ADD CONSTRAINT "RECEIPT_ACCOUNT_FK" FOREIGN KEY ("ACCOUNT_ID")
	  REFERENCES "ACCOUNT" ("ACCOUNT_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "RECEIPT" ADD CONSTRAINT "RECEIPT_ACC_VEHIC_FK" FOREIGN KEY ("ACC_VEHIC_ID")
	  REFERENCES "ACC_VEHIC" ("ACC_VEHIC_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "RECEIPT" ADD CONSTRAINT "RECEIPT_GAS_FK" FOREIGN KEY ("GAS_ID")
	  REFERENCES "GAS" ("GAS_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VEHICLE
--------------------------------------------------------

  ALTER TABLE "VEHICLE" ADD CONSTRAINT "VEHICLE_GAS_STATION_FK" FOREIGN KEY ("DEFAULT_GAS_ID")
	  REFERENCES "GAS" ("GAS_ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "VEHICLE" ADD CONSTRAINT "VEHICLE_PRODUCER_FK" FOREIGN KEY ("PRODUCER_ID")
	  REFERENCES "PRODUCER" ("PRODUCER_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "VEHICLE" ADD CONSTRAINT "VEHICLE_VEHICLE_TYPE_FK" FOREIGN KEY ("VEHICLE_TYPE_ID")
	  REFERENCES "VEHICLE_TYPE" ("VEHICLE_TYPE_ID") ON DELETE CASCADE ENABLE;
