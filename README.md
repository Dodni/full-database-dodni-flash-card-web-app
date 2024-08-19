# Card Database Setup

This guide provides instructions on how to set up and manage the `card` MySQL database, originally located at `/Applications/XAMPP/xamppfiles/var/mysql/card` on a macOS system.

## Prerequisites

- **XAMPP:** Ensure you have XAMPP installed on your macOS system. XAMPP includes MySQL, which is required to manage the database.
- **Terminal Access:** You'll need terminal access to manage files and run commands.
- **Git:** If you plan to track changes using Git, ensure that Git is installed and configured on your system.

## Setup Instructions

### Step 1: Move the `card` Database Directory

1. **Locate the Original Database Directory:**
   - The `card` database files are located at `/Applications/XAMPP/xamppfiles/var/mysql/card`.

2. **Move the Directory (Optional):**
   - If necessary, move the `card` folder to a new location where you have full read/write permissions. For example:
     ```bash
     sudo mv /Applications/XAMPP/xamppfiles/var/mysql/card /desired/new/path/card
     ```

3. **Update MySQL Configuration (Optional):**
   - If you moved the `card` database directory, update the MySQL configuration to point to the new location. Edit the MySQL configuration file (typically `my.cnf` or `my.ini`):
     ```bash
     sudo nano /Applications/XAMPP/xamppfiles/etc/my.cnf
     ```
   - Update the `datadir` entry to the new path:
     ```ini
     datadir = /desired/new/path/card
     ```
   - Restart MySQL:
     ```bash
     sudo /Applications/XAMPP/xamppfiles/bin/mysql.server restart
     ```

### Step 2: Set Permissions

1. **Set Directory Permissions:**
   - Ensure the `card` directory has the correct permissions for MySQL to read/write data. Typically, MySQL runs under the `_mysql` user. Adjust the ownership and permissions as follows:
     ```bash
     sudo chown -R _mysql:_mysql /Applications/XAMPP/xamppfiles/var/mysql/card
     sudo chmod -R 755 /Applications/XAMPP/xamppfiles/var/mysql/card
     ```

### Step 3: Verify the Database

1. **Access phpMyAdmin:**
   - Open your browser and navigate to `http://localhost/phpmyadmin`.
   - Ensure the `card` database appears in the list of available databases.

2. **Test Database Access:**
   - Run a simple SQL query in phpMyAdmin to ensure the database is functioning correctly:
     ```sql
     SELECT * FROM `users`;  -- Replace `users` with an actual table name in your database
     ```

### Step 4: Initialize Git for Version Control (Optional)

1. **Create a Git Repository:**
   - Navigate to a directory where you want to track the database changes, such as an export directory:
     ```bash
     mkdir ~/my_database_repository
     cd ~/my_database_repository
     git init
     ```

2. **Export the Database:**
   - Use phpMyAdmin or the command line to export the `card` database to an SQL file:
     ```bash
     mysqldump -u [username] -p card > card_database.sql
     ```

3. **Add the SQL File to Git:**
   - Add the exported SQL file to your Git repository:
     ```bash
     git add card_database.sql
     git commit -m "Initial commit of the card database"
     ```

4. **Track Changes:**
   - After making changes to the database, export the updated state and commit the changes to Git.

## Troubleshooting

- **Permission Denied Errors:**
  - If you encounter permission issues, double-check the directory permissions and ownership.

- **MySQL Connection Issues:**
  - If MySQL cannot find the `card` database, ensure the `datadir` configuration is correct and that MySQL has been restarted after any changes.

## License

This repository is intended for managing the `card` database. Ensure compliance with your project's licensing and data management policies.
