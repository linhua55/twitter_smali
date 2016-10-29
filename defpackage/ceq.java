package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.model.core.ap;
import com.twitter.model.core.as;
import com.twitter.model.core.az;
import com.twitter.util.collection.ar;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: ceq */
public class ceq {
    public static boolean a(Tweet tweet) {
        return tweet != null && tweet.am();
    }

    public static boolean b(Tweet tweet) {
        return tweet != null && tweet.A();
    }

    public static boolean c(Tweet tweet) {
        return ceq.a(tweet) || ceq.b(tweet);
    }

    public static boolean d(Tweet tweet) {
        return tweet != null && tweet.an();
    }

    public static boolean e(Tweet tweet) {
        return tweet != null && tweet.I();
    }

    public static boolean f(Tweet tweet) {
        return tweet != null && tweet.w() && (22 == tweet.j || 35 == tweet.j || 36 == tweet.j || 37 == tweet.j || 28 == tweet.j);
    }

    public static boolean g(Tweet tweet) {
        return tweet != null && tweet.x();
    }

    public static boolean a(Tweet tweet, Tweet tweet2) {
        if (!ceq.c(tweet, tweet2) || tweet.j() || tweet2.j()) {
            return false;
        }
        Iterable iterable = tweet.w.d;
        Iterable iterable2 = tweet2.w.d;
        int b = iterable.b();
        boolean z = b == iterable2.b() && (b == 0 || ((Set) ar.d().b(iterable).q()).equals(ar.d().b(iterable2).q()));
        return z;
    }

    public static boolean b(Tweet tweet, Tweet tweet2) {
        if (!ceq.c(tweet, tweet2)) {
            return false;
        }
        cgl aa = tweet.aa();
        cgl aa2 = tweet2.aa();
        if (aa == null && aa2 == null) {
            return true;
        }
        if (aa == null || aa2 == null) {
            return false;
        }
        return true;
    }

    public static boolean c(Tweet tweet, Tweet tweet2) {
        return (tweet == null || tweet2 == null || tweet.u != tweet2.u) ? false : true;
    }

    public static boolean h(Tweet tweet) {
        return tweet != null && (tweet.H() || tweet.G());
    }

    public static boolean a(Tweet tweet, long j) {
        return tweet != null && tweet.b == j && (!tweet.c || tweet.s == j);
    }

    public static boolean b(Tweet tweet, long j) {
        return tweet.u > 0 && (tweet.b == j || !tweet.G);
    }

    public static boolean a(as asVar, long j) {
        return asVar.e > 0 && (asVar.b == j || asVar.n);
    }

    public static boolean i(Tweet tweet) {
        return tweet.C() && !tweet.u();
    }

    public static boolean j(Tweet tweet) {
        return tweet.o() && tweet.s == tweet.F;
    }

    public static boolean a(as asVar) {
        return asVar.q > 0 && asVar.b == asVar.r;
    }

    public static boolean k(Tweet tweet) {
        if (!ceq.j(tweet)) {
            return false;
        }
        boolean z;
        ap apVar = tweet.w.e.b() > 0 ? (ap) tweet.w.e.a(0) : null;
        if (apVar == null || apVar.c != tweet.s) {
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public static boolean b(as asVar) {
        if (!ceq.a(asVar)) {
            return false;
        }
        boolean z;
        ap apVar = asVar.h.e.b() > 0 ? (ap) asVar.h.e.a(0) : null;
        if (apVar == null || apVar.c != asVar.b) {
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public static String a(List<az> list) {
        StringBuilder stringBuilder = new StringBuilder();
        for (az azVar : list) {
            stringBuilder.append('@').append(azVar.b).append(' ');
        }
        return stringBuilder.toString();
    }
}
