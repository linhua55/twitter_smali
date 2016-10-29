package rx.internal.util;

import java.security.PrivilegedAction;

/* compiled from: Twttr */
final class q implements PrivilegedAction<ClassLoader> {
    q() {
    }

    public /* synthetic */ Object run() {
        return a();
    }

    public ClassLoader a() {
        return ClassLoader.getSystemClassLoader();
    }
}
