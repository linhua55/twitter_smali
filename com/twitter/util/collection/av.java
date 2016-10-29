package com.twitter.util.collection;

import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class av<T1, T2, T3> {
    public final T1 a;
    public final T2 b;
    public final T3 c;

    public av(T1 t1, T2 t2, T3 t3) {
        this.a = t1;
        this.b = t2;
        this.c = t3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        av avVar = (av) obj;
        if (ObjectUtils.a(this.a, avVar.a) && ObjectUtils.a(this.b, avVar.b) && ObjectUtils.a(this.c, avVar.c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((ObjectUtils.b(this.a) * 31) + ObjectUtils.b(this.b)) * 31) + ObjectUtils.b(this.c);
    }
}
