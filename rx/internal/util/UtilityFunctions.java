package rx.internal.util;

import cyw;

/* compiled from: Twttr */
public final class UtilityFunctions {
    private static final an a;

    /* compiled from: Twttr */
    enum AlwaysTrue implements cyw<Object, Boolean> {
        INSTANCE;

        public Boolean b(Object obj) {
            return Boolean.valueOf(true);
        }
    }

    public static <T> cyw<? super T, Boolean> a() {
        return AlwaysTrue.INSTANCE;
    }

    public static <T> cyw<T, T> b() {
        return new am();
    }

    static {
        a = new an();
    }
}
