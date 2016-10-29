package com.twitter.model.moments;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class o {
    public static final n<o> a;
    public final String b;
    public final String c;

    static {
        a = new r();
    }

    public o(String str, String str2) {
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
        o oVar = (o) obj;
        if (ObjectUtils.a(this.b, oVar.b) && ObjectUtils.a(this.c, oVar.c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{this.b, this.c});
    }
}
