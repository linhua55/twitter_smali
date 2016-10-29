package defpackage;

import com.android.internal.util.Predicate;
import com.facebook.common.references.a;
import javax.annotation.Nullable;

/* compiled from: Twttr */
/* renamed from: ew */
public interface ew<K, V> {
    int a(Predicate<K> predicate);

    @Nullable
    a<V> a(K k);

    @Nullable
    a<V> a(K k, a<V> aVar);
}
