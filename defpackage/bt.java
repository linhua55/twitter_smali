package defpackage;

import bv;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* compiled from: Twttr */
/* renamed from: bt */
public final class bt {
    @CheckReturnValue
    public static boolean a(@Nullable Object obj, @Nullable Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static bv a(Object obj) {
        return new bv(bt.a(obj.getClass()), null);
    }

    private static String a(Class<?> cls) {
        String replaceAll = cls.getName().replaceAll("\\$[0-9]+", "\\$");
        int lastIndexOf = replaceAll.lastIndexOf(36);
        if (lastIndexOf == -1) {
            lastIndexOf = replaceAll.lastIndexOf(46);
        }
        return replaceAll.substring(lastIndexOf + 1);
    }
}
