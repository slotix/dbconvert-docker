# DBConvert docker images

DBConvert tools are the most suitable software solutions for database administrators who need complex migration and synchronization between the most popular DBMS, including MySQL, SQL Server, Oracle, PostgreSQL, and many others.

Find more information about DBConvert software, supported databases, and clouds at https://dbconvert.com  

This repository contains instructions for building and running DBConvert products in Docker container.


## How to build docker image?

```
docker build -t slotix/dbconvert-studio .
```

## How to start docker container?

```
docker run --name studio -it --rm -v "c:\dbconvert-docker\studio\workSettings:C:\PROGRAM FILES\DBCONVERT\DBConvert Studio x64\workSettings" slotix/dbconvert-studio:latest DBConvert.exe /Session:"my2my_copy"
```