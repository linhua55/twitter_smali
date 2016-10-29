package rx.internal.util;

import defpackage.cyx;

/* compiled from: Twttr */
final class f implements cyx<Object, Object, Boolean> {
    f() {
    }

    public /* synthetic */ Object a(Object obj, Object obj2) {
        return b(obj, obj2);
    }

    public Boolean b(Object obj, Object obj2) {
        boolean z = obj == obj2 || (obj != null && obj.equals(obj2));
        return Boolean.valueOf(z);
    }
}
