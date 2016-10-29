package defpackage;

import com.android.internal.util.Predicate;
import com.facebook.common.references.a;
import ew;

/* compiled from: Twttr */
/* renamed from: ev */
public class ev<K, V> implements ew<K, V> {
    private final ew<K, V> a;
    private final ey b;

    public ev(ew<K, V> ewVar, ey eyVar) {
        this.a = ewVar;
        this.b = eyVar;
    }

    public a<V> a(K k) {
        a<V> a = this.a.a(k);
        if (a == null) {
            this.b.b();
        } else {
            this.b.a();
        }
        return a;
    }

    public a<V> a(K k, a<V> aVar) {
        this.b.c();
        return this.a.a(k, aVar);
    }

    public int a(Predicate<K> predicate) {
        return this.a.a(predicate);
    }
}
