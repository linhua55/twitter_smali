package com.twitter.library.client;

import com.twitter.library.api.d;

/* compiled from: Twttr */
public class u {
    public static u a;
    private d b;

    static {
        a = new u();
    }

    private u() {
    }

    public synchronized d a() {
        return this.b;
    }

    public synchronized void a(d dVar) {
        this.b = dVar;
    }
}
