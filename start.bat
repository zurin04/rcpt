@echo off
echo Starting Receipt Generator...
echo.
echo This will start the Flask application on http://localhost:5000
echo Press Ctrl+C to stop the server
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Python is not installed or not in PATH
    echo Please install Python from https://python.org/downloads/
    pause
    exit /b 1
)

REM Check if Flask is installed
python -c "import flask" >nul 2>&1
if %errorlevel% neq 0 (
    echo Installing Flask...
    pip install flask
    if %errorlevel% neq 0 (
        echo Error: Failed to install Flask
        echo Please run: pip install flask
        pause
        exit /b 1
    )
)

REM Set environment variables
set FLASK_APP=app.py
set FLASK_ENV=development
set FLASK_DEBUG=1
set SESSION_SECRET=your-secret-key-here

REM Start the application
echo Starting Flask application...
echo Open your browser and go to: http://localhost:5000
echo.
python app.py

pause
