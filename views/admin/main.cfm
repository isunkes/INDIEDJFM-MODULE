<cfoutput>
	<br>
		<h3>INDIEDJ.FM Admin</h3>
		<cfparam name="rc.test" default="1">
		#rc.test#
		<div style="margin-left:50px;">
			<ul>
				<li><a href="#event.buildLink('Admin.PromoPageManager')#">Promo Page Manager</a></li>
				<li><a href="#event.buildLink('Admin.MixPageManager')#">Mix Page Manager</a></li>
			</ul>
		</div>
	<br>
	<br>	
</cfoutput>