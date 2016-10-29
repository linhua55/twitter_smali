package defpackage;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cqf */
public abstract class cqf {
    private static final Set<Class> a;

    static {
        a = Collections.synchronizedSet(new HashSet());
    }

    public static void a(Class cls) {
        if (cwj.b() && !a.contains(cls)) {
            String str = cls.getName() + " is locked: Did you forget to add a test rule?";
            if (cwj.d()) {
                System.out.println(str);
                return;
            }
            throw new IllegalStateException(str);
        }
    }
}
