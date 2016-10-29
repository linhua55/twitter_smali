package dagger.internal;

import cxj;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public final class e<T> implements c<Set<T>> {
    private static final c<Set<Object>> a;
    private final List<cxj<T>> b;
    private final List<cxj<Collection<T>>> c;

    public /* synthetic */ Object b() {
        return c();
    }

    static {
        a = new f();
    }

    public static <T> c<Set<T>> a() {
        return a;
    }

    public static <T> g<T> a(int i, int i2) {
        return new g(i2, null);
    }

    private e(List<cxj<T>> list, List<cxj<Collection<T>>> list2) {
        this.b = list;
        this.c = list2;
    }

    public Set<T> c() {
        int i;
        int i2 = 0;
        int size = this.b.size();
        List arrayList = new ArrayList(this.c.size());
        int size2 = this.c.size();
        int i3 = size;
        for (i = 0; i < size2; i++) {
            Collection collection = (Collection) ((cxj) this.c.get(i)).b();
            i3 += collection.size();
            arrayList.add(collection);
        }
        Set b = a.b(i3);
        size2 = this.b.size();
        for (i = 0; i < size2; i++) {
            b.add(d.a(((cxj) this.b.get(i)).b()));
        }
        i = arrayList.size();
        while (i2 < i) {
            for (Object a : (Collection) arrayList.get(i2)) {
                b.add(d.a(a));
            }
            i2++;
        }
        return Collections.unmodifiableSet(b);
    }
}
