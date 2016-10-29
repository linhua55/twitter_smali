package com.twitter.model.moments;

import com.twitter.util.math.Size;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class m extends f<k> {
    i a;
    i b;
    i c;
    i d;
    Size e;
    boolean f;

    public m() {
        this.e = Size.b;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public m a(i iVar) {
        this.a = iVar;
        return this;
    }

    public m b(i iVar) {
        this.b = iVar;
        return this;
    }

    public m c(i iVar) {
        this.c = iVar;
        return this;
    }

    public m d(i iVar) {
        this.d = iVar;
        return this;
    }

    public m a(Size size) {
        this.e = size;
        return this;
    }

    public m a(boolean z) {
        this.f = z;
        return this;
    }

    protected k d() {
        if (this.a != null) {
            this.a.a(this.e);
        }
        if (this.b != null) {
            this.b.a(this.e);
        }
        if (this.c != null) {
            this.c.a(this.e);
        }
        if (this.d != null) {
            this.d.a(this.e);
        }
        return new k(this);
    }
}
