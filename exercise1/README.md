# [Exercise 1](exercise1/README.md)
Objective: Change the default start screen (after login)

Expected duration: 5 minutes

## [1. Deploying application](exercise1/README.md)
First we deploy the supplied application to the author instance.

1. open a terminal
2. go to $CODE: cd $CODE
3. build and deploy the application via this command:
mvn clean install -PautoInstallPackage


2. Change the default screen
Go to http://localhost:4502/system/console/configMgr
Search for 'Day CQ Root Mapping'
Here you can set the screen the user gets after login:
sites -> /sites.html/content
assets -> /assets.html/content/dam
Test this by log-out/log-in, then you would be redirected to a different page

3. Dynamic start page
Go to http://localhost:4502/system/console/configMgr
Search for 'Day CQ Root Mapping'
Set the rootMapping to: '/bin/defaultpage'
When you login with the user: 'varmstrong' (password 'varmstrong'), you go directly to Assets -> We-Retail -> English.

If you look at the supplied code, there is a servlet called 'DefaultPageServlet' (package adobesummit.core.servlets). This servlet is implementing a dynamic startpage depending on the user.

If you want, you can add custom rules yourself, and test this.
