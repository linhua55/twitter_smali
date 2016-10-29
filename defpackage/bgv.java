package defpackage;

import bgx;
import bhh;
import bhk;
import bho;
import bhr;
import bhv;
import bhy;
import bii;
import bil;
import bis;
import bjh;
import bjk;
import bjq;
import bjr;
import bju;
import bjv;
import bjx;
import bkc;
import bkf;
import bkg;
import bkj;
import com.twitter.model.dms.a;
import com.twitter.util.serialization.l;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;

/* compiled from: Twttr */
/* renamed from: bgv */
public abstract class bgv<T> extends a {
    public static final n<bgv> a;
    public final boolean b;
    public final boolean c;
    private final long d;
    private final T e;

    public abstract n<T> a();

    static {
        a = s.a(l.a(bhv.class, new bhy()), l.a(bje.class, new bjh()), l.a(bjv.class, new bjx()), l.a(bkc.class, new bkf()), l.a(bkg.class, new bkj()), l.a(bip.class, new bis()), l.a(bii.class, new bil()), l.a(bjk.class, new bjq()), l.a(bjr.class, new bju()), l.a(bho.class, new bhr()), l.a(bhh.class, new bhk()));
    }

    bgv(bgx<?, ?, T> bgx_____T) {
        super(bgx_____T);
        this.b = bgx_____T.a;
        this.c = bgx_____T.b;
        this.d = bgx.a(bgx_____T);
        this.e = bgx_____T.c;
    }

    public boolean a(long j) {
        return true;
    }

    public final byte[] b() {
        return m.a(c(), a());
    }

    public T c() {
        return this.e;
    }

    public long d() {
        return this.d;
    }

    public boolean e() {
        return chr.b.contains(Integer.valueOf(g()));
    }

    public boolean f() {
        return chr.a.contains(Integer.valueOf(g()));
    }
}
