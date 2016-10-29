package defpackage;

import android.content.res.Resources;
import android.support.annotation.VisibleForTesting;
import bym;
import ceq;
import com.twitter.library.util.ak;
import com.twitter.model.core.Tweet;
import com.twitter.ui.view.s;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: cej */
public class cej {
    private String a;
    private int b;
    private String c;
    private int d;
    private boolean e;
    private final cek f;
    private final Resources g;
    private final cei h;

    public cej(cek cek, Resources resources) {
        this(cek, resources, new cei());
    }

    @VisibleForTesting
    cej(cek cek, Resources resources, cei cei) {
        this.f = cek;
        this.g = resources;
        this.h = cei;
    }

    public void a(Tweet tweet, s sVar, long j, boolean z) {
        this.h.a();
        boolean z2 = tweet.d;
        if (sVar.a) {
            a(41, null, 0, 0, 0, null, 0, 0);
        } else if (aj.b(this.a) && this.b != 0) {
            this.h.a(this.a).a(this.b);
        } else if (tweet.t()) {
            a(tweet, sVar, j);
        } else if (tweet.q() || tweet.s()) {
            if (tweet.f != null) {
                String str = tweet.f.f;
                if (str != null) {
                    int i = (tweet.s() || !tweet.f.d()) ? 3 : 38;
                    a(i, str, 0, 0, 0, null, 0, tweet.q);
                }
            }
        } else if (tweet.F() && !z2) {
            a(tweet, sVar, j);
        } else if (ceq.b(tweet)) {
            if (tweet.k != null) {
                a(tweet.j, tweet.k, 0, 0, 0, tweet.aa, tweet.Y, tweet.q);
            } else {
                a(29, null, 0, 0, 0, null, 0, tweet.q);
            }
        } else if (ceq.e(tweet)) {
            if (tweet.k != null) {
                a(35, tweet.k, 0, 0, 0, null, 0, tweet.q);
            } else {
                a(29, null, 0, 0, 0, null, 0, tweet.q);
            }
        } else if (ceq.f(tweet)) {
            a(tweet.j, tweet.k, 0, 0, 0, null, 0, tweet.q);
        } else if (ceq.g(tweet) && aj.b(tweet.k)) {
            a(tweet.j, tweet.k);
        } else if (tweet.L && tweet.j != 23) {
            a(22, null, 0, 0, 0, null, 0, tweet.q);
        } else if (tweet.ac) {
            a(20, null, 0, 0, 0, null, 0, tweet.q);
        } else if (!a(tweet, sVar, j)) {
            if (j == tweet.b && tweet.o() && tweet.k != null) {
                a(24, tweet.k, 0, 0, 0, null, 0, tweet.q);
            } else if (!sVar.c && tweet.o() && !ceq.h(tweet) && tweet.E != null && !z) {
                a(24, "@" + tweet.E, 0, 0, 0, null, 0, tweet.q);
            } else if (this.e && tweet.j > 0) {
                a(tweet.j, tweet.k, tweet.X, tweet.Z, 0, tweet.aa, tweet.Y, tweet.q);
            } else if (tweet.z() && bym.a() && aj.b(this.c)) {
                a(43, this.c, 0, 0, 0, null, 0, tweet.q);
                this.h.b(this.g.getColor(bcu.twitter_blue));
            }
        }
        this.f.setSocialProofData(this.h);
    }

    private boolean a(Tweet tweet, s sVar, long j) {
        if (tweet.c && j != tweet.b) {
            a(13, tweet.e(), 0, 0, 0, null, 0, tweet.q);
            return true;
        } else if (!tweet.d || ceq.h(tweet)) {
            return false;
        } else {
            boolean z = sVar.h;
            if (!z) {
                return z;
            }
            a(44, null, 0, 0, 0, null, 0, tweet.q);
            return z;
        }
    }

    private void a(int i, String str) {
        this.h.a(str).b(str).a(ak.a(i));
    }

    private void a(int i, String str, int i2, int i3, long j, String str2, int i4, long j2) {
        Resources resources = this.g;
        String a = ak.a(resources, i, str, str2, i2, i3, j, i4, j2);
        String b = ak.b(resources, i, str, str2, i2, i3, j, i4, j2);
        this.h.a(a).b(b).a(ak.a(i));
    }

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public int b() {
        return this.b;
    }

    public void a(int i) {
        this.b = i;
    }

    public String c() {
        return this.c;
    }

    public void b(String str) {
        this.c = str;
    }

    public int d() {
        return this.d;
    }

    public void b(int i) {
        this.d = i;
    }

    public void a(boolean z) {
        this.e = z;
    }
}
