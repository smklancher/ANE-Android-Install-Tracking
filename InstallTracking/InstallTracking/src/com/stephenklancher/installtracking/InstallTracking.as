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
				extContext = ExtensionContext.createExtensionContext("com.stephenklancher.installtracking","InstallTracking");
				if (extContext){
					//extContext.call("initMe");
				} else {
					trace("Failed to create extension context.");
				}
			}
		}
		
		/**
		 * Returns install-time referrer, or empty string if not supported for current platform
		 */
		public function getReferrer():String {
			trace("Calling getReferrer");
			var referrer:String;
			if (!extContext) {
				referrer=String (extContext.call("getReferrer"));
			}
			return referrer;
		}
	}
}