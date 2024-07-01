import mlflow

# 獲取模型信息
model_name = "staging.my_mlops_project.my_mlops_project-model"

# 獲取模型的所有版本
client = mlflow.tracking.MlflowClient()
versions = client.get_latest_versions(model_name)
for version in versions:
    print(f"Version: {version.version}, Status: {version.current_stage}")
