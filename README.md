# TankP E-Commerce Platform

[![GitHub license](https://img.shields.io/github/license/KaneVina/KaneVina-TankP-eCommerce?style=flat-square)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/KaneVina/KaneVina-TankP-eCommerce?style=flat-square)](https://github.com/KaneVina/KaneVina-TankP-eCommerce/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/KaneVina/KaneVina-TankP-eCommerce?style=flat-square)](https://github.com/KaneVina/KaneVina-TankP-eCommerce/network/members)

> The **TankP E-Commerce Project** is a modern, feature-rich e-commerce platform built to provide users with a **smooth and intuitive online shopping experience**, while simultaneously offering sellers a **robust and powerful administration system**.
> Group 5 | PRJ301 | SE1907 | FA25

---

## Table of Contents

1.  [Technology Stack](#1-technology-stack)
2.  [Setup & Installation](#2-setup--installation)
3.  [Configuration](#3-configuration)
4.  [Contact](#4-contact)
5.  [License](#5-license)

---

## 1. Technology Stack

This project is developed using a **Decoupled Architecture**, separating the client-side and server-side components.

### Core Environment & Tools

The project relies on the following key technologies and specific versions:

| Component | Technology | Version | Download Link |
| :--- | :--- | :--- | :--- |
| **Server** | Apache Tomcat | 10.1.44 | [Apache Tomcat 10.1.44](https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.44/bin/apache-tomcat-10.1.44.exe) |
| **Language Runtime** | Java Development Kit (JDK) | 24 | [JDK 24 (Windows x64)](https://download.oracle.com/java/24/latest/jdk-24_windows-x64_bin.exe) |
| **IDE** | Apache NetBeans | 25 | [Apache NetBeans 25 (Windows x64)](https://archive.apache.org/dist/netbeans/netbeans-installers/25/Apache-NetBeans-25-bin-windows-x64.exe) |
| **Database** | MS SQL Server | 2019+ | [SQL Server 2022 Express](https://download.microsoft.com/download/5/1/4/5145fe04-4d30-4b85-b0d1-39533663a2f1/SQL2022-SSEI-Expr.exe) |
| **DB Management** | SSMS | Latest | [SQL Server Management Studio (SSMS)](https://aka.ms/ssms/21/release/vs_SSMS.exe) |

---

## 2. Setup & Installation

To get the TankP platform running locally, ensure you have all **Prerequisites** installed and follow the steps below.

### Prerequisites

* Install **Git**.
* Install **JDK 24**.
* Install **Apache Tomcat 10**.
* Install **MS SQL Server 2019+** and **SSMS**.

### Step-by-Step Guide

1.  **Clone the Repository**
    ```bash
    git clone [ https://github.com/KaneVina/TankP-eCommerce.git]( https://github.com/KaneVina/TankP-eCommerce.git)
    cd TankP-eCommerce
    ```

2.  **Database Setup**
    * Create a new database named `[PLACEHOLDER: TankP_PRJ301]` in SSMS.

3.  **Import and Run in NetBeans**
    * Open **Apache NetBeans 25**.
    * Import the project from the root folder of the cloned repository.
    * Configure the database connection within NetBeans (or project configuration files) to use your MS SQL Server instance.
    * **[PLACEHOLDER: Add a specific step to deploy to Tomcat, e.g., "Right-click the project, select Deploy, and choose Tomcat 10." or "Run the project."]**

> ⚙️ The application should be accessible via your configured Tomcat path, typically: `http://localhost:[PLACEHOLDER: 8080]/TankP`

---

## 3. Configuration

If the project uses external API keys or specific runtime settings, they should be documented here.

### Environment Variables
None


```env.example
# Example configuration keys needed for the project
DB_USER=[sa]
DB_PASS=[123456]
