package com.twitter.android.client;

import com.twitter.library.client.Session;

/* compiled from: Twttr */
class ab implements Runnable {
    final /* synthetic */ Session a;
    final /* synthetic */ long b;
    final /* synthetic */ z c;

    ab(z zVar, Session session, long j) {
        this.c = zVar;
        this.a = session;
        this.b = j;
    }

    public void run() {
        z.a(this.c).cancel(aj.a(this.a.g(), this.b), 1001);
    }
}
