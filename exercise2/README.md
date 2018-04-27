# Exercise 2

Objective: Custom loginscreen presented to users

Expected duration: 15 minutes

In the supplied application at the location /apps/TL19/login there is a custom loginscreen.

## Setting the custom login screen

First we deploy the supplied application, and specify the new loginscreen in the OSGi-settings.

1. open a terminal
2. cd Downloads/TL19-master/code/TL19
3. build and deploy the application via this command:  
mvn clean install -PautoInstallPackage
4. Go to http://localhost:4502/system/console/configMgr
5. Search for 'Adobe Granite Login Selector Authentication Handler'
6. In that configuration screen, set the following value for 'Default Login Page':
/apps/TL19/login
7. Go to another browser and try the custom loginscreen (http://localhost:4502 would bring up the loginpage)

NOTE: See the path changing in your browser from /libs to /apps

## Change the background images

The images are stored at the location /apps/TL19/login/clientlib/resources/bg/default, they are named to the resolution.

(In finder do "Shift+command+G" and fill in                                                             
~/Downloads/TL19-master/code/TL19/ui.apps/src/main/content/jcr_root/apps/TL19/login/clientlib/resources/bg/default)

Use the same image-names when you change the images, otherwise you need to change stylesheets as well.

You can find an examples for your screenresolution at cd Downloads/TL19-master/images

For the desktop, use the following resolutions:
- 2048x1536.jpg
- 1280x768.jpg
- 1024x710.jpg

Once the images are replaced, you need to redeploy your application.
When the application is redeployed, then you can reload the loginpage to see the new background image.

## Customize the login screen
NOTE: The instructions below are done directly in CRX/DE.

Of course you can do them also in your IDE, then deploy into AEM.

Now you can customize it to your own needs.  

Other things your can change:

### Links at the bottom  
/apps/TL19/login/configs/cq/footer/items

### Background images  
/apps/TL19/login/clientlib/resources/bg

### Description in the login form  
/apps/TL19/login/configs/cq/box

### Title of the loginpage  
/apps/TL19/login/configs/cq

### Copyright text  
/apps/TL19/login/configs/cq/footer/copy

## Enabling environment indicator

This enables a handy indicator to show at what environment you are.

1. Go to the OSGi configuration console (localhost:4502/system/console/configMgr)
2. Go the following configuration: ACS AEM Commons - AEM Environment Indicator
3. Set the values as follows:
- color: purple
- CSS override: #acs-commons-env-indicator { 	background-color: #6321D7;  	
color: #FFF;  
position: fixed;
top: 0;
left: 50%;
width: 126px;
margin-left: -63px;
height: 30px;  	
font: bold 18px/29px sans-serif;
text-align: center; 	 	
border: solid 1px black;
border-top-width: 0;
z-index: 100000000000000;
}
- Inner HTML: TL19
- Browser title: TL19

After saving the changes, you will see the indicator being shown on every screen in the author environment.

This is functionality that is provided by "ACS AEM commons", you read more here: https://adobe-consulting-services.github.io/acs-aem-commons/features/environment-indicator/index..html
