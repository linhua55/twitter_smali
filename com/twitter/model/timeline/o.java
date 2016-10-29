package com.twitter.model.timeline;

import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class o {
    public final String a;
    public final String b;
    public final boolean c;

    public o(String str, String str2, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = z;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof o) && a((o) obj));
    }

    public boolean a(o oVar) {
        return this == oVar || (oVar != null && ObjectUtils.a(this.a, oVar.a) && ObjectUtils.a(this.b, oVar.b) && this.c == oVar.c);
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{this.a, this.b, Boolean.valueOf(this.c)});
    }
}
