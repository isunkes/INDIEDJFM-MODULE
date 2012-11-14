/**
* A ColdBox Enabled virtual entity service
*/
component extends="coldbox.system.orm.hibernate.VirtualEntityService" singleton{
	
	/**
	* Constructor
	*/
	public MixesService function init(){
		
		// init super class
		super.init(entityName="mixes");
		// Use Query Caching
	    setUseQueryCaching( false );
	    // Query Cache Region
	    setQueryCacheRegion( 'ORMService.defaultCache' );
	    // EventHandling
	    setEventHandling( true );
	    
	    return this;
	}
	
	public function getMixes(){
		var results = {};
		var c = newCriteria();
		results = c.order(property="mixorder")
				   .maxResults(25)
				   .list();
		return results;
	}
	
	public function getMix(mixid){
		var results = {};
		results = get(mixid);
		return results;
	}
	
	public function getMixYears(){
		var results = {};
		var c = newCriteria();
		results = c.withProjections(distinct="mixYear")
				   .order("mixYear","desc")
				   .list();
		return results;
	}
	
}