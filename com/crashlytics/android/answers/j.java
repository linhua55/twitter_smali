package com.crashlytics.android.answers;

import android.app.Activity;
import android.os.Bundle;
import io.fabric.sdk.android.d;

/* compiled from: Twttr */
class j extends d {
    private final y a;
    private final m b;

    public j(y yVar, m mVar) {
        this.a = yVar;
        this.b = mVar;
    }

    public void a(Activity activity, Bundle bundle) {
    }

    public void a(Activity activity) {
        this.a.a(activity, Type.START);
    }

    public void b(Activity activity) {
        this.a.a(activity, Type.RESUME);
        this.b.a();
    }

    public void c(Activity activity) {
        this.a.a(activity, Type.PAUSE);
        this.b.b();
    }

    public void d(Activity activity) {
        this.a.a(activity, Type.STOP);
    }

    public void b(Activity activity, Bundle bundle) {
    }

    public void e(Activity activity) {
    }
}
