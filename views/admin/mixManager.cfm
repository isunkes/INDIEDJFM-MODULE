<style>
	#sortable { list-style-type: none; margin: 0; padding: 0;  }
	#sortable li { margin: 0 3px 3px 3px; padding: 0.4em; padding-left: 1.5em; padding-right: 1.5em; font-size: 1.4em; height:150px; border: 1px solid gray; }
	#sortable li span { position: absolute; margin-left: -1.3em; }
</style>

<script>
	$(function() {
		$( "#sortable" ).sortable(
						{
  							 update: function(event, ui) 
							 { 
							 	 $("input#mixesOrder").val($('#sortable').sortable('serialize'));
							 }
						});
		$( "#sortable" ).disableSelection();
	});
</script>


<cfoutput>
	<br>
		<h3>INDIEDJ.FM Mix Page Manager</h3>
		<span style="float:right;margin-right:20px;"" ><a href="#event.BuildLink('Admin.index')#">[BACK]</a></span>
		<div style="margin-left:20px; margin-right:20px;">
		<form name="updateMixes" action="#event.buildLink('Admin.SaveMixPageManager')#" method="post">
		<input type="hidden" id="mixesOrder" name="mixesOrder" />
		<input type="submit" value="Update Order">
		</form>
		<cfif rc.message neq ''>
			<font colr="red"><em>#rc.message#</em></font>
		</cfif>	
			<ul id="sortable">
				<cfloop query="rc.qMixes">
					<li class="ui-state-default" id="listItem_#rc.qMixes.id#">
						
							 <img src="#rc.qMixes.mixImageSmall#" align="left" style="padding-right:12px;">
							 <b>#rc.qMixes.mixName#</b><br>
							 #rc.qMixes.mixArtist#<br>
							 #rc.qMixes.mixGenre#<br>
							 #rc.qMixes.mixYear#
						
					</li>
				</cfloop>
			</ul>
		</div>
	<br>
	<br>	
</cfoutput>