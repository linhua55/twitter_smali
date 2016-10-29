package com.twitter.model.topic;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class g extends d {
    public static final n<g> b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public List<a> h;
    public List<a> i;
    public String j;

    static {
        b = new h();
    }

    public g(String str, String str2, String str3, String str4, String str5, List<a> list, List<a> list2, String str6) {
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = str5;
        this.h = list;
        this.i = list2;
        if (str6 == null) {
            this.j = "";
        } else {
            this.j = str6;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (ObjectUtils.a(this.c, gVar.c) && ObjectUtils.a(this.d, gVar.d) && ObjectUtils.a(this.e, gVar.e) && ObjectUtils.a(this.f, gVar.f) && ObjectUtils.a(this.g, gVar.g) && ObjectUtils.a(this.h, gVar.h) && ObjectUtils.a(this.i, gVar.i)) {
            return ObjectUtils.a(this.j, gVar.j);
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j});
    }
}
