package com.facebook.imagepipeline.common;

import javax.annotation.concurrent.Immutable;

@Immutable
/* compiled from: Twttr */
public class a {
    private static final a g;
    public final int a;
    public final int b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final boolean f;

    static {
        g = b().g();
    }

    a(b bVar) {
        this.a = bVar.a();
        this.b = bVar.b();
        this.c = bVar.c();
        this.d = bVar.d();
        this.e = bVar.e();
        this.f = bVar.f();
    }

    public static a a() {
        return g;
    }

    public static b b() {
        return new b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.b != aVar.b) {
            return false;
        }
        if (this.c != aVar.c) {
            return false;
        }
        if (this.d != aVar.d) {
            return false;
        }
        if (this.e != aVar.e) {
            return false;
        }
        if (this.f != aVar.f) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (this.c ? 1 : 0) + (this.b * 31);
    }
}
