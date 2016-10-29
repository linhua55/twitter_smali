package defpackage;

import com.google.gson.n;
import com.google.gson.s;
import com.google.gson.u;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.util.BitSet;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.UUID;

/* compiled from: Twttr */
/* renamed from: pr */
public final class pr {
    public static final s<StringBuffer> A;
    public static final u B;
    public static final s<URL> C;
    public static final u D;
    public static final s<URI> E;
    public static final u F;
    public static final s<InetAddress> G;
    public static final u H;
    public static final s<UUID> I;
    public static final u J;
    public static final u K;
    public static final s<Calendar> L;
    public static final u M;
    public static final s<Locale> N;
    public static final u O;
    public static final s<n> P;
    public static final u Q;
    public static final u R;
    public static final s<Class> a;
    public static final u b;
    public static final s<BitSet> c;
    public static final u d;
    public static final s<Boolean> e;
    public static final s<Boolean> f;
    public static final u g;
    public static final s<Number> h;
    public static final u i;
    public static final s<Number> j;
    public static final u k;
    public static final s<Number> l;
    public static final u m;
    public static final s<Number> n;
    public static final s<Number> o;
    public static final s<Number> p;
    public static final s<Number> q;
    public static final u r;
    public static final s<Character> s;
    public static final u t;
    public static final s<String> u;
    public static final s<BigDecimal> v;
    public static final s<BigInteger> w;
    public static final u x;
    public static final s<StringBuilder> y;
    public static final u z;

    static {
        a = new ps();
        b = pr.a(Class.class, a);
        c = new qd();
        d = pr.a(BitSet.class, c);
        e = new qo();
        f = new qs();
        g = pr.a(Boolean.TYPE, Boolean.class, e);
        h = new qt();
        i = pr.a(Byte.TYPE, Byte.class, h);
        j = new qu();
        k = pr.a(Short.TYPE, Short.class, j);
        l = new qv();
        m = pr.a(Integer.TYPE, Integer.class, l);
        n = new qw();
        o = new qx();
        p = new pt();
        q = new pu();
        r = pr.a(Number.class, q);
        s = new pv();
        t = pr.a(Character.TYPE, Character.class, s);
        u = new pw();
        v = new px();
        w = new py();
        x = pr.a(String.class, u);
        y = new pz();
        z = pr.a(StringBuilder.class, y);
        A = new qa();
        B = pr.a(StringBuffer.class, A);
        C = new qb();
        D = pr.a(URL.class, C);
        E = new qc();
        F = pr.a(URI.class, E);
        G = new qe();
        H = pr.b(InetAddress.class, G);
        I = new qf();
        J = pr.a(UUID.class, I);
        K = new qg();
        L = new qi();
        M = pr.b(Calendar.class, GregorianCalendar.class, L);
        N = new qj();
        O = pr.a(Locale.class, N);
        P = new qk();
        Q = pr.b(n.class, P);
        R = new ql();
    }

    public static <TT> u a(Class<TT> cls, s<TT> sVar) {
        return new qm(cls, sVar);
    }

    public static <TT> u a(Class<TT> cls, Class<TT> cls2, s<? super TT> sVar) {
        return new qn(cls, cls2, sVar);
    }

    public static <TT> u b(Class<TT> cls, Class<? extends TT> cls2, s<? super TT> sVar) {
        return new qp(cls, cls2, sVar);
    }

    public static <TT> u b(Class<TT> cls, s<TT> sVar) {
        return new qq(cls, sVar);
    }
}
