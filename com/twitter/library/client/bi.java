package com.twitter.library.client;

/* compiled from: Twttr */
class bi implements Runnable {
    final /* synthetic */ Session a;
    final /* synthetic */ Session b;
    final /* synthetic */ bg c;

    bi(bg bgVar, Session session, Session session2) {
        this.c = bgVar;
        this.a = session;
        this.b = session2;
    }

    public void run() {
        bg.a(this.c, this.a, this.b);
    }
}
