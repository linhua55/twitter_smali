package com.twitter.library.initialization;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.webkit.WebView;
import com.twitter.config.AppConfig;
import defpackage.aof;

/* compiled from: Twttr */
public class WebViewInitializer extends aof<Void> {
    @TargetApi(19)
    protected /* synthetic */ void a(Context context, Object obj) {
        b(context, (Void) obj);
    }

    protected /* synthetic */ boolean b(Context context, Object obj) {
        return a(context, (Void) obj);
    }

    protected boolean a(Context context, Void voidR) {
        return AppConfig.m().a() && VERSION.SDK_INT >= 19 && a(context);
    }

    @TargetApi(19)
    protected void b(Context context, Void voidR) {
        WebView.setWebContentsDebuggingEnabled(true);
    }

    private static boolean a(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("debug_web_contents", false);
    }
}
