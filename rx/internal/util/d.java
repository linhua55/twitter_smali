package rx.internal.util;

import cyw;

/* compiled from: Twttr */
final class d implements cyw<Object, Boolean> {
    final Class<?> a;

    public /* synthetic */ Object a(Object obj) {
        return b(obj);
    }

    public d(Class<?> cls) {
        this.a = cls;
    }

    public Boolean b(Object obj) {
        return Boolean.valueOf(this.a.isInstance(obj));
    }
}
