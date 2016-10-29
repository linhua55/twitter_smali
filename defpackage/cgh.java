package defpackage;

import cgj;
import cgk;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
/* renamed from: cgh */
public class cgh {
    public static final n<cgh> a;
    public static final n<Object> b;
    public Object c;
    public String d;

    static {
        a = new cgj(null);
        b = new cgk(null);
    }

    public static Object a(cgh cgh) {
        return cgh != null ? cgh.c : null;
    }

    public cgh(Object obj, String str) {
        this.c = obj;
        this.d = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cgh)) {
            return false;
        }
        cgh cgh = (cgh) obj;
        if (ObjectUtils.a(this.d, cgh.d) && ObjectUtils.a(this.c, cgh.c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (ObjectUtils.b(this.c) * 31) + ObjectUtils.b(this.d);
    }
}
