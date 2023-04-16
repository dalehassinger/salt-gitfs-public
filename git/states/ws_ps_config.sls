# Need to install vscode, powercli, github desktop, rvtools, winscp, sqlite, sqlite studio, web browser
# Create Folders and disable the Spooler Service

# Create the File Folders
create_folder_scripts:
  file.directory:
    - name: 'C:\\scripts'

create_folder_vCenterInfo:
  file.directory:
    - name: 'C:\\vCenterInfo'

create_folder_csv:
  file.directory:
    - name: 'C:\\csv'

create_folder_sqlite:
  file.directory:
    - name: 'C:\\sqlite'
    
# Windows Server Services
stop_service:
  service.dead:
    - name: spooler
    
disable_service:
  service.disabled:
    - name: spooler
    