component{

	// DI
	property name="MixesService" inject="id:MixesService";
	property name="MixGenreService" inject="id:MixGenreService";

	function index(event,rc,prc){

    	//get a listing of all users with paging
   		rc.mixes = MixesService.getMixes();
	}

	function mix(event,rc,prc){
		rc.mix = MixesService.getMix(rc.id);	
	}
	
	function mixGenres(event,rc,prc){
		rc.mixgenres = MixGenreService.getMixGenres();	
	}
	
	function mixYears(event,rc,prc){
		rc.mixyears = MixesService.getMixYears();
	}

	

}