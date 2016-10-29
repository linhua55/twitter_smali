package defpackage;

import aux;
import auy;
import auz;
import ava;
import cgd;
import cge;
import com.twitter.database.model.j;
import com.twitter.database.model.k;
import com.twitter.database.model.l;
import com.twitter.library.provider.di;
import com.twitter.model.core.TwitterUser;
import com.twitter.platform.t;
import com.twitter.util.collection.n;
import java.util.List;
import rx.o;
import sc;
import sd;

/* compiled from: Twttr */
/* renamed from: sb */
public class sb implements sj {
    private final l a;
    private final t b;
    private final di c;

    public sb(di diVar, t tVar) {
        this.a = diVar.b();
        this.c = diVar;
        this.b = tVar;
    }

    public o<cgd> a(cgd cgd) {
        return o.a(new sc(this, cgd));
    }

    public o<cgd> a(long j) {
        return o.a(new sd(this, j));
    }

    private cgd b(long j) {
        String str = "alert_id=?";
        j a = ((aux) this.a.a(aux.class)).f().a("alert_id=?", String.valueOf(j));
        try {
            if (a.b()) {
                cgd a2 = a((auy) a.a);
                return a2;
            }
            a.close();
            return null;
        } finally {
            a.close();
        }
    }

    private long b(cgd cgd) {
        k b = this.a.c(auz.class).b();
        ((ava) b.d).a(cgd.a).a(cgd.b).a(cgd.c).b(cgd.e).a(cgd.a()).a(cgd.f).b(this.b.a());
        return b.b();
    }

    private void c(cgd cgd) {
        this.c.a(cgd.d, -1, -1, -1, null, null, true, null);
    }

    private cgd a(auy auy) {
        return (cgd) new cge().a(auy.b()).a(auy.c()).a(auy.d()).b(auy.e()).b(a(auy.f())).a(auy.g()).q();
    }

    private List<TwitterUser> a(List<Long> list) {
        return n.a(this.c.a((List) list).values());
    }
}
