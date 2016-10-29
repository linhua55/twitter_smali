package com.twitter.app.common.inject;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import com.twitter.app.common.util.i;
import com.twitter.app.common.util.t;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
class p extends i {
    final /* synthetic */ o a;

    p(o oVar) {
        this.a = oVar;
    }

    public void onActivityStarted(Activity activity) {
        this.a.a();
    }

    public void onActivityResumed(Activity activity) {
        this.a.b();
    }

    public void onActivityPaused(Activity activity) {
        this.a.c();
    }

    public void onActivityStopped(Activity activity) {
        this.a.d();
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.a.a(bundle);
    }

    public void onActivityDestroyed(Activity activity) {
        this.a.e();
        ((t) ObjectUtils.a(activity)).b(this);
    }

    public void a(Activity activity, Configuration configuration) {
        this.a.a(configuration);
    }
}
