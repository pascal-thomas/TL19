# Exercise 1

Objective: Change the default start screen (after login)

Expected duration: 5 minutes

https://github.com/pascal-thomas/TL19

## 1. Downloading and deploying application

First we deploy the supplied application to the author instance.
1. open a terminal
2. cd
3. cp -r /Users/tl19/Downloads/m2 .m2
4. cd $HOME/Downloads/TL19-master/code/TL19/
5. build and deploy the application via this command:  mvn clean install -PautoInstallPackage


## 2. Change the default screen

1. Go to http://localhost:4502/system/console/configMgr
2. Search for 'Day CQ Root Mapping'
3. Here you can set the screen the user gets after login:
- sites -> /sites.html/content
- assets -> /assets.html/content/dam

Test this by log-out/log-in, then you would be redirected to a different page

## 3. Dynamic start page

1. Go to http://localhost:4502/system/console/configMgr
2. Search for 'Day CQ Root Mapping'
3. Set the rootMapping to: '/bin/defaultpage'

When you login with the user: 'varmstrong' (password 'password'), you go directly to Assets -> We-Retail -> English.

If you look at the supplied code, there is a servlet called 'DefaultPageServlet' (package adobesummit.core.servlets).
This servlet is implementing a dynamic startpage depending on the user.

If you want, you can add custom rules yourself, and test this.

Log-out user varmstrong and log-in again with admin/admin.
