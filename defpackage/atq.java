package defpackage;

import cgu;
import chl;
import com.twitter.database.model.c;
import com.twitter.database.model.g;
import com.twitter.database.model.q;
import java.io.Closeable;

/* compiled from: Twttr */
/* renamed from: atq */
public class atq<P, D> extends asu<g, cgu<D>, c> {
    final q<P> a;
    private final chl<P, D> b;

    protected /* synthetic */ Closeable b(Object obj) {
        return a((g) obj);
    }

    public atq(q<P> qVar, chl<P, D> chl_P__D) {
        super(qVar.d());
        this.a = qVar;
        this.b = chl_P__D;
    }

    protected cgu<D> a(g gVar) {
        return new chf(new aud(this.a.a(gVar)), this.b);
    }
}
