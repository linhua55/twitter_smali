package com.facebook.drawee.components;

/* compiled from: Twttr */
public class d {
    private boolean a;
    private int b;
    private int c;

    public d() {
        a();
    }

    public void a() {
        this.a = false;
        this.b = 4;
        b();
    }

    public void b() {
        this.c = 0;
    }

    public void a(boolean z) {
        this.a = z;
    }

    public boolean c() {
        return this.a && this.c < this.b;
    }

    public void d() {
        this.c++;
    }
}
