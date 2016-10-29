package com.twitter.model.core;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class ad {
    public static final n<ad> a;
    public final boolean b;

    static {
        a = new af();
    }

    public ad(boolean z) {
        this.b = z;
    }

    public int hashCode() {
        return ObjectUtils.a(this.b);
    }

    public boolean equals(Object obj) {
        return (obj instanceof ad) && ((ad) obj).b == this.b;
    }
}
