package com.twitter.library.commerce.model;

import bdc;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class af {
    public static final n<af> a;
    private String b;
    private String c;
    private boolean d;
    private boolean e;

    static {
        a = new ah(null);
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
        List arrayList = new ArrayList();
        if (aj.a(this.c)) {
            arrayList.add(Integer.valueOf(bdc.commerce_error_empty_phone));
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
        af afVar = (af) obj;
        if (this.d == afVar.d && this.e == afVar.e && ObjectUtils.a(this.b, afVar.b)) {
            return ObjectUtils.a(this.c, afVar.c);
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
