# SynapsePauseResumeScale
A repo to contain the Json for 3 ADF pipelines, and a dataset. 

Prerequisites 
  - Azure SQL DB 
    - Ability to create objects and insert/read data
  - Azure Data Factory 
    - Azure SQL DB Linked Service within ADF
  - Azure Synapse Analytics 
  - Ability to grant RBAC within Subscription

adf_databaseserver.sql - contains the TSQL to create the database schema and table needed for the ADF pipelines, it also contains a insert statement ready for the needed values to be inserted ready to run the meta data pipelines. 

Application - contains the JSON needed to consume data from the database table - passing in parameters for the schema and table for the above table pass 

ScalePool - contains the JSON needed to create the lookup, foreach loop and dynamically build the URL and call to the REST API to complete the Scale simply pass the parameter of the to be scale size of the Synapse Pool ie DW100c. Bare in mind the Pool needs to be in a Resumed state to scale.

ResumePool - contains the JSON needed to create the lookup, foreach loop and dynamically build the URL and call to the REST API to Resume the Synapse Pool

PausePool - contains the JSON needed to create the lookup, foreach loop and dynamically build the URL and call to the REST API to Pause the Synapse Pool
