package io.fabric.sdk.android;

import android.annotation.TargetApi;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
class b {
    private final Set<ActivityLifecycleCallbacks> a;
    private final Application b;

    b(Application application) {
        this.a = new HashSet();
        this.b = application;
    }

    @TargetApi(14)
    private void a() {
        for (ActivityLifecycleCallbacks unregisterActivityLifecycleCallbacks : this.a) {
            this.b.unregisterActivityLifecycleCallbacks(unregisterActivityLifecycleCallbacks);
        }
    }

    @TargetApi(14)
    private boolean a(d dVar) {
        if (this.b == null) {
            return false;
        }
        ActivityLifecycleCallbacks cVar = new c(this, dVar);
        this.b.registerActivityLifecycleCallbacks(cVar);
        this.a.add(cVar);
        return true;
    }
}
