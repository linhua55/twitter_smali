package com.facebook.imagepipeline.memory;

import com.facebook.common.memory.b;
import com.facebook.common.memory.c;
import javax.annotation.concurrent.Immutable;

@Immutable
/* compiled from: Twttr */
public class u {
    private final y a;
    private final z b;
    private final y c;
    private final b d;
    private final y e;
    private final z f;
    private final y g;
    private final z h;

    private u(w wVar) {
        this.a = wVar.a == null ? g.a() : wVar.a;
        this.b = wVar.b == null ? r.a() : wVar.b;
        this.c = wVar.c == null ? i.a() : wVar.c;
        this.d = wVar.d == null ? c.a() : wVar.d;
        this.e = wVar.e == null ? j.a() : wVar.e;
        this.f = wVar.f == null ? r.a() : wVar.f;
        this.g = wVar.g == null ? h.a() : wVar.g;
        this.h = wVar.h == null ? r.a() : wVar.h;
    }

    public y a() {
        return this.a;
    }

    public z b() {
        return this.b;
    }

    public b c() {
        return this.d;
    }

    public y d() {
        return this.e;
    }

    public z e() {
        return this.f;
    }

    public y f() {
        return this.c;
    }

    public y g() {
        return this.g;
    }

    public z h() {
        return this.h;
    }

    public static w i() {
        return new w();
    }
}
