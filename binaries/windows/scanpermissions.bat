@ECHO OFF
set JFROG_CLI_HOME_DIR=%USERPROFILE%\.jfrog-docker-desktop-extension

%~dp0jf xr curl -X POST -H "Content-Type:application/json" -d {\"component_details\":[{\"component_id\":\"testComponent\"}]} api/v1/summary/component -s --output nul -w %%{http_code}
