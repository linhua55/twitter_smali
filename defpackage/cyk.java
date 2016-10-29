package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* compiled from: Twttr */
/* renamed from: cyk */
public final class cyk {
    private static final cyk a;
    private final AtomicReference<cyl> b;

    static {
        a = new cyk();
    }

    public static cyk a() {
        return a;
    }

    cyk() {
        this.b = new AtomicReference();
    }

    public cyl b() {
        if (this.b.get() == null) {
            this.b.compareAndSet(null, cyl.a());
        }
        return (cyl) this.b.get();
    }
}
