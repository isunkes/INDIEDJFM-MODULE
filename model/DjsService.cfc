/**
* A ColdBox Enabled virtual entity service
*/
component extends="coldbox.system.orm.hibernate.VirtualEntityService" singleton{
	
	/**
	* Constructor
	*/
	public DjsService function init(){
		
		// init super class
		super.init(entityName="dj");
		// Use Query Caching
	    setUseQueryCaching( false );
	    // Query Cache Region
	    setQueryCacheRegion( 'ORMService.defaultCache' );
	    // EventHandling
	    setEventHandling( true );
	    
	    return this;
	}
	
	public function getDJs(){
		var results = {};
		var c = newCriteria();
          
		results = c.order(property="djName")
				 .iseq("active",javaCast( "int", 1 ))
				 .list();
		return results;
	}
	
	
}