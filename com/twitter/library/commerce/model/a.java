package com.twitter.library.commerce.model;

import android.support.v7.recyclerview.BuildConfig;
import bdc;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class a {
    public static final n<a> a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private boolean k;
    private boolean l;

    static {
        a = new c(null);
    }

    public List<Integer> a() {
        List arrayList = new ArrayList();
        if (aj.a(this.c)) {
            arrayList.add(Integer.valueOf(bdc.commerce_error_invalid_address_name));
        }
        if (aj.a(this.e)) {
            arrayList.add(Integer.valueOf(bdc.commerce_error_invalid_address_address));
        }
        if (this.g == null) {
            arrayList.add(Integer.valueOf(bdc.commerce_error_invalid_address_country));
        }
        if (aj.a(this.h)) {
            arrayList.add(Integer.valueOf(bdc.commerce_error_invalid_address_city));
        }
        if (this.g != null && this.g.equals("US")) {
            if (aj.a(this.i)) {
                arrayList.add(Integer.valueOf(bdc.commerce_error_invalid_address_state));
            }
            if (aj.a(this.j)) {
                arrayList.add(Integer.valueOf(bdc.commerce_error_invalid_address_zip));
            }
        }
        return arrayList;
    }

    public String b() {
        return this.e;
    }

    public void a(String str) {
        this.e = str;
    }

    public String c() {
        return this.f;
    }

    public void b(String str) {
        this.f = str;
    }

    public String d() {
        return this.g;
    }

    public void c(String str) {
        this.g = str;
    }

    public String e() {
        return this.h;
    }

    public void d(String str) {
        this.h = str;
    }

    public String f() {
        return this.i;
    }

    public void e(String str) {
        this.i = str;
    }

    public String g() {
        return this.j;
    }

    public void f(String str) {
        this.j = str;
    }

    public void a(boolean z) {
        this.l = z;
    }

    public String h() {
        return this.b;
    }

    public void g(String str) {
        this.b = str;
    }

    public String i() {
        return this.d;
    }

    public void h(String str) {
        this.d = str;
    }

    public boolean j() {
        return this.k;
    }

    public void b(boolean z) {
        this.k = z;
    }

    public String k() {
        return this.c;
    }

    public void i(String str) {
        this.c = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.k == aVar.k && ObjectUtils.a(this.d, aVar.d) && ObjectUtils.a(this.e, aVar.e) && ObjectUtils.a(this.f, aVar.f) && ObjectUtils.a(this.h, aVar.h) && ObjectUtils.a(this.g, aVar.g) && ObjectUtils.a(this.b, aVar.b) && ObjectUtils.a(this.c, aVar.c) && ObjectUtils.a(this.i, aVar.i)) {
            return ObjectUtils.a(this.j, aVar.j);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.b(this.d)) * 31) + ObjectUtils.b(this.e)) * 31) + ObjectUtils.b(this.f)) * 31) + ObjectUtils.b(this.g)) * 31) + ObjectUtils.b(this.h)) * 31) + ObjectUtils.b(this.i)) * 31) + ObjectUtils.b(this.j)) * 31) + ObjectUtils.a(this.k);
    }

    public String toString() {
        String format = String.format("%n", new Object[0]);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(a(k(), format));
        stringBuilder.append(a(b(), " "));
        stringBuilder.append(j(c()));
        stringBuilder.append(format);
        stringBuilder.append(a(e(), ", "));
        stringBuilder.append(a(f(), " "));
        stringBuilder.append(j(g()));
        stringBuilder.append(format);
        stringBuilder.append(j(d()));
        return stringBuilder.toString();
    }

    private static String a(String str, String str2) {
        if (aj.a((CharSequence) str)) {
            return BuildConfig.VERSION_NAME;
        }
        return str + str2;
    }

    private static String j(String str) {
        return a(str, " ");
    }
}
