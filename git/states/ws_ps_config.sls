# Need to install vscode, powercli, github desktop, rvtools, winscp, sqlite, sqlite studio, web browser
# Create Folders and disable the Spooler Service

# Create the Scripts folder
create_folder:
  file.directory:
    - name: 
      - 'C:\\scripts'
      - 'C:\\vCenterInfo'
      - 'C:\\csv'
      - 'C:\\sqlite'
    
# Windows Server Services
stop_service:
  service.dead:
    - name: spooler
    
disable_service:
  service.disabled:
    - name: spooler
    