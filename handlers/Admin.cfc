<cfcomponent output="false">

	<cffunction name="index" returntype="void" output="false" >
		<cfargument name="event" required="true">
		<cfset var rc = event.getCollection()>
		
		
		
		<cfset event.setView("admin/main")>
	</cffunction>
	
	<cffunction name="PromoPageManager" returntype="void" output="false" >
		<cfargument name="event" required="true">
		<cfset var rc = event.getCollection()>
		
		<cfscript>
			mixes = getModel("mixes");
			rc.qPromos = mixes.getPromos();
			Event.paramValue('message','');
		</cfscript>
		
		
		<cfset event.setView("admin/promoManager")>
	</cffunction>
	
	<cffunction name="MixPageManager" returntype="void" output="false" >
		<cfargument name="event" required="true">
		<cfset var rc = event.getCollection()>
		
		<cfscript>
			mixes = getModel("mixes");
			rc.qMixes = mixes.getMixesPage();
			Event.paramValue('message','');
		</cfscript>
		
		
		<cfset event.setView("admin/mixManager")>
	</cffunction>
	
	<cffunction name="SaveMixPageManager" returntype="void" output="false" >
		<cfargument name="event" required="true">
		<cfset var rc = event.getCollection()>
		
		<cfscript>
			mixes = getModel("mixes");
			Event.paramValue('mixesOrder','');
		</cfscript>
		
		<cfset x = 1>
		<cfloop list="#rc.mixesOrder#" index="i" delimiters="&">
			<cfscript>
				mixid = listGetAt(i,2,'=');
				mixes.saveMixPosition(mixid=mixid,position=x);
			</cfscript>
			<cfset x = x + 1>	
		</cfloop>	
		
		<cfscript>
			rc.qMixes = mixes.getMixesPage();
		</cfscript>
		
		
		<cfset rc.message = "Mix Order Updated">
		<cfset event.setView("admin/mixManager")>
	</cffunction>
	
</cfcomponent>