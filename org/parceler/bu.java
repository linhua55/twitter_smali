package org.parceler;

import android.os.Parcelable;

/* compiled from: Twttr */
public final class bu {
    private static final bv a;

    static {
        a = new bv();
        a.a(NonParcelRepository.a());
    }

    public static <T> Parcelable a(T t) {
        if (t == null) {
            return null;
        }
        return a(t.getClass(), t);
    }

    public static <T> Parcelable a(Class<? extends T> cls, T t) {
        if (t == null) {
            return null;
        }
        return a.a((Class) cls).a(t);
    }

    public static <T> T a(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        return ((bt) parcelable).getParcel();
    }
}
