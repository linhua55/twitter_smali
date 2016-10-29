package rx.internal.util;

import java.security.AccessController;

/* compiled from: Twttr */
public final class p {
    private static final int a;
    private static final boolean b;

    static {
        a = d();
        b = a != 0;
    }

    public static boolean a() {
        return b;
    }

    public static int b() {
        return a;
    }

    private static int d() {
        try {
            return ((Integer) Class.forName("android.os.Build$VERSION", true, c()).getField("SDK_INT").get(null)).intValue();
        } catch (Exception e) {
            return 0;
        }
    }

    static ClassLoader c() {
        if (System.getSecurityManager() == null) {
            return ClassLoader.getSystemClassLoader();
        }
        return (ClassLoader) AccessController.doPrivileged(new q());
    }
}
