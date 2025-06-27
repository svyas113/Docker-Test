# PostgreSQL Co-Pilot

This repository contains the necessary files to run the PostgreSQL Co-Pilot application using Docker.

## Prerequisites

*   **Docker Desktop:** Make sure Docker Desktop is installed and **running** before you execute the script. You can download it from [here](https://www.docker.com/products/docker-desktop/).
*   An accessible PostgreSQL database.

## How to Run

1.  Clone this repository or download the files (`docker-compose.yml`, `run.sh`, `run.bat`).
2.  Open your terminal in the directory containing these files.
3.  Execute the appropriate script for your operating system:

    *   **For Linux and macOS:**
        ```bash
        chmod +x run.sh
        ./run.sh
        ```
    *   **For Windows (Command Prompt or PowerShell):**
        ```cmd
        .\run.bat
        ```

The first time you run the application, it will pull the Docker image from Docker Hub and then guide you through an interactive setup process in your terminal to configure your LLM provider.

## Persistent Data

Your application data, including configuration, conversation history, and learned insights, will be stored in two directories that are automatically created in the same folder as the scripts:

*   `./memory/`
*   `./approved_sql/`

This ensures your data is safe and persists between application runs.
