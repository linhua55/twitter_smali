package com.twitter.media.request;

import android.content.Context;
import android.net.Uri;
import com.twitter.util.aj;
import com.twitter.util.ao;
import com.twitter.util.z;
import java.io.File;

/* compiled from: Twttr */
public abstract class g<RESP extends ResourceResponse> {
    private final String a;
    private final Object b;
    private final boolean c;
    private final boolean d;
    private final boolean e;
    private final ResourceRequestType f;
    private final String g;
    private i<RESP> h;
    private z<Double> i;
    private Object j;

    protected g(h<?, RESP> hVar) {
        this.a = hVar.q;
        this.b = hVar.r;
        this.c = hVar.s;
        this.d = hVar.t;
        this.e = hVar.u;
        this.h = hVar.v;
        this.j = hVar.w;
        this.f = hVar.x;
        this.g = hVar.y;
    }

    public boolean v() {
        return aj.b(this.a);
    }

    public String a() {
        return this.a;
    }

    public File a(Context context) {
        return ao.a(context, Uri.parse(this.a));
    }

    public String u() {
        return this.a;
    }

    public Object w() {
        return this.b;
    }

    public z<Double> x() {
        return this.i;
    }

    public boolean y() {
        return this.c;
    }

    public boolean z() {
        return this.d;
    }

    public boolean A() {
        return this.e;
    }

    public ResourceRequestType B() {
        return this.f;
    }

    public Object C() {
        return this.j;
    }

    public void a(Object obj) {
        this.j = obj;
    }

    public String D() {
        return this.g;
    }

    public i<RESP> E() {
        return this.h;
    }

    public void a(i<RESP> iVar) {
        this.h = iVar;
    }

    public void a(z<Double> zVar) {
        this.i = zVar;
    }

    public boolean equals(Object obj) {
        return this == obj || (obj != null && (obj instanceof g) && a((g) obj));
    }

    protected boolean a(g gVar) {
        return this == gVar || (gVar != null && u().equals(gVar.u()));
    }

    public int hashCode() {
        return u().hashCode();
    }

    public String toString() {
        return u();
    }
}
