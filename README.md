# Receipt Management System

A Flask-based web application for computer repair and printing service professionals to generate customizable, professional receipts efficiently.

## Features

- **Business Information Management**: Easy-to-use admin panel for setting up business details
- **Receipt Generation**: Create professional receipts with itemized services
- **Database Storage**: All receipts are stored with SQLite (default) or PostgreSQL
- **Export Options**: Export receipts to Excel format
- **Print Functionality**: Print individual or all receipts
- **Responsive Design**: Works on desktop and mobile devices

## Quick Start (Windows)

1. **Download the project files** to a folder on your computer
2. **Double-click `start_localhost.bat`** - This will:
   - Check if Python is installed
   - Install required packages automatically
   - Set up the database
   - Start the server at http://localhost:5000

3. **First-time setup**:
   - Go to http://localhost:5000/admin/business
   - Enter your business information (name, contact, location, etc.)
   - This information will appear on all receipts

4. **Start creating receipts**:
   - Go to http://localhost:5000
   - Fill in customer details and services
   - Generate professional receipts

## Manual Setup (Any Operating System)

1. **Install Python 3.7+** from https://python.org
2. **Install required packages**:
   ```bash
   pip install flask flask-sqlalchemy flask-migrate openpyxl psycopg2-binary email-validator gunicorn
   ```
3. **Initialize the database**:
   ```bash
   python -c "from app import app, db; app.app_context().push(); db.create_all()"
   ```
4. **Start the application**:
   ```bash
   python app.py
   ```
5. **Access the application** at http://localhost:5000

## Admin Panel

Access the admin panel at http://localhost:5000/admin to:
- Set up business information
- View receipt statistics
- Export data to Excel
- Print all receipts

## Business Setup

Before creating receipts, configure your business information:
1. Go to **Admin Panel** → **Business Information**
2. Fill in:
   - Business Name
   - Contact Number
   - Business Location
   - Default Technician Name
   - Email (optional)

This information will automatically appear on all generated receipts.

## Usage

1. **Create a Receipt**:
   - Navigate to the home page
   - Enter customer information
   - Add services with descriptions, quantities, and prices
   - Click "Generate Receipt"

2. **View Receipts**:
   - Click "View All Receipts" to see all generated receipts
   - Search and filter receipts by date or customer

3. **Export Data**:
   - Use the admin panel to export all receipts to Excel
   - Print individual receipts or all receipts at once

## System Requirements

- Python 3.7 or higher
- Windows (for the batch file) or any OS with manual setup
- Modern web browser
- 50MB free disk space

## Troubleshooting

**Server won't start**: Make sure Python is installed and in your system PATH

**Database errors**: Delete the `receipts.db` file and restart the application to recreate the database

**Missing packages**: Run the batch file again or manually install packages with pip

## Support

For issues or questions about setup, check that all required packages are installed and Python is properly configured on your system.