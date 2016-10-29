package com.twitter.android;

import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
class or {
    public final int a;
    public final boolean b;

    or(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof or) && a((or) obj));
    }

    public boolean a(or orVar) {
        return this == orVar || (orVar != null && this.a == orVar.a && this.b == orVar.b);
    }

    public int hashCode() {
        return ObjectUtils.a(Integer.valueOf(this.a), Boolean.valueOf(this.b));
    }
}
