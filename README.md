# Small Modular Reactor (SMR) Database Security Project

## Overview

This project focuses on ensuring the security of databases used in Small Modular Reactors (SMR). The aim is to analyze, develop, and implement robust security measures to protect sensitive data related to the operation and management of SMRs.

## Features

- Analysis of SMR technical characteristics and their impact on database structure and functionality
- Identification of potential security threats and development of security measures
- Implementation of database security requirements for SMRs
- Modern approaches to database security in the context of nuclear energy
- Automation of data collection for online monitoring of nuclear power plants
- Distributed database systems management and optimization

## Getting Started

### Prerequisites

- Docker
- PostgreSQL
- Basic knowledge of SQL and database management

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/smr-database-security.git
   cd smr-database-security
   ```
2. **Set up Docker containers:**
   ```bash
   docker-compose up -d
   ```
3. **Initialize the database:**
   ```bash
   docker-compose exec db psql -U postgres -f /docker-entrypoint-initdb.d/master-init.sql
   ```
4. **Accessing the database:**
 ```bash
   docker-compose exec db psql -U postgres
```

## Security Measures
- Use of parameterized queries and prepared statements to prevent SQL Injection
- Data validation and sanitization
- Implementation of ORM (Object-Relational Mapping)
- Regular software updates and patches
- Encryption of sensitive data
- Authentication and authorization configuration

## Contribution
Contributions are welcome! Please submit a pull request or open an issue for any feature requests or bug reports.


-------------------------------------------------
This project is licensed under the MIT License.

