package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;

@TargetApi(14)
@oi
public class bh implements ActivityLifecycleCallbacks {
    private Activity a;
    private Context b;
    private final Object c;

    public bh(Application application, Activity activity) {
        this.c = new Object();
        application.registerActivityLifecycleCallbacks(this);
        a(activity);
        this.b = application.getApplicationContext();
    }

    private void a(Activity activity) {
        synchronized (this.c) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.a = activity;
            }
        }
    }

    @Nullable
    public Activity a() {
        return this.a;
    }

    public Context b() {
        return this.b;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public void onActivityDestroyed(Activity activity) {
        synchronized (this.c) {
            if (this.a == null) {
                return;
            }
            if (this.a.equals(activity)) {
                this.a = null;
            }
        }
    }

    public void onActivityPaused(Activity activity) {
        a(activity);
    }

    public void onActivityResumed(Activity activity) {
        a(activity);
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
        a(activity);
    }

    public void onActivityStopped(Activity activity) {
    }
}
