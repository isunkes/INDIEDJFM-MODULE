component persistent="true" table="dj"  output="false"
{
	/* properties */
	
	property name="djid" column="djid" type="numeric" ormtype="int" fieldtype="id"; 
	property name="djName" column="djName" type="string" ormtype="string"; 
	property name="firstName" column="firstName" type="string" ormtype="string"; 
	property name="lastName" column="lastName" type="string" ormtype="string"; 
	property name="bio" column="bio" type="string" ormtype="string"; 
	property name="imageSmall" column="imageSmall" type="string" ormtype="string"; 
	property name="imageBig" column="imageBig" type="string" ormtype="string"; 
	property name="facebookLink" column="facebookLink" type="string" ormtype="string"; 
	property name="twitterLink" column="twitterLink" type="string" ormtype="string"; 
	property name="username" column="username" type="string" ormtype="string"; 
	property name="password" column="password" type="string" ormtype="string"; 
	property name="email" column="email" type="string" ormtype="string"; 
	property name="location" column="location" type="string" ormtype="string"; 
	property name="active" column="active" type="numeric" ormtype="int"; 
	property name="mixes" fieldtype="one-to-many"  fkcolumn="user_id" cfc="mixes" ;
		
} 
