package defpackage;

import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cll */
public class cll {
    public static final n<cll> a;
    public final String b;
    public final long c;
    public final List<clp> d;
    public final List<String> e;
    public final String f;

    static {
        a = new clo();
    }

    cll(cln cln) {
        this.b = cln.a;
        this.c = cln.b;
        this.d = com.twitter.util.collection.n.a(cln.c);
        this.e = com.twitter.util.collection.n.a(cln.d);
        this.f = cln.e;
    }
}
