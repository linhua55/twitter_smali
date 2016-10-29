package com.twitter.app.common.util;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class e implements a {
    private final b a;
    private WeakReference<Activity> b;

    e() {
        this.a = new b();
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.a.a(activity, bundle);
    }

    public void a(Activity activity, Intent intent) {
        this.a.a(activity, intent);
    }

    public void a(Activity activity, Configuration configuration) {
        this.a.a(activity, configuration);
    }

    public void onActivityStarted(Activity activity) {
        this.a.a(activity);
    }

    public void onActivityResumed(Activity activity) {
        this.b = new WeakReference(activity);
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
        ((t) activity).b(this);
    }

    public synchronized Activity a() {
        return this.b != null ? (Activity) this.b.get() : null;
    }

    public void a(a aVar) {
        this.a.a(aVar);
    }

    public void b(a aVar) {
        this.a.b(aVar);
    }
}
