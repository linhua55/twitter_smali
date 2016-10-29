package com.twitter.model.timeline;

import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class a {
    public final String a;
    public final String b;

    public a(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof a) && a((a) obj));
    }

    public boolean a(a aVar) {
        return this == aVar || (aVar != null && ObjectUtils.a(this.a, aVar.a) && ObjectUtils.a(this.b, aVar.b));
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{this.a, this.b});
    }
}
