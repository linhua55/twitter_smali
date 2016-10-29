package dagger.internal;

import defpackage.cwk;

/* compiled from: Twttr */
public final class MembersInjectors {

    /* compiled from: Twttr */
    enum NoOpMembersInjector implements cwk<Object> {
        INSTANCE;

        public void a(Object obj) {
            d.a(obj);
        }
    }

    public static <T> T a(cwk<T> cwk_T, T t) {
        cwk_T.a(t);
        return t;
    }

    public static <T> cwk<T> a() {
        return NoOpMembersInjector.INSTANCE;
    }
}
