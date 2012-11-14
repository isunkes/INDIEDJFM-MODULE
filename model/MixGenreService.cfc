/**
* A ColdBox Enabled virtual entity service
*/
component extends="coldbox.system.orm.hibernate.VirtualEntityService" singleton{
	
	/**
	* Constructor
	*/
	public MixGenreService function init(){
		
		// init super class
		super.init(entityName="mixgenre");
		// Use Query Caching
	    setUseQueryCaching( false );
	    // Query Cache Region
	    setQueryCacheRegion( 'ORMService.defaultCache' );
	    // EventHandling
	    setEventHandling( true );
	    
	    return this;
	}
	
	public function getMixGenres(){
		var results = {};
		var c = newCriteria();
		results = c.order(property="genreOrder")
				   .list();
		return results;
	}
	
	
}