/**
 * 
 */
package com.stephenklancher.installtracking;

import android.util.Log;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.adobe.fre.FREWrongThreadException;

/**
 * @author Stephen Klancher
 *
 */
public class getReferrer implements FREFunction {

	public static final String NAME = "getReferrer"; 
    private String tag;
    
	/* (non-Javadoc)
	 * @see com.adobe.fre.FREFunction#call(com.adobe.fre.FREContext, com.adobe.fre.FREObject[])
	 */
	@Override
	public FREObject call(FREContext arg0, FREObject[] arg1) {
		AndroidReferrerContext ctx = (AndroidReferrerContext) arg0; 
        tag = ctx.getIdentifier() + "." + NAME; 
        Log.i( tag, "Invoked " + NAME ); 
        FREObject returnValue = null; 
 
        try { 
        	
        	//TODO: get stored referrer
            returnValue = FREObject.newObject( "FakeReferrer" );
 
        } catch (IllegalStateException e) { 
            Log.d(tag, e.getMessage()); 
            e.printStackTrace(); 
        } catch (FREWrongThreadException e) { 
            Log.d(tag, e.getMessage()); 
            e.printStackTrace(); 
        } 
 
        return returnValue; 
	}

}
