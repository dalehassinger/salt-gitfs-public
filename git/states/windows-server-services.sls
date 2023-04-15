# State file for VMs created with vRA

stop_service:
  service.dead:
    - name: spooler
    
disable_service:
  service.disabled:
    - name: spooler
