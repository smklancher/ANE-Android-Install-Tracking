/**
 * 
 */
package com.stephenklancher.installtracking;

import android.util.Log;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

/**
 * @author Stephen Klancher
 *
 */
public class AndroidReferrer implements FREExtension {
	private static final String NAME = "AndroidReferrer"; 
    private String tag; 
    
	private FREContext theContext;
	
	/** (non-Javadoc)
	 * @see com.adobe.fre.FREExtension#createContext(java.lang.String)
	 */
	@Override
	public FREContext createContext(String contextType) {
		if (theContext == null){
			tag=NAME;
			theContext=new AndroidReferrerContext(NAME);
		}
		return theContext;
		//return new AndroidReferrerContext(NAME);
	}

	/* (non-Javadoc)
	 * @see com.adobe.fre.FREExtension#dispose()
	 */
	@Override
	public void dispose() {
		Log.d(tag,"Disposing " + NAME);

	}

	/* (non-Javadoc)
	 * @see com.adobe.fre.FREExtension#initialize()
	 */
	@Override
	public void initialize() {
		Log.d(tag,"Initializing " + NAME);
	}

}
