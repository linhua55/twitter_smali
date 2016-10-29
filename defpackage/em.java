package defpackage;

import bx;
import com.facebook.common.references.a;

/* compiled from: Twttr */
/* renamed from: em */
class em<K, V> {
    public final K a;
    public final a<V> b;
    public int c;
    public boolean d;

    private em(K k, a<V> aVar) {
        this.a = bx.a(k);
        this.b = (a) bx.a(a.b(aVar));
        this.c = 0;
        this.d = false;
    }

    static <K, V> em<K, V> a(K k, a<V> aVar) {
        return new em(k, aVar);
    }
}
