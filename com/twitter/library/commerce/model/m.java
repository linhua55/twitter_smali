package com.twitter.library.commerce.model;

import bdc;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import defpackage.cew;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class m {
    public static final n<m> a;
    private String b;
    private String c;
    private boolean d;
    private boolean e;

    static {
        a = new o(null);
    }

    public String a() {
        return this.c;
    }

    public void a(String str) {
        this.c = str;
    }

    public String b() {
        return this.b;
    }

    public void b(String str) {
        this.b = str;
    }

    public boolean c() {
        return this.d;
    }

    public void a(boolean z) {
        this.d = z;
    }

    public boolean d() {
        return this.e;
    }

    public void b(boolean z) {
        this.e = z;
    }

    public List<Integer> e() {
        Object arrayList = new ArrayList();
        if (aj.a(this.c)) {
            arrayList.add(Integer.valueOf(bdc.commerce_error_empty_email));
        } else if (!cew.c.matcher(this.c).matches()) {
            arrayList.add(Integer.valueOf(bdc.commerce_error_invalid_email));
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        if (this.d == mVar.d && this.e == mVar.e && ObjectUtils.a(this.b, mVar.b)) {
            return ObjectUtils.a(this.c, mVar.c);
        }
        return false;
    }

    public int hashCode() {
        return (((((ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.a(this.d)) * 31) + ObjectUtils.a(this.e);
    }

    public String toString() {
        return this.c;
    }
}
