/**
 * 
 */
package com.stephenklancher.installtracking;


import android.content.Context;
import android.util.Log;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREInvalidObjectException;
import com.adobe.fre.FREObject;
import com.adobe.fre.FRETypeMismatchException;
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
		Context context=ctx.getActivity();
        tag = ctx.getIdentifier() + "." + NAME; 
        Log.i( tag, "Invoked " + NAME );
        
        String storedReferrer=ReferrerReceiver.getReferrer(context);
        
        FREObject returnValue = null; 
        try { 
        	
            returnValue = FREObject.newObject( storedReferrer );

            Log.d(tag,"Referrer: " + returnValue.getAsString());
            
        } catch (IllegalStateException e) { 
            Log.d(tag, e.getMessage()); 
            e.printStackTrace(); 
        } catch (FREWrongThreadException e) { 
            Log.d(tag, e.getMessage()); 
            e.printStackTrace(); 
        } catch (FRETypeMismatchException e) {
            Log.d(tag, e.getMessage()); 
            e.printStackTrace(); 
		} catch (FREInvalidObjectException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        
        //Calendar c = Calendar.getInstance(); 
        //Date d = c.getTime();
        //context.getSharedPreferences("referrer", Context.MODE_PRIVATE).edit().putString("referrer", d.toGMTString()).commit();
 
        return returnValue; 
	}

}
