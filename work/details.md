# Tested Scripts:
* MS Teams ( Ran as "teams" )
* terraform
* kubectl

# Remina
* Annoying certificate reconfirmations:
    * If remmina keeps asking to "Okay a certificate"
    * This can be disabled in edit -> advanced -> ignore certificate

## Trouble shooting:
* ERRCONNECT_SECURITY_NEGO_CONNECT_FAILED 
    * rm -rf ~/.config/freerdp
    * idk why but this fixes it immediately
