package com.twitter.library.platform;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.twitter.config.AppConfig;
import defpackage.bbn;
import defpackage.cwj;

/* compiled from: Twttr */
public class c {
    public static boolean a(Context context) {
        if (cwj.b()) {
            return false;
        }
        try {
            if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(context) == 0) {
                return true;
            }
            return false;
        } catch (Throwable e) {
            bbn.a(e);
            return false;
        }
    }

    public static boolean b(Context context) {
        return a(context) && AppConfig.m().k();
    }
}
