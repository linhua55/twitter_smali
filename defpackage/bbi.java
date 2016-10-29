package defpackage;

import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: bbi */
public abstract class bbi implements bbj {
    private static bbi a;

    public static bbi q() {
        return (bbi) e.a(a);
    }

    public static void a(bbi bbi) {
        a = bbi;
    }

    public static boolean r() {
        return a != null;
    }
}
