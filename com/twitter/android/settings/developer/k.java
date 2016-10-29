package com.twitter.android.settings.developer;

import csx;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class k implements Callable<Void> {
    final /* synthetic */ DebugSettingsActivity a;

    k(DebugSettingsActivity debugSettingsActivity) {
        this.a = debugSettingsActivity;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        csx.b(this.a);
        return null;
    }
}
