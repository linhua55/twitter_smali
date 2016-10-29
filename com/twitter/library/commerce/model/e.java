package com.twitter.library.commerce.model;

import java.util.ArrayList;

/* compiled from: Twttr */
public class e {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private final ArrayList<String> i;
    private ProductVariant j;

    public e() {
        this.i = new ArrayList();
    }

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public void b(String str) {
        this.b = str;
    }

    public String b() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    public void d(String str) {
        this.d = str;
    }

    public void e(String str) {
        this.e = str;
    }

    public String c() {
        return this.f;
    }

    public void f(String str) {
        this.f = str;
    }

    public void g(String str) {
        this.g = str;
    }

    public String d() {
        return this.h;
    }

    public void h(String str) {
        this.h = str;
    }

    public void a(int i, String str) {
        if (i >= this.i.size()) {
            d.a(this.i, i + 1);
        }
        this.i.set(i, str);
    }

    public ProductVariant e() {
        return this.j;
    }

    public void a(ProductVariant productVariant) {
        this.j = productVariant;
    }

    public final ArrayList<String> f() {
        return this.i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e) || !super.equals(obj)) {
            return false;
        }
        e eVar = (e) obj;
        if (this.i.equals(eVar.i) && this.c.equals(eVar.c) && this.a.equals(eVar.a) && this.h.equals(eVar.h) && this.d.equals(eVar.d) && this.e.equals(eVar.e) && this.f.equals(eVar.f) && this.g.equals(eVar.g) && this.b.equals(eVar.b)) {
            return this.j.equals(eVar.j);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + this.e.hashCode()) * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31) + this.h.hashCode()) * 31) + this.i.hashCode()) * 31) + this.j.hashCode();
    }
}
