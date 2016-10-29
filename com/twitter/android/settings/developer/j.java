package com.twitter.android.settings.developer;

import com.twitter.library.provider.q;
import com.twitter.util.concurrent.n;

/* compiled from: Twttr */
class j implements n<Void> {
    final /* synthetic */ DebugSettingsActivity a;

    j(DebugSettingsActivity debugSettingsActivity) {
        this.a = debugSettingsActivity;
    }

    public /* synthetic */ Object call() {
        return a();
    }

    public Void a() {
        q.a(this.a.getApplicationContext(), "settings", true);
        return null;
    }
}
