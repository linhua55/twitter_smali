package com.twitter.android.settings.developer;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
class h implements Callable<Void> {
    final /* synthetic */ DebugSettingsActivity a;

    h(DebugSettingsActivity debugSettingsActivity) {
        this.a = debugSettingsActivity;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        q.b(this.a.getApplicationContext());
        q.a(this.a.getApplicationContext());
        return null;
    }
}
