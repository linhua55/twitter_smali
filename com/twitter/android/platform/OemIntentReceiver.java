package com.twitter.android.platform;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.preference.PreferenceManager;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.util.AppEventTrack;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import defpackage.cun;
import java.io.File;
import java.nio.charset.Charset;

/* compiled from: Twttr */
public class OemIntentReceiver extends BroadcastReceiver {
    private static String a;
    private static boolean b;

    static {
        b = false;
    }

    public void onReceive(Context context, Intent intent) {
        if (!AppEventTrack.b(context)) {
            CharSequence stringExtra = intent.getStringExtra("OEM");
            if (aj.b(stringExtra)) {
                InstallReferralReceiver.a(context, stringExtra);
                AppEventTrack.b(context, stringExtra);
            }
        }
    }

    public static void a(Context context) {
        if (!AppEventTrack.b(context) && !a(context, c(context))) {
            Intent intent = new Intent();
            intent.setAction("com.twitter.intent.action.GET_OEM");
            intent.setClassName("com.twitter.twitteroemhelper", "com.twitter.twitteroemhelper.OemHelperService");
            context.startService(intent);
        }
    }

    public static String b(Context context) {
        CharSequence string = PreferenceManager.getDefaultSharedPreferences(context).getString("oem_referrer", null);
        if (aj.a(string)) {
            return c(context);
        }
        return string;
    }

    private static String c(Context context) {
        if (b && aj.b(a)) {
            return a;
        }
        if (aj.b(BuildConfig.VERSION_NAME)) {
            return BuildConfig.VERSION_NAME;
        }
        CharSequence a = a(new File(context.getFilesDir(), "oem"));
        return !aj.b(a) ? a(new File("/system/etc", "twitter-oem")) : a;
    }

    private static String a(File file) {
        if (file.exists()) {
            return (String) CollectionUtils.b(cun.a(file, Charset.forName("UTF-8")));
        }
        return null;
    }

    private static boolean a(Context context, String str) {
        if (!aj.b((CharSequence) str)) {
            return false;
        }
        InstallReferralReceiver.a(context, str);
        AppEventTrack.b(context, str);
        return true;
    }
}
