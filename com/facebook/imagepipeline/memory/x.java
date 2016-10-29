package com.facebook.imagepipeline.memory;

import defpackage.bx;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
/* compiled from: Twttr */
public class x {
    private final u a;
    private d b;
    private k c;
    private o d;
    private ab e;
    private ae f;
    private f g;

    public x(u uVar) {
        this.a = (u) bx.a((Object) uVar);
    }

    public d a() {
        if (this.b == null) {
            this.b = new d(this.a.c(), this.a.a(), this.a.b());
        }
        return this.b;
    }

    public k b() {
        if (this.c == null) {
            this.c = new k(this.a.c(), this.a.f());
        }
        return this.c;
    }

    public int c() {
        return this.a.f().f;
    }

    public o d() {
        if (this.d == null) {
            this.d = new o(this.a.c(), this.a.d(), this.a.e());
        }
        return this.d;
    }

    public ab e() {
        if (this.e == null) {
            this.e = new q(d(), f());
        }
        return this.e;
    }

    public ae f() {
        if (this.f == null) {
            this.f = new ae(g());
        }
        return this.f;
    }

    public f g() {
        if (this.g == null) {
            this.g = new n(this.a.c(), this.a.g(), this.a.h());
        }
        return this.g;
    }
}
