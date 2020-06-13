package bll
{
	public var RoomID:String;
	public var UserID:String;
	public var UserName:String;
	
	public class GetPara
	{		
		public function GetPara(){
			var searchString:String = ExternalInterface.call("document.location.search.toString");
			searchString = searchString.substring(1,searchString.length);
			var searchStrings:Array = searchString.split("&");
			if(searchString == null || searchString.length < 1)
			{
				Alert.show("parameters less than 1");
			}else{
				RoomID = (searchStrings[0] as String).split("=")[1];
				UserID = (searchStrings[1] as String).split("=")[1];
				UserName = (searchStrings[2] as String).split("=")[1];
				Alert.show("RoomID= " + RoomID + " UserID= " + UserID+ " UserName= " + UserName);
			}
		}
			
	}
}