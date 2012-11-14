component persistent="true" table="mixes"  output="false"
{
	/* properties */
	property name="id" column="id" type="numeric" ormtype="int" fieldtype="id" insert="false" update="false"; 
	property name="user_id" column="user_id" type="numeric" ormtype="int"; 
	property name="mixName" column="mixName" type="string" ormtype="string"; 
	property name="mixArtist" column="mixArtist" type="string" ormtype="string"; 
	property name="mixYear" column="mixYear" type="numeric" ormtype="int"; 
	property name="mixGenre" column="mixGenre" type="string" ormtype="string"; 
	property name="mixDesc" column="mixDesc" type="string" ormtype="string"; 
	property name="mixFile" column="mixFile" type="string" ormtype="string"; 
	property name="mixFileUser" column="mixFileUser" type="string" ormtype="string"; 
	property name="mixImageBig" column="mixImageBig" type="string" ormtype="string"; 
	property name="mixImageSmall" column="mixImageSmall" type="string" ormtype="string"; 
	property name="createDate" column="createDate" type="date" ormtype="timestamp"; 
	property name="complete" column="complete" type="numeric" ormtype="int"; 
	property name="mixLen" column="mixLen" type="numeric" ormtype="float"; 
	property name="mixorder" column="mixorder" type="numeric" ormtype="int";
	//property name="dj" fieldtype="many-to-one" fkcolumn="djid" cfc="djs" ;
	// Constructor
	function init(){
		return this;
	}
	 	
} 
