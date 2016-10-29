package com.twitter.library.util;

import android.content.Context;
import android.telephony.TelephonyManager;
import cqf;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: Twttr */
public class aj {
    private static final Map<String, String> a;
    private static String b;

    static {
        a = new HashMap(220);
    }

    public static String a(Context context) {
        if (b == null) {
            cqf.a(aj.class);
            b = b(context);
        }
        return b;
    }

    private static String b(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            String simCountryIso = telephonyManager.getSimCountryIso();
            if (simCountryIso != null && simCountryIso.length() == 2) {
                return simCountryIso.toLowerCase(Locale.US);
            }
            if (telephonyManager.getPhoneType() != 2) {
                String networkCountryIso = telephonyManager.getNetworkCountryIso();
                if (networkCountryIso != null && networkCountryIso.length() == 2) {
                    return networkCountryIso.toLowerCase(Locale.US);
                }
            }
            return null;
        } catch (Exception e) {
        }
    }
}
