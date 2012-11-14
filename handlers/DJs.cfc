component{

	// DI
	property name="DJsService" inject="id:DJsService";
	

	function index(event,rc,prc){

    	//get a listing of all users with paging
   		rc.djs = DJsService.getDJs();
	}
	
	function getDJ(event,rc,prc){
		//get dj
    	rc.dj = DJsService.get(rc.djid);
	}

	

	

}