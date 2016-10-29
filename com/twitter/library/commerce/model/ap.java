package com.twitter.library.commerce.model;

import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import defpackage.bdc;
import java.util.List;

/* compiled from: Twttr */
public class ap extends CreditCard {
    public static final n<ap> a;
    private String b;
    private Type c;

    static {
        a = aq.a;
    }

    public List<Integer> c() {
        List<Integer> c = super.c();
        if (aj.a(b())) {
            c.add(Integer.valueOf(bdc.commerce_error_invalid_card_last_four_digits));
        }
        return c;
    }

    public void a(Type type, String str) {
        a(type);
        this.b = str;
    }

    public String b() {
        return this.b;
    }

    public Type a() {
        if (this.c != null) {
            return this.c;
        }
        return Type.a;
    }

    public void a(Type type) {
        this.c = type;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ap)) {
            return false;
        }
        if (!super.equals(obj)) {
            return false;
        }
        ap apVar = (ap) obj;
        if (ObjectUtils.a(this.b, apVar.b) && this.c == apVar.c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((super.hashCode() * 31) + ObjectUtils.b(this.b)) * 31) + ObjectUtils.b(this.c);
    }
}
