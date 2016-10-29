package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import blw;
import blx;
import cjl;
import com.twitter.library.client.Session;
import com.twitter.library.service.x;
import com.twitter.model.core.TwitterUser;
import rx.o;
import rx.r;
import rx.subjects.e;
import rx.t;

/* compiled from: Twttr */
/* renamed from: abi */
public class abi {
    private final Context a;
    private final Session b;
    private final abh c;
    private final String d;
    private final TwitterUser e;
    private final e<cjl> f;
    private final t g;
    private final dbg h;
    private final cyw<blw, cjl> i;
    private final cys<? super cjl> j;
    private final r<cjl> k;
    private final cyw<? super cjl, Boolean> l;

    public abi(Context context, Session session, String str, abh abh) {
        this(context, session, str, abh, dbd.d());
    }

    @VisibleForTesting
    abi(Context context, Session session, String str, abh abh, t tVar) {
        this.f = e.q();
        this.h = new dbg();
        this.i = new abj(this);
        this.j = new abk(this);
        this.k = new abl(this);
        this.l = new abm(this);
        this.a = context;
        this.b = session;
        this.d = str;
        this.c = abh;
        this.e = (TwitterUser) com.twitter.util.object.e.a(session.f());
        this.g = tVar;
    }

    public o<cjl> a() {
        return this.f;
    }

    public void b() {
        this.f.bs_();
        this.h.K_();
    }

    public x a(amg amg) {
        blx blx = (blx) new blx(this.a, this.b, this.e, this.d, amg.m).a(amg.p).a(amg.g).c(amg.c);
        a(blx.s());
        return blx;
    }

    public void c() {
        this.h.a(this.c.a(this.d).d(this.l).b(this.g).a(this.k));
    }

    void a(o<blw> oVar) {
        o a = this.c.a(this.d);
        this.h.a(o.a(oVar.g(this.i).d(this.l).a(this.j).f(a), a).h().a(this.k));
    }
}
