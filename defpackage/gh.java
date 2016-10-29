package defpackage;

import cb;
import java.io.Closeable;

/* compiled from: Twttr */
/* renamed from: gh */
public abstract class gh implements gk, Closeable {
    public abstract boolean c();

    public abstract void close();

    public abstract int d();

    public gm g() {
        return gl.a;
    }

    public boolean e() {
        return false;
    }

    protected void finalize() throws Throwable {
        if (!c()) {
            cb.b("CloseableImage", "finalize: %s %x still open.", new Object[]{getClass().getSimpleName(), Integer.valueOf(System.identityHashCode(this))});
            try {
                close();
            } finally {
                super.finalize();
            }
        }
    }
}
