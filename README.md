## Project Repository

This repository contains two main directories:

- **`agent_framework`** → Tools and configurations for an agent-based framework.  
- **`ollama`** → Scripts to set up and run the Ollama Large Language Model (LLM) using Docker.  

This README provides setup instructions for cloning and running the repository using **Docker Compose**.

---

## 📦 Prerequisites

Before you begin, ensure you have:

- [Git](https://git-scm.com/downloads) installed  
- [Docker](https://docs.docker.com/get-docker/) and [Docker Compose](https://docs.docker.com/compose/install/) installed  
- Access to a terminal or command-line interface  

---

## 🚀 Setup Instructions

### 1. Clone the Repository
Clone this repository and navigate into it:
```bash
git clone https://github.com/zouarimootez/TWESD.git
cd TWESD
```
### 2. Set Up Environment Files

Both agent_framework and ollama require .env files.

Copy the provided examples:
```bash
cp agent_framework/.env.example agent_framework/.env
cp ollama/.env.example ollama/.env
```

Edit the .env files:

- Open agent_framework/.env and ollama/.env in a text editor.
- Update variables (e.g., API keys, configuration settings) as needed.
- Refer to comments inside .env.example for guidance.

### 3. Run with Docker Compose

A docker-compose.yml file in the root directory manages services for both directories.

#### Start services:
```bash
docker-compose up -d
```

This will:

- Build and run the Ollama LLM container (from the ollama directory).
- Start any defined services for agent_framework.

#### Stop services:
```bash
docker-compose down
```
### 📝 Notes

- The .gitignore ensures sensitive files (like .env) are not tracked.

- Ensure Docker is running before executing docker-compose up.

- The ollama/start.sh script is not needed when using Docker Compose.

- Python dependencies for agent_framework are assumed to be handled inside Docker.

- - If manual installation is needed, refer to:
```bash
pip install -r agent_framework/requirements.txt
```

---

### 🛠️ Troubleshooting

- Docker issues → Check if Docker/Docker Compose are installed and running.
Use logs for debugging:
```bash
docker-compose logs
```

- Environment file issues → Ensure .env files are correctly configured and free of syntax errors.

- Ollama LLM issues → Check internet connectivity and verify both Dockerfile and docker-compose.yml are valid.

---


For further assistance, see documentation in each directory or open an issue in this repository.