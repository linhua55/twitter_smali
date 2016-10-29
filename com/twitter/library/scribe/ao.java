package com.twitter.library.scribe;

/* compiled from: Twttr */
class ao {
    String a;
    int b;
    String c;
    Long d;
    Long e;
    private boolean f;

    ao(String str, int i, String str2, Long l) {
        this.a = str;
        this.b = i;
        this.c = str2;
        this.e = Long.valueOf(0);
        this.d = l;
        this.f = true;
    }

    public void a(int i, String str, long j) {
        boolean z = (!this.f && this.b == i && this.c.equals(str)) ? false : true;
        this.f = z;
        this.d = Long.valueOf(j);
    }

    public void a(long j) {
        this.f = false;
        this.e = Long.valueOf(j);
    }
}
