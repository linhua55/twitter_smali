package defpackage;

import cmw;
import cmx;
import com.twitter.util.aj;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
/* renamed from: cmu */
public class cmu {
    public static final n<cmu> a;
    public final long b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final boolean h;
    public final boolean i;

    static {
        a = new cmx(null);
    }

    private cmu(cmw cmw) {
        String str = null;
        this.b = cmw.a(cmw);
        this.c = cmw.b(cmw);
        this.d = cmw.c(cmw);
        this.e = cmw.d(cmw);
        this.f = aj.a(cmw.e(cmw)) ? null : cmw.e(cmw);
        if (!aj.a(cmw.f(cmw))) {
            str = cmw.f(cmw);
        }
        this.g = str;
        this.h = cmw.g(cmw);
        this.i = cmw.h(cmw);
    }
}
