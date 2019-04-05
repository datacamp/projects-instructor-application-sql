#!/bin/bash

# If bash command fails, build should error out
set -e

cd countries

# Create countries database
createdb -U postgres countries

# Seed the countries database
psql -U postgres countries < countries.sql

cd ..
