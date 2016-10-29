package com.twitter.library.commerce.model;

import com.twitter.model.card.property.ImageSpec;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.math.BigDecimal;
import java.util.List;

/* compiled from: Twttr */
public class ai {
    public static final n<ai> a;
    private String b;
    private List<ImageSpec> c;
    private String d;
    private String e;
    private BigDecimal f;
    private String g;
    private String h;
    private String i;
    private List<Long> j;
    private String k;
    private String l;
    private List<ai> m;

    static {
        a = new ak();
    }

    public void a(String str) {
        this.b = str;
    }

    public List<ImageSpec> a() {
        return this.c;
    }

    public void a(List<ImageSpec> list) {
        this.c = list;
    }

    public String b() {
        return this.d;
    }

    public void b(String str) {
        this.d = str;
    }

    public String c() {
        return this.e;
    }

    public void c(String str) {
        this.e = str;
    }

    public BigDecimal d() {
        return this.f;
    }

    public void a(BigDecimal bigDecimal) {
        this.f = bigDecimal;
    }

    public String e() {
        return this.g;
    }

    public void d(String str) {
        this.g = str;
    }

    public String f() {
        return this.h;
    }

    public void e(String str) {
        this.h = str;
    }

    public String g() {
        return this.i;
    }

    public void f(String str) {
        this.i = str;
    }

    public List<Long> h() {
        return this.j;
    }

    public List<ai> i() {
        return this.m;
    }

    public void b(List<Long> list) {
        this.j = list;
    }

    public void c(List<ai> list) {
        this.m = list;
    }

    public String j() {
        return this.k;
    }

    public void g(String str) {
        this.k = str;
    }

    public String k() {
        return this.l;
    }

    public void h(String str) {
        this.l = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ai aiVar = (ai) obj;
        if (ObjectUtils.a(this.l, aiVar.l) && ObjectUtils.a(this.e, aiVar.e) && ObjectUtils.a(this.k, aiVar.k) && ObjectUtils.a(this.b, aiVar.b) && ObjectUtils.a(this.c, aiVar.c) && ObjectUtils.a(this.i, aiVar.i) && ObjectUtils.a(this.d, aiVar.d) && ObjectUtils.a(this.f, aiVar.f) && ObjectUtils.a(this.j, aiVar.j) && ObjectUtils.a(this.g, aiVar.g) && ObjectUtils.a(this.h, aiVar.h)) {
            return ObjectUtils.a(this.m, aiVar.m);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((((((ObjectUtils.b(this.b) * 31) + ObjectUtils.a(this.c)) * 31) + ObjectUtils.b(this.d)) * 31) + ObjectUtils.b(this.e)) * 31) + ObjectUtils.b(this.f)) * 31) + ObjectUtils.b(this.g)) * 31) + ObjectUtils.b(this.h)) * 31) + ObjectUtils.b(this.i)) * 31) + ObjectUtils.a(this.j)) * 31) + ObjectUtils.a(this.m)) * 31) + ObjectUtils.b(this.k)) * 31) + ObjectUtils.b(this.l);
    }
}
