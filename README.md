# chatgpt-dss

Chat-GPT for DSS with LlamaIndex

## Execution Environment

This program works on Docker. You need to set up [Docker](https://www.docker.com/).

### OS (Container)

* Debian GNU/Linux 10 (buster)

### Python

* 3.9.7

## How to Use

### Prepare a Container

1. Open your terminal.

2. Create `.env` in root directory of this project.

2. Set your OpenAI API key in `.env` like this

    ```
   OPENAI_API_KEY=<YOUR_API_KRY>
   ```

3. Move to root directory of this project.

    ```
   cd ROOT_DIRECTORY
   ```

4. Execute below command to build, create, and start container with detached mode.

    ```
   docker compose up -d --build
   ```

5. Access to `127.0.0.1:8888` on your browser to open Jupyter-Lab.

### Create Context File

We prepare sample context files in `/workspace/resources/context`. If you use the context files, you skip this section.

1. Set your csv file which has URLs for DSS help in this directory `/workspace/resources/help_url`. We prepared a sample file for it. The path is `/workspace/resources/help_url/urls.csv`  
2. Open this file `/workspace/src/createindex.ipynb` to create context for DSS help pages.
3. Set csv file path to CSV_PATH variable.
4. Run all codes in the notebook from the top.

### Query to chat with GPT-4. 
1. Open this file `/workspace/src/query.ipynb` to query to GPT-4.
2. Set a key word on qustion variable to query.
3. Run all codes in the notebook from the top.

## Main Library

[LlamaIndex](https://gpt-index.readthedocs.io/en/latest)