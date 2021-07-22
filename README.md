# IngestDataFeeds

## Installation / Setup Guide

1. Click "Deploy To Azure" (For both Commercial & Azure GOV)  
   [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FSebmolendijk%2FIngestDataFeeds%2Fazuredeploy.json)
   [![Deploy to Azure Gov](https://aka.ms/deploytoazuregovbutton)](https://portal.azure.us/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FSebmolendijk%2FIngestDataFeeds%2Fmain%2Fazuredeploy.json)

2. Select the preferred **Subscription**, **Resource Group** and **Location**  
   **Note**  
   Best practice : Create new Resource Group while deploying - all the resources of your custom Data connector will reside in the newly created Resource
   Group
3. Enter the following value in the ARM template deployment
   ```
   "Workspace Id": Azure Log Analytics Workspace Id​
   "Workspace Key": Azure Log Analytics Workspace Key
   "AWS Access Key Id": AWS Access Key
   "AWS Secret Key ID": AWS Secret Key
   "AWS Region Name" : AWS SecurityHub Region
   "S3 Bucket": AWS S3 Bucket URI
     - Ex: s3://<<S3 Bucket Name>>/AWSLogs/
   "S3FolderName" : Folder Name in AWS Account folder in S3
     - Ex: CloudTrail/GuardDuty/SecurityHub/DNSLogs
   "CustomLogTableName": Azure Log Analytics Custom Log Table Name
   ```
