@echo off
title Receipt System - Local Server
echo ================================================
echo         Receipt System - Local Server
echo ================================================
echo.
echo Starting the receipt management system...
echo.
echo This will start the server on: http://localhost:5000
echo Admin panel will be available at: http://localhost:5000/admin
echo.
echo Press Ctrl+C to stop the server
echo ================================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python 3.7 or higher from https://python.org
    pause
    exit /b 1
)

REM Check if pip is available
pip --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: pip is not available
    echo Please ensure pip is installed with Python
    pause
    exit /b 1
)

REM Install required packages if not already installed
echo Installing/checking required packages...
pip install flask flask-sqlalchemy flask-migrate openpyxl psycopg2-binary email-validator gunicorn pytz werkzeug sqlalchemy

REM Set environment variables for local development
set FLASK_APP=app.py
set FLASK_ENV=development
set FLASK_DEBUG=1
set SESSION_SECRET=local_development_secret_key_123

REM Create database if it doesn't exist
echo.
echo Initializing database...
python -c "from app import app, db; app.app_context().push(); db.create_all(); print('Database initialized successfully!')"

REM Start the Flask application
echo.
echo Starting server at http://localhost:5000
echo.
echo Available endpoints:
echo   - Home/Create Receipt: http://localhost:5000
echo   - Admin Panel: http://localhost:5000/admin
echo   - Business Setup: http://localhost:5000/admin/business
echo   - View Receipts: http://localhost:5000/receipts
echo.
python app.py

pause