package com.twitter.model.businessprofiles;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class al {
    public static final n<al> a;
    public final String b;
    public final String c;

    static {
        a = new am();
    }

    public al(String str, String str2) {
        this.b = str;
        this.c = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        al alVar = (al) obj;
        if (ObjectUtils.a(this.b, alVar.b) && ObjectUtils.a(this.c, alVar.c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c);
    }
}
