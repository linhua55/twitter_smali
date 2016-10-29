package defpackage;

import acc;
import rx.an;
import rx.o;
import rx.t;

/* compiled from: Twttr */
/* renamed from: byf */
public abstract class byf<K, V> {
    public final t c;
    public final t d;

    public abstract V a(K k);

    public abstract void a(K k, V v);

    public byf(t tVar, t tVar2) {
        this.c = tVar;
        this.d = tVar2;
    }

    public o<V> b(K k) {
        return o.b(k).b(this.c).g(new byg(this)).a(this.d);
    }

    public an b(K k, V v) {
        return o.b(k).b(this.c).g(new byh(this, v)).a(this.d).b(new acc());
    }
}
