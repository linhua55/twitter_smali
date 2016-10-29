package com.twitter.model.core;

import cjs;
import com.twitter.model.av.VideoCta;
import com.twitter.util.math.Size;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class MediaEntity extends cr implements a {
    public static final n<MediaEntity> a;
    public static final n<z> b;
    public final long c;
    public final long i;
    public final long j;
    public final TwitterUser k;
    public final String l;
    public final Type m;
    public final Size n;
    public final aj o;
    public final List<ag> p;
    public final List<bm> q;
    public final List<cjs> r;
    public final VideoCta s;
    public final String t;
    public final boolean u;
    public final String v;
    public final boolean w;
    public final String x;
    public final ad y;

    /* compiled from: Twttr */
    public enum Type {
        UNKNOWN(0),
        IMAGE(1),
        ANIMATED_GIF(2),
        VIDEO(3);
        
        private static final Type[] e;
        public final int typeId;

        static {
            e = values();
        }

        private Type(int i) {
            this.typeId = i;
        }

        public static Type a(int i) {
            return (i < 0 || i >= e.length) ? UNKNOWN : e[i];
        }
    }

    public /* synthetic */ f b() {
        return c();
    }

    public /* synthetic */ cs d() {
        return c();
    }

    static {
        a = new y();
        b = z.a;
    }

    public MediaEntity(x xVar) {
        super(xVar);
        this.c = xVar.a;
        this.i = xVar.e;
        this.l = (String) e.b(xVar.g, this.B);
        this.j = xVar.f;
        this.m = xVar.h;
        this.n = xVar.i;
        this.q = com.twitter.util.collection.n.a(xVar.j);
        this.p = com.twitter.util.collection.n.a(xVar.l);
        this.r = com.twitter.util.collection.n.a(xVar.m);
        this.o = xVar.k;
        this.s = xVar.n;
        this.t = e.b(xVar.o);
        this.u = xVar.p;
        this.v = e.b(xVar.q);
        this.k = xVar.r;
        this.w = xVar.s;
        this.x = e.b(xVar.t);
        this.y = xVar.u;
    }

    public x c() {
        return new x(this);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof MediaEntity) && a((MediaEntity) obj));
    }

    public boolean a(MediaEntity mediaEntity) {
        return this == mediaEntity || (super.a((cr) mediaEntity) && this.c == mediaEntity.c);
    }

    public String a() {
        return this.x;
    }

    public int hashCode() {
        return (super.hashCode() * 31) + ObjectUtils.a(this.c);
    }
}
