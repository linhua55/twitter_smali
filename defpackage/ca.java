package defpackage;

import javax.annotation.Nullable;

/* compiled from: Twttr */
/* renamed from: ca */
public final class ca {
    public static <X extends Throwable> void a(@Nullable Throwable th, Class<X> cls) throws Throwable {
        if (th != null && cls.isInstance(th)) {
            throw ((Throwable) cls.cast(th));
        }
    }

    public static void a(@Nullable Throwable th) {
        ca.a(th, Error.class);
        ca.a(th, RuntimeException.class);
    }

    public static RuntimeException b(Throwable th) {
        ca.a((Throwable) bx.a((Object) th));
        throw new RuntimeException(th);
    }
}
