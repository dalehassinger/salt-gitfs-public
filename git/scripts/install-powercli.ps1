# Install VMware PowerCLI
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
install-module vmware.powercli -force -confirm:$false