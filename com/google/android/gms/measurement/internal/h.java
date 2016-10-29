package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.MainThread;
import android.text.TextUtils;

@TargetApi(14)
@MainThread
class h implements ActivityLifecycleCallbacks {
    final /* synthetic */ d a;

    private h(d dVar) {
        this.a = dVar;
    }

    private boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        this.a.a("auto", "_ldl", (Object) str);
        return true;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            this.a.s().z().a("onActivityCreated");
            Intent intent = activity.getIntent();
            if (intent != null) {
                Uri data = intent.getData();
                if (data != null && data.isHierarchical()) {
                    String queryParameter = data.getQueryParameter("referrer");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        if (queryParameter.contains("gclid")) {
                            this.a.s().y().a("Activity created with referrer", queryParameter);
                            a(queryParameter);
                            return;
                        }
                        this.a.s().y().a("Activity created with data 'referrer' param without gclid");
                    }
                }
            }
        } catch (Throwable th) {
            this.a.s().b().a("Throwable caught in onActivityCreated", th);
        }
    }

    public void onActivityDestroyed(Activity activity) {
    }

    @MainThread
    public void onActivityPaused(Activity activity) {
        this.a.q().c();
    }

    @MainThread
    public void onActivityResumed(Activity activity) {
        this.a.q().b();
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
    }

    public void onActivityStopped(Activity activity) {
    }
}
