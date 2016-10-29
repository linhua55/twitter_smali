package com.twitter.library.commerce.model;

import bdc;
import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class f extends CreditCard {
    public static final n<f> a;
    protected static int b;
    private String c;
    private String e;
    private String f;

    static {
        a = h.a;
        b = 4;
    }

    public List<Integer> c() {
        List<Integer> c = super.c();
        if (!e()) {
            c.add(Integer.valueOf(bdc.commerce_error_invalid_card_number_invalid));
        }
        if (g() == null) {
            c.add(Integer.valueOf(bdc.commerce_error_invalid_card_ccv_number_empty));
        } else if (!d()) {
            c.add(Integer.valueOf(bdc.commerce_error_invalid_card_ccv_number));
        }
        return c;
    }

    protected boolean d() {
        return g().length() == Type.c(h());
    }

    protected boolean e() {
        return Type.e(h()).d(h());
    }

    public String f() {
        return this.e;
    }

    public void a(String str) {
        this.e = str;
    }

    public String g() {
        return this.c;
    }

    public void b(String str) {
        this.c = str;
    }

    public Type a() {
        if (h() != null) {
            return Type.e(h());
        }
        return Type.INVALID;
    }

    public String h() {
        return this.f;
    }

    public void c(String str) {
        this.f = str;
    }

    public String b() {
        if (!aj.b(h()) || h().length() < b) {
            return null;
        }
        return h().substring(h().length() - b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        if (!super.equals(obj)) {
            return false;
        }
        f fVar = (f) obj;
        if (ObjectUtils.a(this.c, fVar.c) && ObjectUtils.a(this.f, fVar.f) && ObjectUtils.a(this.e, fVar.e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((super.hashCode() * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.b(this.e)) * 31) + ObjectUtils.b(this.f);
    }
}
