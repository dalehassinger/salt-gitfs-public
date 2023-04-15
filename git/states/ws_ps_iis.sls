# Need to install vscode, powercli, github desktop, rvtools, winscp, sqlite, sqlite studio, web browser

# Installs the IIS Web Server Role (Web-Server)
IIS-WebServerRole:
  win_servermanager.installed:
    - recurse: True
    - name: Web-Server
    
install_SSL:
  cmd.script:
    - name: ssl
    - source: salt://scripts/add-selfsigned-ssl.ps1
    - shell: PowerShell
