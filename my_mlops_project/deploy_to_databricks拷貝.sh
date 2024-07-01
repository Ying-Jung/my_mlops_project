#!/bin/bash

# 定義變量
WORKSPACE_DIR="/Users/aaronchen@cathayholdings.com.tw/my_project_test"

JOB_ID="522343736153331"  # 替換 your_job_id 為你的 Databricks Job ID

# 上傳本地代碼到 Databricks Workspace
databricks workspace import-dir . $WORKSPACE_DIR
databricks jobs run-now $JOB_ID