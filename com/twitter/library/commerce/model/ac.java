package com.twitter.library.commerce.model;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class ac extends f {
    public static final n<ac> c;
    private String e;
    private Type f;

    static {
        c = new ae(null);
    }

    public void a(Type type, String str) {
        a(type);
        this.e = str;
    }

    public String b() {
        return this.e;
    }

    protected boolean e() {
        return b().length() == b;
    }

    public Type a() {
        if (this.f != null) {
            return this.f;
        }
        return Type.INVALID;
    }

    public void a(Type type) {
        this.f = type;
    }

    protected boolean d() {
        return this.f != null && g().length() == this.f.c();
    }

    public String h() {
        return BuildConfig.VERSION_NAME;
    }

    public void c(String str) {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        if (!super.equals(obj)) {
            return false;
        }
        ac acVar = (ac) obj;
        if (ObjectUtils.a(this.e, acVar.e) && this.f == acVar.f) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((super.hashCode() * 31) + ObjectUtils.b(this.e)) * 31) + ObjectUtils.b(this.f);
    }
}
