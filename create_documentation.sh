#!/bin/sh
sqlite3 AdventureWorks.db <<EOF
.database
.tables
.mode html
.output adventureworks_docs.html
.headers on
.tables
SELECT "Number of rows in DimCurrency";
SELECT count(1) from DimCurrency;
SELECT "Number of rows in DimCustomer";
SELECT count(1) from DimCustomer;
SELECT "Number of rows in DimDate";
SELECT count(1) from DimDate;
SELECT "Number of rows in DimDepartmentGroup";
SELECT count(1) from DimDepartmentGroup;
SELECT "Number of rows in DimEmployee";
SELECT count(1) from DimEmployee;
SELECT "Number of rows in DimGeography";
SELECT count(1) from DimGeography;
SELECT "Number of rows in DimOrganization";
SELECT count(1) from DimOrganization;
SELECT "Number of rows in DimProduct";
SELECT count(1) from DimProduct;
SELECT "Number of rows in DimProductCategory";
SELECT count(1) from DimProductCategory;
SELECT "Number of rows in DimProductSubCategory";
SELECT count(1) from DimProductSubCategory;
SELECT "Number of rows in DimPromotion";
SELECT count(1) from DimPromotion;
SELECT "Number of rows in DimReseller";
SELECT count(1) from DimReseller;
SELECT "Number of rows in DimSalesReason";
SELECT count(1) from DimSalesReason;
SELECT "Number of rows in DimSalesTerritory";
SELECT count(1) from DimSalesTerritory;
SELECT "Number of rows in FactCurrencyRate";
SELECT count(1) from FactCurrencyRate;
SELECT "Number of rows in FactInternetSales";
SELECT count(1) from FactInternetSales;
SELECT "Number of rows in FactInternetSalesReason";
SELECT count(1) from FactInternetSalesReason;
SELECT "Number of rows in FactResellerSales";
SELECT count(1) from FactResellerSales;
SELECT "Number of rows in FactSurveyResponse";
SELECT count(1) from FactSurveyResponse;

SELECT sql from sqlite_master where name in
('DimCurrency','DimProductCategory', 'FactInternetSalesReason',
'DimCustomer','DimProductSubcategory','FactResellerSales',      
'DimDate','DimPromotion','FactSurveyResponse',   
'DimDepartmentGroup','DimReseller',   
'DimEmployee','DimSalesReason',      
'DimGeography','DimSalesTerritory',    
'DimOrganization','FactCurrencyRate',
'DimProduct','FactInternetSales');
.print List of Database Tables
.print ------------------------------------
.tables
.print DimCustumer Table
.print ------------------------------------
PRAGMA table_info('DimCustomer');
.print DimCurrency Table
.print ------------------------------------
PRAGMA table_info('DimCurrency');
.print DimDate Table
.print ------------------------------------
PRAGMA table_info('DimDate');
.print DimDepartmentGroup Table
.print ------------------------------------
PRAGMA table_info('DimDepartmentGroup');
.print DimSalesTerritory Table
.print ------------------------------------
PRAGMA table_info('DimSalesTerritory');
.print DimGeography Table
.print ------------------------------------
PRAGMA table_info('DimGeography');
.print DimEmployee Table
.print ------------------------------------
PRAGMA table_info('DimEmployee');
.print DimOrganization Table
.print ------------------------------------
PRAGMA table_info('DimOrganization');
.print DimProductCategory Table
.print ------------------------------------
PRAGMA table_info('DimProductCategory');
.print DimProductSubcategory Table
.print ------------------------------------
PRAGMA table_info('DimProductSubcategory');
.print DimProduct Table
.print ------------------------------------
PRAGMA table_info('DimProduct');
.print DimPromotion Table
.print ------------------------------------
PRAGMA table_info('DimPromotion');
.print DimSalesReason Table
.print ------------------------------------
PRAGMA table_info('DimSalesReason');
.print FactCurrencyRate Table
.print ------------------------------------
PRAGMA table_info('FactCurrencyRate');
.print FactInternetSales Table
.print ------------------------------------
PRAGMA table_info('FactInternetSales');
.print FactInternetSalesReason Table
.print ------------------------------------
PRAGMA table_info('FactInternetSalesReason');
.print FactSurveyResponse Table
.print ------------------------------------
PRAGMA table_info('FactSurveyResponse');
.print DimReseller Table
.print ------------------------------------
PRAGMA table_info('DimReseller');
.print FactResellerSales Table
.print ------------------------------------
PRAGMA table_info('FactResellerSales');
EOF