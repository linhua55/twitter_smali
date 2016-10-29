package defpackage;

import axl;
import axm;
import axn;
import axo;
import cjl;
import cjm;
import com.twitter.database.model.j;
import com.twitter.database.model.k;
import com.twitter.database.model.l;
import com.twitter.library.provider.di;
import com.twitter.platform.t;
import rx.o;

/* compiled from: Twttr */
/* renamed from: abd */
public class abd implements abh {
    private final l a;
    private final t b;

    public abd(di diVar, t tVar) {
        this.a = diVar.b();
        this.b = tVar;
    }

    public o<cjl> a(cjl cjl) {
        return o.a(new abe(this, cjl));
    }

    public o<cjl> a(String str) {
        return o.a(new abf(this, str));
    }

    private cjl b(String str) {
        String str2 = "event_id=?";
        j a = ((axl) this.a.a(axl.class)).f().a("event_id=?", str);
        try {
            if (a.b()) {
                cjl a2 = a((axm) a.a);
                return a2;
            }
            a.close();
            return null;
        } finally {
            a.close();
        }
    }

    private long b(cjl cjl) {
        if (cjl.e == null || cjl.f == null || cjl.g == null) {
            return -1;
        }
        k b = this.a.c(axn.class).b();
        ((axo) b.d).a(cjl.b).a(cjl.c).b(cjl.d).b(cjl.e).c(cjl.f).a(cjl.g).c(this.b.a());
        return b.b();
    }

    private cjl a(axm axm) {
        return (cjl) new cjm().a(axm.b()).a(axm.c()).b(axm.d()).c(axm.e()).b(axm.f()).a(axm.g()).q();
    }
}
