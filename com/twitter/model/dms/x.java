package com.twitter.model.dms;

import com.twitter.model.core.MediaEntity;
import com.twitter.util.collection.ar;
import com.twitter.util.serialization.n;
import java.util.Set;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class x extends c {
    public static final Set<String> c;
    public static final n<x> d;
    public final MediaEntity e;

    static {
        c = ar.a("photo", new String[]{"video", "animated_gif"});
        d = new aa();
    }

    public x(z zVar) {
        super(zVar);
        this.e = zVar.b;
    }

    public String j() {
        return this.e.l;
    }

    public int k() {
        return this.e.n.a();
    }

    public int l() {
        return this.e.n.b();
    }

    public boolean m() {
        return this.e.w;
    }

    public String b() {
        return this.e.B;
    }

    public String c() {
        return this.e.D;
    }

    public String d() {
        return this.e.C;
    }

    public int e() {
        return this.e.g;
    }

    public int f() {
        return this.e.h;
    }

    public int a() {
        switch (y.a[this.e.m.ordinal()]) {
            case p.View_android_focusable /*1*/:
                return 1;
            case p.View_paddingStart /*2*/:
                return 3;
            case p.View_paddingEnd /*3*/:
                return 2;
            default:
                return -1;
        }
    }
}
