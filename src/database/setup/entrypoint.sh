#!/bin/bash
set -euxo pipefail;

if [ $DB_MSSQL_APPLY_DATABASE = 'Y' ]; then
    echo "Starting the SQL Server service and configuration...";
    /opt/mssql/bin/sqlservr & ./setup/setup-database.sh;
else
    echo "Starting the SQL Server...";
    /opt/mssql/bin/sqlservr &
fi
