package tv.periscope.android.library;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

/* compiled from: Twttr */
class b implements ActivityLifecycleCallbacks {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
        if (a.a(this.a) != null && a.a(this.a).a() == activity) {
            a.a(this.a).b();
        }
    }

    public void onActivityResumed(Activity activity) {
        if (a.a(this.a) != null && a.a(this.a).a() == activity) {
            a.a(this.a).c();
        }
    }

    public void onActivityPaused(Activity activity) {
        if (a.a(this.a) != null && a.a(this.a).a() == activity) {
            a.a(this.a).d();
        }
    }

    public void onActivityStopped(Activity activity) {
        if (a.a(this.a) != null && a.a(this.a).a() == activity) {
            a.a(this.a).e();
        }
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityDestroyed(Activity activity) {
        if (a.a(this.a) != null && a.a(this.a).a() == activity) {
            a.a(this.a).f();
            a.a(this.a, null);
        }
    }
}
