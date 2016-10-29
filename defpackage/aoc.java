package defpackage;

import com.twitter.util.p;

/* compiled from: Twttr */
/* renamed from: aoc */
public class aoc {
    public static Class<?> a(Class<?> cls) throws ClassNotFoundException {
        return Class.forName("com.twitter.database.generated." + p.a(cls));
    }
}
