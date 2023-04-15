# Need to install vscode, powercli, github desktop, rvtools, winscp, sqlite, sqlite studio, web browser

# Install Software
install_software:
  pkg.installed:
    - pkgs:
      - firefox_x64
      - git
      - winscp
      - vscode

copy_rvtools:
  file.managed:
    - name: 'C:\\scripts\\RVTools.msi'
    - source: salt://RVTools.msi

install_rvtools:
  cmd.run:
    - name: 'C:\\scripts\\RVTools.msi /quiet /norestart'
    - shell: cmd

install_PowerCLI:
  cmd.script:
    - name: powercli
    - source: salt://scripts/install-powercli.ps1
    - shell: PowerShell
    
copy_gitdesktop:
  file.managed:
    - name: 'C:\\scripts\\GitHubDesktopSetup-x64.exe'
    - source: salt://GitHubDesktopSetup-x64.exe
    
    
