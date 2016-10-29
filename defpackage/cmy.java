package defpackage;

import cmj;
import cna;
import cnb;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cmy */
public class cmy {
    public static final n<cmy> a;
    public final cmu b;
    public final cmu c;
    public final cmu d;
    public final List<cmj> e;

    static {
        a = new cnb(null);
    }

    private cmy(cna cna) {
        this.b = cna.a(cna);
        this.c = cna.b(cna);
        this.d = cna.c(cna) == null ? cna.b(cna) : cna.c(cna);
        this.e = cna.d(cna);
    }

    public String a() {
        return this.d != null ? this.d.f : null;
    }
}
