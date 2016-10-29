package com.twitter.library.service;

import com.twitter.model.account.OAuthToken;

/* compiled from: Twttr */
class j implements Runnable {
    private final i a;
    private final OAuthToken b;
    private final int c;
    private final String d;
    private final long e;

    j(i iVar, int i, OAuthToken oAuthToken, String str, long j) {
        this.a = iVar;
        this.c = i;
        this.b = oAuthToken;
        this.d = str;
        this.e = j;
    }

    public void run() {
        this.a.a(this.c, this.b, this.d, this.e);
    }
}
