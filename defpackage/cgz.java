package defpackage;

import cgu;
import com.twitter.util.collection.n;
import cyx;

/* compiled from: Twttr */
/* renamed from: cgz */
public final class cgz {
    public static boolean a(cgu cgu) {
        return cgu == null || cgu.aU_() == 0;
    }

    public static <T> cgu<T> a(cgu<? extends T> cgu__extends_T, cgu<? extends T> cgu__extends_T2) {
        return new cha(cgu__extends_T, cgu__extends_T2);
    }

    public static <T> cyx<cgu<T>, cgu<T>, cgu<T>> a() {
        return new chb();
    }

    public static <T> cgu<T> a(T t, cgu<? extends T> cgu__extends_T) {
        return new chd((Iterable) n.a(cgu__extends_T.aU_() + 1).c(t).c(cgu__extends_T).q());
    }

    public static <T> cyx<cgu<T>, T, cgu<T>> b() {
        return new chc();
    }
}
