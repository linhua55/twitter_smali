package com.twitter.model.core;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class cr extends e {
    public static final n<j<cr>> A;
    public static final n<cr> z;
    public final String B;
    public final String C;
    public final String D;
    public int E;
    public int F;

    public /* synthetic */ f b() {
        return d();
    }

    static {
        z = new cv();
        A = j.a(z);
    }

    cr(cs csVar) {
        super(csVar);
        this.B = e.b(csVar.v);
        this.C = (String) e.b(csVar.w, this.B);
        this.D = (String) e.b(csVar.x, this.C);
        this.E = csVar.y;
        this.F = csVar.z;
    }

    public cs d() {
        return new cu(this);
    }

    public void a(int i) {
        super.a(i);
        if (this.E >= 0 && this.F >= 0) {
            this.E += i;
            this.F += i;
        }
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof cr) && a((cr) obj));
    }

    public boolean a(cr crVar) {
        return this == crVar || (super.a((e) crVar) && ObjectUtils.a(this.B, crVar.B));
    }

    public int hashCode() {
        return (super.hashCode() * 31) + ObjectUtils.b(this.B);
    }

    public String toString() {
        return this.D;
    }
}
