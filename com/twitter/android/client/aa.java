package com.twitter.android.client;

import android.support.v4.app.NotificationCompat.Builder;

/* compiled from: Twttr */
class aa implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Builder b;
    final /* synthetic */ z c;

    aa(z zVar, String str, Builder builder) {
        this.c = zVar;
        this.a = str;
        this.b = builder;
    }

    public void run() {
        z.a(this.c).notify(this.a, 1001, this.b.build());
    }
}
