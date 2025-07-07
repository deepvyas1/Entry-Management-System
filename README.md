# 🏢 Web-Based Entry Management System

A lightweight, web-based application to manage visitor check-ins and check-outs in an office or building. The system records guest and host details, triggers real-time email notifications, and logs all entry/exit events securely in a MySQL database.

---

## 📌 Features

- ✅ Guest check-in with name, email, and phone number
- ✅ Host detail submission and email notification
- ✅ Real-time check-in timestamp recording
- ✅ Easy check-out process with automatic email sent to the guest
- ✅ Full visit details logged: guest/host info, check-in/out time
- ✅ Admin-friendly database structure using MySQL

---

## 🖥️ Technologies Used

| Layer        | Tech Stack                     |
|--------------|-------------------------------|
| **Frontend** | HTML, CSS, JavaScript          |
| **Backend**  | PHP                            |
| **Database** | MySQL via phpMyAdmin           |
| **Email**    | PHP `mail()` function          |

---

## 🧭 Workflow Overview

1. 🏠 **Landing Page**: Displays "Entry Management System"
2. 👤 **Step 1 - Guest Details**:
   - Guest enters **Name**, **Email**, and **Phone**
   - Clicks **"Next"**
3. 📇 **Step 2 - Host Details**:
   - Guest enters **Host Name**, **Email**, and **Phone**
   - Clicks **"Submit"**
4. 📬 **Notification**:
   - Email sent to host with all guest details
   - Guest info stored in the database (status = `1`, i.e., checked-in)
5. 🕓 **Checkout**:
   - Guest clicks **"Checkout"**
   - Status set to `0`, checkout time recorded
   - Email with full visit details sent to the guest

---

## 🗂️ Project Structure

```
entry-management-system/
│
├── Entry Management System.html # Main HTML form
├── entry.php # Handles check-in, DB insert, and email to host
├── checkout.php # Handles guest checkout and email to guest
├── entry_management.sql # SQL file
```
---

## 🗃️ Database Schema (`entered` table)

| Field         | Type          | Description                       |
|---------------|---------------|-----------------------------------|
| `id`          | INT (PK)      | Auto-increment primary key        |
| `name`        | VARCHAR       | Guest name                        |
| `email`       | VARCHAR       | Guest email                       |
| `phone`       | VARCHAR       | Guest phone                       |
| `host_name`   | VARCHAR       | Host name                         |
| `host_email`  | VARCHAR       | Host email                        |
| `host_phone`  | VARCHAR       | Host phone                        |
| `checkin`     | DATETIME      | Check-in time                     |
| `checkout`    | DATETIME      | Check-out time                    |
| `status`      | TINYINT       | 1 = Checked in, 0 = Checked out   |

> 📌 Use the provided `entry_management.sql` file to import the schema directly into your MySQL database.

---

## 🚀 Getting Started

### 🧰 Prerequisites

- PHP server (XAMPP/WAMP/LAMP)
- MySQL or phpMyAdmin
- Mail function configured in PHP (for email to work)

### 🔧 Setup

htdocs/entry-management-system/

```
1. Clone/download the repo into your web server directory:
2. Import the `entry_management.sql` file into phpMyAdmin
3. Update email settings (if required) in `php.ini`
4. Start the server and open:
```


---

## 🧠 Future Enhancements

- 🔐 Admin dashboard for managing entries
- 📦 Export to CSV/PDF
- 📲 SMS notifications via Twilio
- 🧾 Daily summary emails to admins
- 📸 Webcam-based guest photo capture
- 📍 QR code for guest self-checkout

---

## 📄 License

This project is licensed under the [MIT License](LICENSE)

---

## 👤 Author

**Deep Vyas**  
[GitHub: @deepvyas1](https://github.com/deepvyas1)

