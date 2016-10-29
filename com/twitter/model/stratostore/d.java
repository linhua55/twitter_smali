package com.twitter.model.stratostore;

/* compiled from: Twttr */
public class d<EXTDATA extends f> {
    static final /* synthetic */ boolean f;
    public final String a;
    public final int b;
    public final int c;
    public final g d;
    public final EXTDATA e;

    static {
        f = !d.class.desiredAssertionStatus();
    }

    public d(e<EXTDATA> eVar) {
        if (f || eVar.a != null) {
            this.a = eVar.a;
            this.b = eVar.b;
            this.c = eVar.c;
            this.d = eVar.d;
            this.e = eVar.e;
            return;
        }
        throw new AssertionError();
    }
}
