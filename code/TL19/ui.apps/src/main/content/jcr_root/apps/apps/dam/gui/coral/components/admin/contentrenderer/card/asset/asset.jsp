Skip to content
This repository
Search
Pull requests
Issues
Marketplace
Explore
 @pascal-thomas
Sign out
39
12 16 Adobe-Marketing-Cloud/Summit2018
 Code  Issues 0  Pull requests 0  Projects 0  Wiki  Insights
You’re editing a file in a project you don’t have write access to. Submitting a change to this file will write it to a new branch in your fork pascal-thomas/Summit2018, so you can send a pull request.
Summit2018/code/L729/ui.apps/src/main/content/jcr_root/apps/dam/gui/coral/components/admin/contentrenderer/card/asset/ 
asset.jsp
  or cancel
    
 
1
<%--
2
  ADOBE CONFIDENTIAL
3
​
4
  Copyright 2015 Adobe Systems Incorporated
5
  All Rights Reserved.
6
​
7
  NOTICE:  All information contained herein is, and remains
8
  the property of Adobe Systems Incorporated and its suppliers,
9
  if any.  The intellectual and technical concepts contained
10
  herein are proprietary to Adobe Systems Incorporated and its
11
  suppliers and may be covered by U.S. and Foreign Patents,
12
  patents in process, and are protected by trade secret or copyright law.
13
  Dissemination of this information or reproduction of this material
14
  is strictly forbidden unless prior written permission is obtained
15
  from Adobe Systems Incorporated.
16
--%>
17
<%@taglib prefix="cq" uri="http://www.day.com/taglibs/cq/1.0"%><%
18
%><%@ page import="org.apache.jackrabbit.util.Text" %><%@include file="/libs/dam/gui/coral/components/admin/contentrenderer/base/init/assetBase.jsp"%>
19
<cq:include script="init.jsp"/><%
20
​
21
String assetActionRels = StringUtils.join(getAssetActionRels(hasJcrRead, hasJcrWrite, hasAddChild, canEdit, canAnnotate, isDownloadAllowedForAdmins, isAssetExpired, isSubAssetExpired, isContentFragment, isArchive), " ");
22
​
23
request.setAttribute("actionRels", actionRels.concat(" " + assetActionRels));
24
if (allowNavigation) {
25
attrs.addClass("foundation-collection-navigator");
26
}
27
%>
28
<cq:include script="link.jsp"/>
29
<%
30
    if (request.getAttribute("com.adobe.assets.card.nav")!=null){
31
        navigationHref =  (String) request.getAttribute("com.adobe.assets.card.nav");
32
        navigationHref = Text.escapePath(navigationHref);
33
    }
34
attrs.add("data-foundation-collection-navigator-href", xssAPI.getValidHref(navigationHref));
35
attrs.add("data-item-type", type);
36
​
37
request.setAttribute("com.adobe.assets.meta.attributes", metaAttrs);
38
​
39
%>
40
<cq:include script = "meta.jsp"/>
41
<coral-card <%= attrs %>>
42
    <coral-card-asset class ="coral-Card-asset">
43
        <cq:include script = "assetViewer.jsp"/>
44
    </coral-card-asset>
45
        <cq:include script = "insight.jsp"/>
46
        <coral-card-content>
47
        <coral-card-context class="coral-Card-context"><%= xssAPI.encodeForHTML(displayMimeType) %></coral-card-context>
48
        <coral-card-title class="foundation-collection-item-title" value="<%= xssAPI.encodeForHTMLAttr(resourceTitle) %>"><%= xssAPI.encodeForHTML(resourceTitle) %></coral-card-title>
49
        <cq:include script = "propertyList.jsp"/>
@pascal-thomas
Propose file change

Update asset.jsp

Add an optional extended description…
 
© 2018 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
API
Training
Shop
Blog
About
Press h to open a hovercard with more details.
