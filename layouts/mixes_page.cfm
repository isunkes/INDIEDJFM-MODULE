<!---
/**
********************************************************************************
ContentBox - A Modular Content Platform
Copyright 2012 by Luis Majano and Ortus Solutions, Corp
www.gocontentbox.org | www.luismajano.com | www.ortussolutions.com
********************************************************************************
Apache License, Version 2.0

Copyright Since [2012] [Luis Majano and Ortus Solutions,Corp]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
********************************************************************************
*/
--->
<cfoutput>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<!--- Site Title --->
	<title>
		INDIEDJ.FM
	</title>

	<!--- Met Tags --->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="generator" 	 content="ContentBox powered by ColdBox" />
	<meta name="robots" 	 content="index,follow" />

	<!--- Meta Description By Page or By Site --->
	<meta name="description" content="DJ Mixes" />
	
	<meta name="keywords" 	 content="" />
	

	<!--- Base HREF for SES enabled URLs --->
	<base href="#prc.cb.siteBaseURL()#" />

	<!--- styles --->
	<link href="modules/contentbox/layouts/indiedjfm/includes/css/main.css" rel="stylesheet" type="text/css" />

	<!--- javascript --->
	<script type="text/javascript" src="modules/contentbox/layouts/indiedjfm/includes/js/jquery.tools.min.js"></script>
	<script type="text/javascript" src="modules/contentbox/layouts/indiedjfm/includes/js/Arial.font.js"></script>
	<script type="text/javascript" src="modules/contentbox/layouts/indiedjfm/includes/js/default.js"></script>

	
	
</head>
<body>
	
	<div id="bg">
		<div class="wrap">

			<!-- logo -->
			<div id="header"><h1 class="bebas"><a href="">INDIEDJ.FM</a></h1></div>
			<!-- /logo -->

			<!-- menu -->
			<div id="mainmenu">
				<!---#prc.cb.quickView("_menu")#--->
			</div>
			<!-- /menu -->

			<!-- main -->
			<div id="main">
				#renderView()#
			</div>
			<!-- /main -->

			<!-- side -->
			<div id="side">
				<!---#prc.cb.quickView("_pagesidebar")#--->
			</div>
			<!-- /side -->
		</div>

		<!-- footer -->
		<!---#prc.cb.quickView("_footer")#--->
		<!-- /footer -->
	</div>
	<!--- ContentBoxEvent ---><!---
	#prc.cb.event("cbui_beforeBodyEnd")#--->
</body>
</html>
</cfoutput>