package com.twitter.android;

import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
class oq {
    public final String a;
    public final String b;
    public final or c;
    public final boolean d;
    public final boolean e;
    public final boolean f;

    oq(String str, String str2, or orVar, boolean z, boolean z2, boolean z3) {
        this.a = str;
        this.b = str2;
        this.c = orVar;
        this.d = z;
        this.e = z2;
        this.f = z3;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof oq) && a((oq) obj));
    }

    public boolean a(oq oqVar) {
        return this == oqVar || (oqVar != null && ObjectUtils.a(this.a, oqVar.a) && ObjectUtils.a(this.b, oqVar.b) && ObjectUtils.a(this.c, oqVar.c) && this.d == oqVar.d && this.e == oqVar.e && this.f == oqVar.f);
    }

    public int hashCode() {
        return ObjectUtils.a(this.a, this.b, this.c, Boolean.valueOf(this.d), Boolean.valueOf(this.e), Boolean.valueOf(this.f));
    }
}
