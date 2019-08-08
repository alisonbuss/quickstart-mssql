#!/bin/bash
set -euxo pipefail;

echo "Starting database setup...";
/opt/mssql/bin/sqlservr & ./setup/setup-database.sh;
