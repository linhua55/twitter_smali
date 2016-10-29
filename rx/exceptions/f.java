package rx.exceptions;

import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
final class f {
    static final Set<Class<?>> a;

    static {
        a = a();
    }

    private static Set<Class<?>> a() {
        Set<Class<?>> hashSet = new HashSet();
        hashSet.add(Boolean.class);
        hashSet.add(Character.class);
        hashSet.add(Byte.class);
        hashSet.add(Short.class);
        hashSet.add(Integer.class);
        hashSet.add(Long.class);
        hashSet.add(Float.class);
        hashSet.add(Double.class);
        return hashSet;
    }
}
