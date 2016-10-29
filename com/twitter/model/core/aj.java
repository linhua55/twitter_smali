package com.twitter.model.core;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class aj {
    public static final n<aj> a;
    public final float b;
    public final float c;
    public final List<am> d;

    static {
        a = new al();
    }

    public aj(float f, float f2, List<am> list) {
        this.b = f;
        this.c = f2;
        this.d = com.twitter.util.collection.n.a(list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        aj ajVar = (aj) obj;
        if (Float.compare(this.b, ajVar.b) == 0 && Float.compare(this.c, ajVar.c) == 0 && this.d.equals(ajVar.d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((ObjectUtils.a(this.b) * 31) + ObjectUtils.a(this.c)) * 31) + ObjectUtils.a(this.d);
    }
}
