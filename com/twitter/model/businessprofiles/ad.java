package com.twitter.model.businessprofiles;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class ad {
    public static final n<ad> a;
    public final ab b;
    public final ab c;

    static {
        a = new af();
    }

    public ad(ab abVar, ab abVar2) {
        this.b = abVar;
        this.c = abVar2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ad adVar = (ad) obj;
        if (ObjectUtils.a(this.b, adVar.b) && ObjectUtils.a(this.c, adVar.c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c);
    }

    public String toString() {
        return this.b + " - " + this.c;
    }
}
