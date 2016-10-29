package defpackage;

import com.twitter.database.lru.ac;
import com.twitter.database.lru.k;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.a;
import com.twitter.util.object.b;

/* compiled from: Twttr */
/* renamed from: auk */
public class auk {
    private final a<k, ac<?, ?>> a;

    public auk(b<k, ac<?, ?>> bVar) {
        this.a = new a(bVar);
    }

    public <K, V> ac<K, V> a(k<K, V> kVar) {
        return (ac) ObjectUtils.a(this.a.a(kVar));
    }
}
