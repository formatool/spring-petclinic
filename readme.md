# Spring PetClinic Cassandra/Astra Version [![Build Status](https://travis-ci.com/formatool/spring-petclinic.svg?branch=main)](https://travis-ci.com/formatool/spring-petclinic)

[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/formatool/spring-petclinic) 

[Spring PetClinic Sample Application](https://spring-petclinic.github.io/) Cassandra version using a multi-cloud DBaaS built on Apache Cassandra [Datastax Astra](https://astra.datastax.com/)

This project was a fork of the original https://github.com/spring-projects/spring-petclinic for the purpose of demonstrating how to adapt an SQL application to use Cassandra NoSQL DB, with the least possible effort. The data model schema was inspired by the https://github.com/spring-petclinic/spring-petclinic-reactive project, presented in [Workshop FromSQL to NoSQL]( https://www.youtube.com/watch?v=elRWY8-tMbU)

## Create your Astra instance

Before execute that application, you must prepare the database and keyspace at Datastax Astra.

`ASTRA` service is available at url [https://astra.datastax.com](https://dtsx.io/workshop). `ASTRA` is the simplest way to run Cassandra with zero operations at all - just push the button and get your cluster. **No credit card or any payment required**, $25.00 USD credit every month, roughly 5M writes, 30M reads, 40GB storage monthly - **sufficient to run small production workloads**.

### ✅ Step 1. Register (if needed) and Sign In to Astra

Register (if needed) and Sign In to Astra : You can use your `Github`, `Google` accounts or register with an `email`.

Follow this [guide](https://docs.datastax.com/en/astra/docs/creating-your-astra-database.html) and use the values provided below, to set up a pay as you go database with a **FREE** $25 monthly credit.

Use values:

| Parameter | Value 
|---|---|
| Keyspace name | spring_petclinic |

### ✅ Step 2 - Create petclinic NoSQL data model

In the Summary screen for your database, select **_CQL Console_** from the top menu in the main window. This will take you to the CQL Console and automatically log you in.

Execute the contents of the files [src/main/resources/db/cassandra/schema.sql](src/main/resources/db/cassandra/schema.sql) and [src/main/resources/db/cassandra/data.sql](src/main/resources/db/cassandra/data.sql). (*Copy and paste into your CQL Console*)


### ✅ Step 3. Generate your token

If you don't already have one follow the [instructions here](https://docs.datastax.com/en/astra/docs/manage-application-tokens.html#_create_application_token) to generate your new token. **Don't forget to download it once created because you will not be able to see it again** without generating a new one.

### ✅ Step 4. Set your connection informations

Execute the script [setup.sh](/setup.sh) and folow the instructions.

After running the script, you will have filled the environments:

```
export ASTRA_DB_CLIENT_ID=<Client ID Value>
export ASTRA_DB_CLIENT_SECRET=<Client Secret Value>
```

and you will have the Secure Connect Bundle in the file `astra-creds.zip`

## Understanding the Spring Petclinic application with a few diagrams
<a href="https://speakerdeck.com/michaelisvy/spring-petclinic-sample-application">See the presentation here</a>

## Running petclinic locally

After preparing the database and its settings, you are ready to run the application locally.

Petclinic is a [Spring Boot](https://spring.io/guides/gs/spring-boot) application built using [Maven](https://spring.io/guides/gs/maven/). You can build a jar file and run it from the command line:

```
git clone --branch astra-version https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic
./mvnw package
java -jar target/*.jar
```

You can then access petclinic here: http://localhost:8080/

<img width="1042" alt="petclinic-screenshot" src="https://cloud.githubusercontent.com/assets/838318/19727082/2aee6d6c-9b8e-11e6-81fe-e889a5ddfded.png">

Or you can run it from Maven directly using the Spring Boot Maven plugin. If you do this it will pick up changes that you make in the project immediately (changes to Java source files require a compile as well - most people use an IDE for this):

```
./mvnw spring-boot:run
```

## Looking for something in particular?

|Spring Boot Configuration | Class or Java property files  |
|--------------------------|---|
|The Main Class | [PetClinicApplication](/src/main/java/org/springframework/samples/petclinic/PetClinicApplication.java) |
|Properties Files | [application.properties](/src/main/resources) |
|Caching | [CacheConfiguration](/src/main/java/org/springframework/samples/petclinic/system/CacheConfiguration.java) |
|Astra Properties | [application-cassandra.yml](/src/main/resources/application-cassandra.yml) |
|Cassandra Configuration | [application-cassandra.yml](/src/main/java/org/springframework/samples/petclinic/system/CassandraConfig.java) |

## Interesting Spring Petclinic branches and forks

The Spring Petclinic "main" branch in the [spring-projects](https://github.com/spring-projects/spring-petclinic)
GitHub org is the "canonical" implementation, currently based on Spring Boot and Thymeleaf. There are
[quite a few forks](https://spring-petclinic.github.io/docs/forks.html) in a special GitHub org
[spring-petclinic](https://github.com/spring-petclinic). If you have a special interest in a different technology stack
that could be used to implement the Pet Clinic then please join the community there.


## Interaction with other open source projects

One of the best parts about working on the Spring Petclinic application is that we have the opportunity to work in direct contact with many Open Source projects. We found some bugs/suggested improvements on various topics such as Spring, Spring Data, Bean Validation and even Eclipse! In many cases, they've been fixed/implemented in just a few days.
Here is a list of them:

| Name | Issue |
|------|-------|
| Spring JDBC: simplify usage of NamedParameterJdbcTemplate | [SPR-10256](https://jira.springsource.org/browse/SPR-10256) and [SPR-10257](https://jira.springsource.org/browse/SPR-10257) |
| Bean Validation / Hibernate Validator: simplify Maven dependencies and backward compatibility |[HV-790](https://hibernate.atlassian.net/browse/HV-790) and [HV-792](https://hibernate.atlassian.net/browse/HV-792) |
| Spring Data: provide more flexibility when working with JPQL queries | [DATAJPA-292](https://jira.springsource.org/browse/DATAJPA-292) |


# Contributing

The [issue tracker](https://github.com/spring-projects/spring-petclinic/issues) is the preferred channel for bug reports, features requests and submitting pull requests.

For pull requests, editor preferences are available in the [editor config](.editorconfig) for easy use in common text editors. Read more and download plugins at <https://editorconfig.org>. If you have not previously done so, please fill out and submit the [Contributor License Agreement](https://cla.pivotal.io/sign/spring).

# License

The Spring PetClinic sample application is released under version 2.0 of the [Apache License](https://www.apache.org/licenses/LICENSE-2.0).

[spring-petclinic]: https://github.com/spring-projects/spring-petclinic
[spring-framework-petclinic]: https://github.com/spring-petclinic/spring-framework-petclinic
[spring-petclinic-angularjs]: https://github.com/spring-petclinic/spring-petclinic-angularjs 
[javaconfig branch]: https://github.com/spring-petclinic/spring-framework-petclinic/tree/javaconfig
[spring-petclinic-angular]: https://github.com/spring-petclinic/spring-petclinic-angular
[spring-petclinic-microservices]: https://github.com/spring-petclinic/spring-petclinic-microservices
[spring-petclinic-reactjs]: https://github.com/spring-petclinic/spring-petclinic-reactjs
[spring-petclinic-graphql]: https://github.com/spring-petclinic/spring-petclinic-graphql
[spring-petclinic-kotlin]: https://github.com/spring-petclinic/spring-petclinic-kotlin
[spring-petclinic-rest]: https://github.com/spring-petclinic/spring-petclinic-rest
