# 💰 Money Manager – Backend

A secure, scalable **Money Management REST API** built with **Spring Boot**, designed to manage incomes, expenses, and categories with **JWT-based authentication**.  
This backend powers a live full-stack finance application.

🌐 **Live Demo (Frontend):** https://money-manager-web-three.vercel.app/home  

---

## ✨ Key Features

- 🔐 JWT-based Authentication & Authorization
- 👤 User Registration & Login APIs
- 💵 Income Management (CRUD)
- 💸 Expense Management (CRUD)
- 🗂 Income & Expense Categories
- 📊 Download Income & Expense Reports (Excel)
- 📧 Email Excel Reports to Users
- ☁️ Cloudinary Integration for Image Uploads
- 🐳 Docker Multi-stage Build Support
- 🌍 Production-ready Configuration (Profiles)

---

## 🛠 Tech Stack

**Backend**
- Java 17  
- Spring Boot  
- Spring Security (JWT)  
- Spring Data JPA  
- Hibernate  

**Database**
- MySQL / PostgreSQL  

**Build & DevOps**
- Maven  
- Docker  

---

## 📁 Project Structure

src/
├── controller # REST Controllers
├── service # Business Logic
├── repository # JPA Repositories
├── model # Entity Models
├── security # JWT & Security Config
└── config # App Configurations

yaml
Copy code

---

## ⚙️ Environment Configuration

Create `application.properties` or `application-prod.properties`:

```properties
# Database
spring.datasource.url=
spring.datasource.username=
spring.datasource.password=

# JPA
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

# JWT
jwt.secret=

# Email (SMTP)
spring.mail.username=
spring.mail.password=

# Cloudinary
cloudinary.cloud-name=
cloudinary.api-key=
cloudinary.api-secret=
▶️ Run Locally
bash
Copy code
./mvnw spring-boot:run
Backend will start at:

bash
Copy code
http://localhost:8080/api/v1.0
🐳 Docker Support
Build and run the application using Docker:

bash
Copy code
docker build -t money-manager .
docker run -p 8080:8080 money-manager
📌 Use Cases
Personal finance & expense tracking

Base for SaaS finance applications

Real-world Spring Boot + JWT reference

🚀 Why This Project Stands Out
Real production deployment

Secure authentication using JWT

Excel generation + email integration

Dockerized backend

Clean layered architecture

👨‍💻 Author
Tabrez
Java Full Stack Developer

🔗 GitHub: https://github.com/tabrez-tech-09
