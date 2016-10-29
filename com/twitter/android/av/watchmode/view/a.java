package com.twitter.android.av.watchmode.view;

import android.app.Activity;
import android.support.annotation.VisibleForTesting;
import defpackage.cqp;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class a implements cqp {
    private final WeakReference<Activity> a;
    private float b;

    public a(Activity activity) {
        this(new WeakReference(activity));
    }

    @VisibleForTesting
    a(WeakReference<Activity> weakReference) {
        this.a = weakReference;
    }

    public void e() {
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            activity.finish();
            if (this.b > 0.0f) {
                activity.overridePendingTransition(2131034171, 2131034173);
            } else {
                activity.overridePendingTransition(2131034171, 2131034172);
            }
        }
    }

    public void a(float f) {
        this.b = f;
    }
}
