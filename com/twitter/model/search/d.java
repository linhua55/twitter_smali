package com.twitter.model.search;

import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class d {
    public static final n<d> a;
    public final boolean b;
    public final boolean c;

    static {
        a = new f();
    }

    public d(boolean z, boolean z2) {
        this.b = z;
        this.c = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.b == dVar.b && this.c == dVar.c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int i2 = 1;
        if (this.b) {
            i = 1;
        } else {
            i = 0;
        }
        i *= 31;
        if (!this.c) {
            i2 = 0;
        }
        return i + i2;
    }
}
