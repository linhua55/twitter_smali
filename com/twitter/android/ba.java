package com.twitter.android;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
class ba implements e<Intent> {
    static final /* synthetic */ boolean a;
    final /* synthetic */ Context b;
    final /* synthetic */ az c;

    static {
        a = !av.class.desiredAssertionStatus();
    }

    ba(az azVar, Context context) {
        this.c = azVar;
        this.b = context;
    }

    public void a(Intent intent) {
        if (a || intent != null) {
            intent.addFlags(268435456);
            intent.setComponent(new ComponentName(this.b, BugReporterActivity.class));
            this.b.startActivity(intent);
            return;
        }
        throw new AssertionError();
    }
}
