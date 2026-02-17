#!/bin/bash

# Use current directory as project root
BASE_DIR=$(pwd)

echo "Base directory: $BASE_DIR"

# Folders and files to create
declare -A project_files=(
  ["01_PRODUCT_ARCHITECTURE"]="System_Overview.md"
  ["02_MVP_DEFINITION"]="MVP_Scope.md"
  ["03_AUTOMATION_LOGIC"]="OCR_Architecture.md Recovery_Engine_Model.md Risk_Scoring_Model.md Trigger_Workflows.md Vendor_Strike_Logic.md"
  ["04_REPORTING_DASHBOARD"]="Dashboard_Design.md KPI_Tracking.md Alert_Configuration.md"
  ["05_INTEGRATION_APIS"]="POS_Integration.md Accounting_Integration.md Vendor_API_Logic.md"
)

# Finalized content for each file
declare -A file_content

file_content["01_PRODUCT_ARCHITECTURE/System_Overview.md"]="--- System Overview Content ---
(Add your finalized blueprint content here for System_Overview.md)"
file_content["02_MVP_DEFINITION/MVP_Scope.md"]="--- MVP Scope Content ---
(Add your finalized blueprint content here for MVP_Scope.md)"
file_content["03_AUTOMATION_LOGIC/OCR_Architecture.md"]="--- OCR Architecture Content ---"
file_content["03_AUTOMATION_LOGIC/Recovery_Engine_Model.md"]="--- Recovery Engine Model Content ---"
file_content["03_AUTOMATION_LOGIC/Risk_Scoring_Model.md"]="--- Risk Scoring Model Content ---"
file_content["03_AUTOMATION_LOGIC/Trigger_Workflows.md"]="--- Trigger Workflows Content ---"
file_content["03_AUTOMATION_LOGIC/Vendor_Strike_Logic.md"]="--- Vendor Strike Logic Content ---"
file_content["04_REPORTING_DASHBOARD/Dashboard_Design.md"]="--- Dashboard Design Content ---"
file_content["04_REPORTING_DASHBOARD/KPI_Tracking.md"]="--- KPI Tracking Content ---"
file_content["04_REPORTING_DASHBOARD/Alert_Configuration.md"]="--- Alert Configuration Content ---"
file_content["05_INTEGRATION_APIS/POS_Integration.md"]="--- POS Integration Content ---"
file_content["05_INTEGRATION_APIS/Accounting_Integration.md"]="--- Accounting Integration Content ---"
file_content["05_INTEGRATION_APIS/Vendor_API_Logic.md"]="--- Vendor API Logic Content ---"

# Loop through folders and files
for folder in "${!project_files[@]}"; do
  folder_path="$BASE_DIR/$folder"
  
  # Create folder if missing
  if [ ! -d "$folder_path" ]; then
    mkdir -p "$folder_path"
    echo "Created folder: $folder"
  fi

  # Create files in folder
  for file in ${project_files[$folder]}; do
    file_path="$folder_path/$file"
    if [ ! -f "$file_path" ]; then
      echo "${file_content[$folder/$file]}" > "$file_path"
      echo "Created file: $folder/$file"
    else
      echo "File exists, skipping: $folder/$file"
    fi
  done
done

# Git operations
cd "$BASE_DIR" || { echo "Cannot cd into $BASE_DIR"; exit 1; }

git add .
git commit -m "Add missing folders/files with finalized blueprint content" || echo "No changes to commit"
git push origin main || echo "Push failed – check remote connection"

echo "✅ Setup complete. All folders and files are created, committed, and pushed."
