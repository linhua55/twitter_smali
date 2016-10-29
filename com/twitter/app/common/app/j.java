package com.twitter.app.common.app;

import android.app.Activity;
import android.os.Bundle;
import android.os.SystemClock;
import com.twitter.app.common.util.c;
import com.twitter.app.common.util.i;
import com.twitter.library.metrics.k;
import defpackage.ark;
import defpackage.aru;

/* compiled from: Twttr */
class j extends i {
    final /* synthetic */ long a;
    final /* synthetic */ long b;
    final /* synthetic */ long c;
    final /* synthetic */ TwitterApplication d;

    j(TwitterApplication twitterApplication, long j, long j2, long j3) {
        this.d = twitterApplication;
        this.a = j;
        this.b = j2;
        this.c = j3;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        c.a().b(this);
        if (SystemClock.uptimeMillis() - this.a < 1000) {
            k.a = new ark("app:init", ark.n, this.a - this.b);
            k.a.b(this.c);
            k.a.b("AppMetrics");
            aru.b().a(k.a);
        }
    }
}
