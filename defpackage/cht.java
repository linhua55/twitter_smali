package defpackage;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;

/* compiled from: Twttr */
/* renamed from: cht */
public class cht {
    public static final d<cht, chv> a;
    public final String b;
    public final boolean c;

    static {
        a = new chw();
    }

    public cht(chv chv) {
        this.b = chv.a;
        this.c = chv.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        cht cht = (cht) obj;
        if (this.c == cht.c && ObjectUtils.a(this.b, cht.b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        if (this.b != null) {
            hashCode = this.b.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode *= 31;
        if (this.c) {
            i = 1;
        }
        return hashCode + i;
    }
}
