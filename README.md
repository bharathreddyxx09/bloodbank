# Blood Donation Management System 🩸

[![PHP](https://img.shields.io/badge/PHP-7.4%2B-blue)](https://php.net/) 
[![MySQL](https://img.shields.io/badge/MySQL-5.7%2B-orange)](https://mysql.com/)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

## 📌 Overview
A web-based PHP/MySQL application that connects blood donors with recipients and manages blood bank operations. Developed as a final project for CS 5200: Database Theory Applications.

## ✨ Features
### For Donors
- User registration/profile management
- View patient requests by blood type
- Track donation history
- Locate blood banks/camps

### For Patients
- Submit blood requests
- Search available donors
- Find nearby donation centers

### For Admins
- Manage blood inventory
- Track donations/requests
- Configure blood banks/camps

## 🛠️ Tech Stack
| Component | Technology |
|-----------|------------|
| Frontend  | PHP, HTML5, CSS3, JavaScript |
| Backend   | PHP |
| Database  | MySQL |
| Server    | Apache |

## 🗃️ Database Schema
**8 Key Tables:**
1. `donarregistration` - Donor profiles
2. `donation` - Donation records
3. `requestes` - Patient requests 
4. `camp` - Blood bank/camp info
5. `bloodgroup` - Blood type data
6. `state`/`city` - Location data
7. `users` - System accounts

*(See Appendix B in project report for full ER diagram)*

## 🚀 Installation
```bash
# 1. Clone repository
git clone https://github.com/yourusername/blood-donation-system.git

# 2. Import database (replace credentials)
mysql -u [username] -p bloodbank < database/bloodbank.sql

# 3. Configure connection
nano config/db_config.php
