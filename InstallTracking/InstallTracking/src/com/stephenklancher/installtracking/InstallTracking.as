package com.stephenklancher.installtracking
{
	import flash.external.ExtensionContext;	
	
	public class InstallTracking
	{
		private static var extContext:ExtensionContext = null;
		
		public function InstallTracking()
		{
			trace("in InstallTracking Constructor");
			if (!extContext) {
				trace("Creating extension context.");
				extContext = ExtensionContext.createExtensionContext
					("com.stephenklancher.installtracking","InstallTracking");
				if (extContext){
					//extContext.call("initMe");
				} else {
					trace("Failed to create extension context.");
				}
			}
		}
		
		public function getReferrer():String {
			trace("Calling getReferrer");
			var referrer:String=String (extContext.call("getReferrer"));
			return "";
		}
	}
}