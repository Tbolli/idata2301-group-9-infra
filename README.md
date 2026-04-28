# idata2301-group-9-infra

Docker Compose infrastructure for the IDATA2301 project (NTNU).

This repository contains the infrastructure setup for running the full application stack, including backend, frontend, and database services.

---

## Project Structure

```
.
├── backend/                 # ⬅️ Place backend repository here
├── db/
│   ├── 01-schema.sql        # Database schema initialization
│   └── 02-data.sql          # Seed data
├── frontend/                # ⬅️ Place frontend repository here
├── docker-compose.dev.yml   # Development environment
├── docker-compose.prod.yml  # Production environment
└── README.md
```

---

## Important

This repository does NOT include the actual application code.
You must clone the required repositories into the correct folders:

**Backend**
- Clone your backend project into the *backend/* directory:
- `git clone https://github.com/IDATA2301/idata2306-group-9-1`

**Frontend**
- Clone your frontend project into the *frontend/* directory:
- `git clone https://github.com/IDATA2301/idata2301-group-9`

---

## Getting Started

### Prerequisites

* Docker
* Docker Compose (v2+ recommended)

Verify installation:

```bash
docker --version
docker compose version
```

---

## Development Environment

Run the full stack in development mode:

```bash
docker compose -f docker-compose.dev.yml up --build --watch
```

### Features

* Hot reload for backend (Spring DevTools)
* Mounted volumes for live code updates
* Local database with seeded data

---

## Production Environment

Run the production setup:

```bash
docker compose -f docker-compose.prod.yml up --build -d
```

### Features

* Optimized builds (no hot reload)
* Packaged backend (JAR)
* Static frontend served via Nginx
* Reverse proxy for `/api` → backend

---

## Services Overview

| Service  | Description                    | Port   |
| -------- | ------------------------------ | ------ |
| backend  | Spring Boot API                | 8080   |
| frontend | Nginx (static + proxy)         | 80     |
| db       | Database (initialized via SQL) | varies |

---

## Database Initialization

Database is automatically initialized using:

* `01-schema.sql` → creates tables
* `02-data.sql` → inserts test data

These run on container startup.

---

## API Access

Frontend proxies API requests:

```
/api/* → backend:8080
```

Example:

```
http://localhost/api/books
```

---

## Useful Commands

Stop containers:

```bash
docker compose down
```

Rebuild everything:

```bash
docker compose down -v
docker compose up --build
```

View logs:

```bash
docker compose logs -f
```

---

## Notes

* Development and production configs are separated intentionally
* Nginx handles routing and clean URLs in production
* Avoid enabling aggressive caching during development
