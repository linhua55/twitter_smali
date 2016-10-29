package com.facebook.imagepipeline.memory;

import bx;
import java.util.LinkedList;
import java.util.Queue;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
/* compiled from: Twttr */
class e<V> {
    public final int a;
    public final int b;
    final Queue c;
    private int d;

    public e(int i, int i2, int i3) {
        boolean z;
        boolean z2 = true;
        bx.b(i > 0);
        if (i2 >= 0) {
            z = true;
        } else {
            z = false;
        }
        bx.b(z);
        if (i3 < 0) {
            z2 = false;
        }
        bx.b(z2);
        this.a = i;
        this.b = i2;
        this.c = new LinkedList();
        this.d = i3;
    }

    public boolean a() {
        return this.d + b() > this.b;
    }

    int b() {
        return this.c.size();
    }

    @Nullable
    public V c() {
        V d = d();
        if (d != null) {
            this.d++;
        }
        return d;
    }

    @Nullable
    public V d() {
        return this.c.poll();
    }

    public void e() {
        this.d++;
    }

    public void a(V v) {
        bx.a(v);
        bx.b(this.d > 0);
        this.d--;
        b(v);
    }

    void b(V v) {
        this.c.add(v);
    }

    public void f() {
        bx.b(this.d > 0);
        this.d--;
    }

    public int g() {
        return this.d;
    }
}
