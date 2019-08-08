#!/bin/bash
set -euxo pipefail;

echo "Please wait while SQL Server 2017 warms up...";
sleep 13s;

echo "Initializing database after 13 seconds of wait...";

echo "Initializing database script execution...";
/opt/mssql-tools/bin/sqlcmd -S 0.0.0.0 -d $DB_MSSQL_DATABASE -U $DB_MSSQL_USER -P $DB_MSSQL_PASSWORD \
                            -i ./scripts/base.sql \
                            -i ./scripts/procedures.sql \
                            -i ./scripts/views.sql \
                            -i ./scripts/data.sql;

echo "Finished initializing the database.";
