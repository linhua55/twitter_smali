package com.twitter.library.client;

/* compiled from: Twttr */
public class d {
    boolean g;
    int h;
    boolean i;
    int j;
    boolean k;

    public d() {
        this.i = true;
        this.j = 14;
    }

    protected d(d dVar) {
        this.i = true;
        this.j = 14;
        this.g = dVar.g;
        this.h = dVar.h;
        this.i = dVar.i;
        this.j = dVar.j;
        this.k = dVar.k;
    }

    public final boolean a() {
        return this.i;
    }

    public final void c(boolean z) {
        c();
        this.i = z;
    }

    public final int b() {
        return this.j;
    }

    public final void b(int i) {
        c();
        this.j = i;
    }

    public final void c(int i) {
        b(b() | i);
    }

    public final void d(int i) {
        c();
        this.h = i;
    }

    public final void d(boolean z) {
        c();
        this.k = z;
    }

    protected final void c() {
        if (this.g) {
            throw new IllegalStateException("Options are already configured!");
        }
    }
}
