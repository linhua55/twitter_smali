package com.twitter.model.topic;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class a {
    public static final n<a> a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public long h;

    static {
        a = new c();
    }

    public a(String str, String str2, String str3, String str4, String str5, String str6, long j) {
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = str6;
        this.h = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (ObjectUtils.a(Long.valueOf(this.h), Long.valueOf(aVar.h)) && ObjectUtils.a(this.b, aVar.b) && ObjectUtils.a(this.c, aVar.c) && ObjectUtils.a(this.d, aVar.d) && ObjectUtils.a(this.e, aVar.e) && ObjectUtils.a(this.f, aVar.f)) {
            return ObjectUtils.a(this.g, aVar.g);
        }
        return false;
    }

    public int hashCode() {
        return (ObjectUtils.a(new Object[]{this.b, this.c, this.d, this.e, this.f, this.g}) * 31) + ObjectUtils.a(this.h);
    }
}
