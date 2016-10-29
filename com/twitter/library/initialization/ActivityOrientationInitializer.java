package com.twitter.library.initialization;

import android.app.Activity;
import android.content.Context;
import android.preference.PreferenceManager;
import com.twitter.app.common.util.c;
import com.twitter.config.AppConfig;
import defpackage.aof;

/* compiled from: Twttr */
public class ActivityOrientationInitializer extends aof<Void> {
    protected /* synthetic */ void a(Context context, Object obj) {
        b(context, (Void) obj);
    }

    protected /* synthetic */ boolean b(Context context, Object obj) {
        return a(context, (Void) obj);
    }

    protected boolean a(Context context, Void voidR) {
        return AppConfig.m().p();
    }

    protected void b(Context context, Void voidR) {
        c.a().a(new b(this));
    }

    private static void b(Activity activity) {
        if (PreferenceManager.getDefaultSharedPreferences(activity.getApplicationContext()).getBoolean("debug_lock_portrait", false) && !com.twitter.util.c.f(activity)) {
            activity.setRequestedOrientation(1);
        }
    }
}
