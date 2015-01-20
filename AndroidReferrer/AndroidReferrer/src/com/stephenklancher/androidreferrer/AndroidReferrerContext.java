/**
 * 
 */
package com.stephenklancher.androidreferrer;

import java.util.HashMap;
import java.util.Map;

import android.util.Log;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;

/**
 * @author smkni_000
 *
 */
public class AndroidReferrerContext extends FREContext {
	 
    private static final String NAME = "AndroidReferrerContext"; 
    private String tag; 
    
    public AndroidReferrerContext( String extensionName ) { 
        tag = extensionName + "." + NAME; 
        Log.i(tag, "Creating " + NAME); 
    } 
    
    public String getIdentifier() 
    { 
        return tag; 
    } 
    
	/* (non-Javadoc)
	 * @see com.adobe.fre.FREContext#dispose()
	 */
	@Override
	public void dispose() {
		// TODO Auto-generated method stub

	}

	/* (non-Javadoc)
	 * @see com.adobe.fre.FREContext#getFunctions()
	 */
	@Override
	public Map<String, FREFunction> getFunctions() {

		Map<String, FREFunction> functionMap = new HashMap<String, FREFunction>();
		functionMap.put("getReferrer", new getReferrer() );

		return functionMap;
	}

}
