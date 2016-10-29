package com.caverock.androidsvg;

/* compiled from: Twttr */
public class k implements Cloneable {
    public float a;
    public float b;
    public float c;
    public float d;

    public k(float f, float f2, float f3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
    }

    public static k a(float f, float f2, float f3, float f4) {
        return new k(f, f2, f3 - f, f4 - f2);
    }

    public float a() {
        return this.a + this.c;
    }

    public float b() {
        return this.b + this.d;
    }

    public void a(k kVar) {
        if (kVar.a < this.a) {
            this.a = kVar.a;
        }
        if (kVar.b < this.b) {
            this.b = kVar.b;
        }
        if (kVar.a() > a()) {
            this.c = kVar.a() - this.a;
        }
        if (kVar.b() > b()) {
            this.d = kVar.b() - this.b;
        }
    }

    public String toString() {
        return "[" + this.a + " " + this.b + " " + this.c + " " + this.d + "]";
    }
}
