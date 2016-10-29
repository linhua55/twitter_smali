package defpackage;

import android.content.Context;
import bfd;
import bff;
import bfh;
import cgd;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.service.x;
import rx.o;
import sf;
import sg;
import sh;
import si;

/* compiled from: Twttr */
/* renamed from: se */
public class se implements sj {
    private final sj a;
    private final Context b;
    private final Session c;
    private final az d;

    public se(Context context, Session session, az azVar, sj sjVar) {
        this.b = context;
        this.c = session;
        this.d = azVar;
        this.a = sjVar;
    }

    public o<cgd> a(cgd cgd) {
        x bfd = new bfd(this.b, this.c, cgd.a, cgd.f);
        this.d.a(bfd, null);
        return a(bfd.b(), cgd);
    }

    public o<cgd> a(long j) {
        x bfh = new bfh(this.b, this.c, j);
        this.d.a(bfh, null);
        return a(bfh.b());
    }

    o<cgd> a(o<cgd> oVar, cgd cgd) {
        return oVar.g(new sg(this, cgd)).a(new sf(this, cgd));
    }

    o<cgd> a(o<bff> oVar) {
        return oVar.g(new si(this)).a(new sh(this));
    }
}
