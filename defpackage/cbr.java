package defpackage;

import cni;
import com.twitter.library.api.PromotedEvent;

/* compiled from: Twttr */
/* renamed from: cbr */
public class cbr {
    private PromotedEvent a;
    private long b;
    private String c;
    private String d;
    private boolean e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;

    private cbr() {
    }

    public cbr a(PromotedEvent promotedEvent) {
        this.a = promotedEvent;
        return this;
    }

    public cbr a(cni cni) {
        this.d = cni.c;
        this.e = cni.c();
        this.b = cni.e;
        return this;
    }

    public cbr a(String str) {
        this.c = str;
        return this;
    }

    public cbr b(String str) {
        this.f = str;
        return this;
    }

    public cbr c(String str) {
        this.l = str;
        return this;
    }

    public cbr d(String str) {
        this.m = str;
        return this;
    }

    public cbp a() {
        return new cbp();
    }
}
