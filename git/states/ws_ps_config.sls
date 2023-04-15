# Need to install vscode, powercli, github desktop, rvtools, winscp, sqlite, sqlite studio, web browser

# Create the Scripts folder
create_folder:
  file.directory:
    - name: 'C:\\scripts'

# Windows Server Services
stop_service:
  service.dead:
    - name: spooler
    
disable_service:
  service.disabled:
    - name: spooler
    