package com.twitter.library.network.narc;

import android.app.Activity;
import com.twitter.app.common.util.c;
import com.twitter.app.common.util.i;
import com.twitter.library.network.narc.AppStateNARCEntry.AppState;
import com.twitter.library.network.narc.AppStateNARCEntry.AppStateType;

/* compiled from: Twttr */
public class e extends i {
    private static e a;

    private e() {
        c.a().a(this);
    }

    public static synchronized void a() {
        synchronized (e.class) {
            if (a == null) {
                a = new e();
            }
        }
    }

    public void onActivityStarted(Activity activity) {
        i.a(AppState.onStart, AppStateType.active, activity.getLocalClassName());
    }

    public void onActivityResumed(Activity activity) {
        i.a(AppState.onResume, AppStateType.active, activity.getLocalClassName());
    }

    public void onActivityPaused(Activity activity) {
        i.a(AppState.onPause, AppStateType.inactive, activity.getLocalClassName());
    }

    public void onActivityStopped(Activity activity) {
        i.a(AppState.onStop, AppStateType.inactive, activity.getLocalClassName());
    }
}
