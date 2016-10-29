package defpackage;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: Twttr */
/* renamed from: by */
public final class by {
    public static <E> Set<E> a() {
        return by.a(new IdentityHashMap());
    }

    public static <E> Set<E> a(Map<E, Boolean> map) {
        return Collections.newSetFromMap(map);
    }

    public static <E> CopyOnWriteArraySet<E> b() {
        return new CopyOnWriteArraySet();
    }
}
