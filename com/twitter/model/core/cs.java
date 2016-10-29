package com.twitter.model.core;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class cs<E extends cr, B extends cs<E, B>> extends f<E, B> {
    String v;
    String w;
    String x;
    int y;
    int z;

    public /* bridge */ /* synthetic */ int e() {
        return super.e();
    }

    public /* bridge */ /* synthetic */ int f() {
        return super.f();
    }

    protected cs() {
        this.y = -1;
        this.z = -1;
    }

    protected cs(cr crVar) {
        super(crVar);
        this.y = -1;
        this.z = -1;
        this.v = crVar.B;
        this.w = crVar.C;
        this.x = crVar.D;
        this.y = crVar.E;
        this.z = crVar.F;
    }

    public B e(String str) {
        this.v = str;
        return (cs) ObjectUtils.a((Object) this);
    }

    public B f(String str) {
        this.w = str;
        return (cs) ObjectUtils.a((Object) this);
    }

    public B g(String str) {
        this.x = str;
        return (cs) ObjectUtils.a((Object) this);
    }

    public B d(int i) {
        this.y = i;
        return (cs) ObjectUtils.a((Object) this);
    }

    public B e(int i) {
        this.z = i;
        return (cs) ObjectUtils.a((Object) this);
    }

    protected void X_() {
        super.X_();
        if (this.v == null) {
            this.v = BuildConfig.VERSION_NAME;
        }
        if (this.w == null) {
            this.w = this.v;
        }
        if (this.x == null) {
            this.x = this.w;
        }
        if (this.c != -1 && this.d == -1) {
            this.d = this.c + this.v.length();
        }
        if (this.z == 0) {
            this.z = this.y + this.x.length();
        }
    }
}
