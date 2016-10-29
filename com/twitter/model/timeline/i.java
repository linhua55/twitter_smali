package com.twitter.model.timeline;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class i {
    public static final n<i> a;
    public final String b;
    public final String c;
    public final String d;

    static {
        a = new k();
    }

    private i(String str, String str2, String str3) {
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof i) && a((i) obj));
    }

    public boolean a(i iVar) {
        return this == iVar || (iVar != null && ObjectUtils.a(this.b, iVar.b) && ObjectUtils.a(this.c, iVar.c) && ObjectUtils.a(this.d, iVar.d));
    }

    public int hashCode() {
        return (((ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.b(this.d);
    }

    public static i a(String str, String str2, String str3) {
        return new i(str, str2, str3);
    }
}
