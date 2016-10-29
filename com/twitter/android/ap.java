package com.twitter.android;

import com.twitter.model.av.n;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class ap {
    private final n a;
    private final boolean b;

    public ap(n nVar, boolean z) {
        this.a = nVar;
        this.b = z;
    }

    public n a() {
        return this.a;
    }

    public boolean b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ap apVar = (ap) obj;
        if (ObjectUtils.a(this.a, apVar.a) && this.b == apVar.b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.b(this.a) + (Boolean.valueOf(this.b).hashCode() * 31);
    }
}
