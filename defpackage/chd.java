package defpackage;

import cgu;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: chd */
public class chd<T> extends cgu<T> {
    private final List<T> a;

    public chd(Iterable<T> iterable) {
        this.a = n.a(iterable);
    }

    public int aU_() {
        return this.a.size();
    }

    public T a(int i) {
        if (i >= aU_()) {
            return null;
        }
        return this.a.get(i);
    }

    public void close() {
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof chd) && ObjectUtils.a(((chd) obj).a, this.a));
    }
}
