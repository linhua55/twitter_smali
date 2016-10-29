package io.fabric.sdk.android;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

/* compiled from: Twttr */
class c implements ActivityLifecycleCallbacks {
    final /* synthetic */ d a;
    final /* synthetic */ b b;

    c(b bVar, d dVar) {
        this.b = bVar;
        this.a = dVar;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.a.a(activity, bundle);
    }

    public void onActivityStarted(Activity activity) {
        this.a.a(activity);
    }

    public void onActivityResumed(Activity activity) {
        this.a.b(activity);
    }

    public void onActivityPaused(Activity activity) {
        this.a.c(activity);
    }

    public void onActivityStopped(Activity activity) {
        this.a.d(activity);
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.a.b(activity, bundle);
    }

    public void onActivityDestroyed(Activity activity) {
        this.a.e(activity);
    }
}
