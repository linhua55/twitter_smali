package defpackage;

import bx;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: gb */
public class gb implements fz {
    private final ge a;

    public gb() {
        this(new gd());
    }

    public gb(ge geVar) {
        this.a = (ge) bx.a(geVar);
    }

    public int a(int i) {
        List a = this.a.a();
        if (a == null || a.isEmpty()) {
            return i + 1;
        }
        for (int i2 = 0; i2 < a.size(); i2++) {
            if (((Integer) a.get(i2)).intValue() > i) {
                return ((Integer) a.get(i2)).intValue();
            }
        }
        return Integer.MAX_VALUE;
    }

    public gm b(int i) {
        return gl.a(i, i >= this.a.b(), false);
    }
}
