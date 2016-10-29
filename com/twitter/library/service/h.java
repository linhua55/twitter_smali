package com.twitter.library.service;

/* compiled from: Twttr */
class h implements Runnable {
    final /* synthetic */ AuthTokenService a;
    private final String b;
    private final String c;
    private final i d;
    private final String e;

    h(AuthTokenService authTokenService, i iVar, String str, String str2, String str3) {
        this.a = authTokenService;
        this.d = iVar;
        this.b = str2;
        this.c = str;
        this.e = str3;
    }

    public void run() {
        this.a.b(this.d, this.c, this.b, this.e);
    }
}
