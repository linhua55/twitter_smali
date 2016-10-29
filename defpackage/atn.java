package defpackage;

import ato;
import atp;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.internal.android.service.p;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import rx.o;
import rx.t;

/* compiled from: Twttr */
/* renamed from: atn */
public abstract class atn<A, T, R extends x> implements atf<A, T> {
    protected abstract R a(A a);

    protected abstract T a(R r);

    protected boolean a() {
        return false;
    }

    protected t c() {
        return dbd.a(p.a().a(ExecutionClass.NETWORK_NORMAL));
    }

    protected t b() {
        return cym.a();
    }

    protected t d() {
        return cym.a();
    }

    public o<T> a_(A a) {
        return o.a(new atp(this, a)).b(c()).a(d()).g(new ato(this)).a(b());
    }

    protected aa b(R r) {
        return r.P();
    }

    public void close() {
    }
}
