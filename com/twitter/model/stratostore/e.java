package com.twitter.model.stratostore;

/* compiled from: Twttr */
public final class e<EXTDATA extends f> {
    private final String a;
    private int b;
    private int c;
    private g d;
    private EXTDATA e;

    public e(String str) {
        this.a = str;
    }

    public e a(int i) {
        this.b = i;
        return this;
    }

    public e b(int i) {
        this.c = i;
        return this;
    }

    public e a(g gVar) {
        this.d = gVar;
        return this;
    }

    public e a(EXTDATA extdata) {
        this.e = extdata;
        return this;
    }

    public d<EXTDATA> a() {
        return new d(this);
    }
}
