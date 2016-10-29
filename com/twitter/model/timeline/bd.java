package com.twitter.model.timeline;

import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class bd {
    public final boolean a;
    public final String b;
    public final String c;
    public final o d;
    public final o e;

    public bd(String str, String str2, o oVar, o oVar2, boolean z) {
        this.b = str;
        this.c = str2;
        this.d = oVar;
        this.e = oVar2;
        this.a = z;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof bd) && a((bd) obj));
    }

    public boolean a(bd bdVar) {
        return this == bdVar || (bdVar != null && this.a == bdVar.a && ObjectUtils.a(this.b, bdVar.b) && ObjectUtils.a(this.c, bdVar.c) && ObjectUtils.a(this.d, bdVar.d) && ObjectUtils.a(this.e, bdVar.e));
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{Boolean.valueOf(this.a), this.b, this.c, this.d, this.e});
    }
}
