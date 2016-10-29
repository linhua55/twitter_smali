package defpackage;

import com.twitter.database.model.j;
import com.twitter.database.model.k;
import com.twitter.database.model.q;
import com.twitter.database.model.r;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.n;
import cym;
import dbd;
import rx.t;

/* compiled from: Twttr */
/* renamed from: bye */
public class bye<T, G extends axr, S extends axp<S>> extends byf<String, T> {
    protected final q<G> a;
    protected final r<S> b;
    private final n<T> e;

    public /* synthetic */ void a(Object obj, Object obj2) {
        b((String) obj, obj2);
    }

    public bye(n<T> nVar, q<G> qVar, r<S> rVar) {
        this(dbd.d(), cym.a(), nVar, qVar, rVar);
    }

    public bye(t tVar, t tVar2, n<T> nVar, q<G> qVar, r<S> rVar) {
        super(tVar, tVar2);
        this.a = qVar;
        this.b = rVar;
        this.e = nVar;
    }

    public T a(String str) {
        j a = this.a.a("key=?", new String[]{str});
        try {
            if (a.b()) {
                T a2 = a(a);
                return a2;
            }
            a.close();
            return null;
        } finally {
            a.close();
        }
    }

    protected T a(j<G> jVar) {
        return m.a(((axr) jVar.a).b(), this.e);
    }

    protected k<S> a(String str, T t) {
        k<S> b = this.b.b();
        ((axp) b.d).b(str).b(m.a(t, this.e));
        return b;
    }

    public void b(String str, T t) {
        a(str, (Object) t).b();
    }
}
